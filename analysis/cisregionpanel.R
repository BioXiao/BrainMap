#cis region panel
library(cummeRbund)
library(BSgenome.Mmusculus.UCSC.mm10)
library(seqbias)
library(stringr)
library(plyr)
library(ggplot2)
nIter<-10000
windowSize<-4000000

getTable<-function(object){
  fullTable<-diffTable(genes(object))
  write("First Split",stderr())
  firstSplit<-str_split_fixed(fullTable$locus,":",2)
  write("Second Split",stderr())
  secondSplit<-str_split_fixed(firstSplit[,2],"-",2)
  fullTable$chromosome<-firstSplit[,1]
  fullTable$start<-as.numeric(secondSplit[,1])
  fullTable$end<-as.numeric(secondSplit[,2])
  fullTable<-fullTable[fullTable$chromosome %in% names(seqlengths(mm10.granges)),]
  fullTable$chromosome<-factor(fullTable$chromosome, levels=names(seqlengths(mm10.granges)))
  fullTable
}

dat<-read.csv("autoanalysisInfo.csv",header=TRUE,stringsAsFactors=FALSE)
cisplots<-list()
regions<-list()

#load("cisregionplotlist.Rdata")
#load("cisregion_geneRegionslist.Rdata")
#start at 6 
#1:dim(dat)[1]
for (i in 1:26){
  #if(i %in% c(1,2,7,13,14,16,19,20,24)){next} #indecies of ones with 0 DE genes in region (dont need to be redone)
  strain<-dat$strain[i]
  dir<-dat$dir[i]
  timepoint<-dat$timepoint[i]
  cuff<-readCufflinks(dir=dir,GTF="/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/annotation/mm10_gencode_vM2_with_lncRNAs_and_LacZ.gtf",genome="mm10")
  
  myLengths<-seqlengths(Mmusculus)[!grepl("_random",names(seqlengths(Mmusculus)))]
  mm10.granges<-GRanges(seqnames = names(myLengths), ranges = IRanges(start = 1, end = myLengths),seqlengths=myLengths)
  myRandom<-random.intervals(mm10.granges,n=nIter,ms=windowSize)
  print(i)
  print(strain)
  fullTable<-getTable(cuff)
  
  myGene<-fullTable[which(fullTable$gene_short_name==strain),][1,] #any problems w this?
  chromosome<-myGene$chromosome
  start<-myGene$start-(windowSize/2)
  end<-myGene$end+(windowSize/2)
  
  #exclude lincRNA in significance calc...
  if(strain=="linc-Enc1"){strain<-"Gm2373"}
  sigGenesRegion<-fullTable[which(fullTable[,40]==chromosome & fullTable[,39]=="yes" & fullTable[,9]>=start & fullTable[,10]<=end & fullTable[,4]!=strain),]
  nSig<-nrow(ddply(sigGenesRegion,.(gene_name),head,n=1))
  
  score<-0
  signeighbors<-data.frame(rep(NULL,nIter))

  for (j in 1:nIter){
    write(j,stderr())
    sigGenesRegion<-fullTable[which(fullTable[,40]==seqnames(myRandom[j])@values & fullTable[,39]=="yes" & fullTable[,9]>=start(myRandom[j])-(windowSize/2) & fullTable[,10]<=end(myRandom[j])+(windowSize/2)),]
    nSigIter<-nrow(ddply(sigGenesRegion,.(gene_name),head,n=1))
    write(nSigIter,stderr())
    if(nSigIter >= nSig) {score<-score+1}
      signeighbors[1,j]<-nSigIter
  }
  
  pval_for_region<-score/nIter
  
  genesInRegion<-fullTable[which(fullTable[,40]==chromosome & fullTable[,9]>=start & fullTable[,10]<=end),]
  genesInRegion$start<-myGene$start-genesInRegion$start
  colnames(genesInRegion)[39]<-"sig"
  colnames(genesInRegion)[35]<-"log2foldchange"
  colnames(genesInRegion)[36]<-"test_stat"
  data<-ddply(genesInRegion,.(gene_id),head,n=1)
  data$test_stat<-as.numeric(data[,36])
  data$was_na<-"no"
  if(any(is.na(data$test_stat))){
     #&& data$log2foldchange[which(is.na(data$test_stat))]=="-Inf"){
    #print(data$test_stat[which(is.na(data$test_stat))])
    data$was_na[which(is.na(data$test_stat))]<-"yes"
    data$test_stat[which(is.na(data$test_stat))]<-0
  }
  data$sig<-data[,39]
  
  currplot<-ggplot(data,aes(start,test_stat,color=sig, label=gene_name,shape=was_na))+geom_point(size=3)+scale_color_manual(values=c("black", "red"))+coord_cartesian(xlim=c(-windowSize/2, windowSize/2),ylim=c(-max(abs(data$test_stat),na.rm=TRUE)-1,max(abs(data$test_stat),na.rm=TRUE)+1))+labs(title=paste(strain,timepoint,sep=" "))+geom_text(data=subset(data, sig=='yes'))+theme_bw()+geom_vline(xintercept=0, color="blue")+geom_hline(yintercept=0,color="blue")
  currplot<-currplot+annotate("text",x=0,y=max(abs(data$test_stat),na.rm=TRUE)+.5,label=paste("pvalue:",pval_for_region,sep=""))
  #add pvalue to this plot! 
  #ggplot(data,aes(start,test_stat,color=sig, label=gene_name,shape=was_na))+geom_point(size=3)+scale_color_manual(values=c("black", "red"))+coord_cartesian(xlim=c(-windowSize/2, windowSize/2),ylim=c(-max(abs(data$test_stat),na.rm=TRUE)-1,max(abs(data$test_stat),na.rm=TRUE)+1))+labs(title=paste(strain,timepoint,sep=" "))+geom_text(data=subset(data, sig=='yes'))+theme_bw()+geom_vline(xintercept=0, color="blue")+geom_hline(yintercept=0,color="blue")
  
  cisplots[[i]]<-currplot
  regions[[i]]<-genesInRegion
  nameofplot<-paste(strain,timepoint,sep="_")
  ggsave(paste(nameofplot,".pdf",sep=""),plot=currplot)

}

save(file="cisregionplotlist.Rdata",cisplots)
save(file="cisregion_geneRegionslist.Rdata",regions)

library(gridExtra)
#load("cisregionplotlist.Rdata")
plotnames<-paste("cisplots[[",1:26,"]]",sep="")
names(cisplots)<-plotnames
listnames<-c(cisplots,list(nrow=5,ncol=6))

pdf("cis_plots_panel.pdf", height=30,width=30)
do.call(grid.arrange,listnames)  
#grid.arrange(cisplots,ncol=5)
dev.off()

`####### UPON RELOAD ###########
library(plyr)
library(ggplot2)

windowSize<-4000000
#load("cisregion_geneRegionslist.Rdata")
#dat<-read.csv("autoanalysisInfo.csv",header=TRUE,stringsAsFactors=FALSE)

#regionData<-data.frame(regions)
regionNames<-list()
for (i in 1:26){
  strain<-dat$strain[i]
  timepoint<-dat$timepoint[i]
  regionNames<-c(regionNames,paste(strain,timepoint,sep="_"))
}
regionNames<-unlist(regionNames)
names(regions)<-regionNames
names(regions)

dfcolnames<-colnames(regions[[1]])
dfcolnames[32]<-"status"
dfcolnames[33]<-"value1WT"
dfcolnames[34]<-"value2KO"
dfcolnames[37]<-"pvalue"
dfcolnames[38]<-"qvalue"
dat<-data.frame()
for(i in 1:26){
  df<-data.frame(regions[[i]])
  colnames(df)<-dfcolnames
  dat<-rbind(dat,df)
}
data<-ddply(dat,.(gene_id),head,n=1)
data$test_stat<-as.numeric(data[,36])
data$log2foldchange<-as.numeric(data[,35])
data$was_inf<-"no"
if(any(is.infinite(data$log2foldchange))){
  data$was_inf[grep("Inf",data$log2foldchange)]<-"up"
  data$was_inf[grep("-Inf",data$log2foldchange)]<-"down"
  data$log2foldchange[is.infinite(data$log2foldchange)]<-NA
  data$log2foldchange[grep("up",data$was_inf)]<-max(data$log2foldchange,na.rm=TRUE)
  data$log2foldchange[grep("down",data$was_inf)]<-min(data$log2foldchange,na.rm=TRUE)
}

data$targets<-"no"
siggeneneighbors<-c("Ptgs2","Egfr","Enc1","Kdm5c","Cdkn1a","Morc2a")
data$targets[which(data$gene_name %in% siggeneneighbors)]<-"yes"
#check #data$gene_name[which(data$targets=="yes")]
smallsubset<-subset(data,data$targets=="yes")

#summaryplot<-ggplot(data,aes(start,log2foldchange, label=gene_name, size=value1WT,shape=strand))
#summaryplot<-summaryplot+geom_point(data=subset(data, (targets=='yes' & sig=='yes')))+scale_color_manual(values=c("black", "red"))+coord_cartesian(xlim=c(-windowSize/2, windowSize/2),ylim=c(-max(abs(data$log2foldchange),na.rm=TRUE)-1,max(abs(data$log2foldchange),na.rm=TRUE)+1))+labs(title="Cis Regulation Summary")
#summaryplot+geom_text(data=subset(data, sig=='yes'),size=5)+theme_bw()+geom_vline(xintercept=0, color="blue")+geom_hline(yintercept=0,color="blue")

#summaryplot<-ggplot(data,aes(start,log2foldchange, label=gene_name, color==sig))
#summaryplot<-summaryplot+scale_color_manual(values=c("black", "red"))+coord_cartesian(xlim=c(-windowSize/2, windowSize/2),ylim=c(-max(abs(data$log2foldchange),na.rm=TRUE)-1,max(abs(data$log2foldchange),na.rm=TRUE)+1))+labs(title="Cis Regulation Summary")

#+geom_point(data=subset(data, (targets=='yes' & sig=='yes')))
#summaryplot+geom_text(data=subset(data, sig=='yes'),size=5)+theme_bw()+geom_vline(xintercept=0, color="blue")+geom_hline(yintercept=0,color="blue")



#summaryplot<-ggplot(smallsubset,aes(start,log2foldchange, label=gene_name, size=value1WT,shape=strand))
#summaryplot<-summaryplot+geom_point()+coord_cartesian(xlim=c(-max(smallsubset$start)-2000, max(smallsubset$start)+2000),ylim=c(-max(abs(smallsubset$log2foldchange),na.rm=TRUE)-1,max(abs(smallsubset$log2foldchange),na.rm=TRUE)+1))+labs(title="Cis Regulation Summary")
#summaryplot+geom_text(data=subset(smallsubset, sig=='yes'),size=5)+theme_bw()+geom_vline(xintercept=0, color="blue")+geom_hline(yintercept=0,color="blue")

#HOW TO SHOW ORIENTATION RELATIVE TO LINC? 
# grab info on these lincs and compare strands. if same, same oritentation.
# if opp, add opp flag
#dir<-"/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/diffs/linc-Brn1a_vs_WT_Adult/"
#gtf<-"/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/annotation/mm10_gencode_vM2_with_lncRNAs_and_LacZ.gtf"
#gtf_table<-read.table("/n/rinn_data1/users/agroff/GITHUB/BrainMap/abbie_annotation/BrainmapLincRNAs.gtf",header=TRUE,stringsAsFactors=FALSE)

#info<-read.table("/n/rinn_data1/users/agroff/GITHUB/BrainMap/abbie_annotation/cis_reg_linc_strand_info.tab",stringsAsFactors=FALSE)
#info$V2<-NULL
#info$V4<-NULL
#info$V3[67:87]<-"linc-Enc1"
#linc_strand_info<-ddply(info,.(V3),head,n=1)
#linc_strand_info$closest_pc<-c("Egfr","Kdm5c","Ptgs2","Enc1","Cdkn1a","Morc2a")
#linc_strand_info$PC_strand<-smallsubset$strand[which(smallsubset$gene_short_name %in% linc_strand_info$closest_pc)]
#linc_strand_info$orientation<-apply(linc_strand_info,1,function(x){
#  val<-""
#  if(x[3]==x[5]){val<-"SAME"}
#  else{val<-"OPPOSITE"}
#  val
#})
#smallsubset$orientation<-apply(smallsubset,1,function(x){
#  linc_strand_info[which(linc_strand_info$closest_pc==x[4]),6]
#  })





# smallsubset$strand_symbol<-apply(smallsubset,1,function(x){
#   symbol<-""
#   if(x[12]=="+"){symbol<-62}
#   else{symbol<-60}
#   symbol
# })



#summaryplot<-ggplot(smallsubset,aes(start,log2foldchange, label=gene_name))

#summaryplot<-summaryplot+coord_cartesian(xlim=c(-max(smallsubset$start)-30000, max(smallsubset$start)+30000),ylim=c(-max(abs(smallsubset$log2foldchange),na.rm=TRUE)-1,max(abs(smallsubset$log2foldchange),na.rm=TRUE)+1))+labs(title="Cis Regulation Summary")

#summaryplot+geom_text(size=5)+geom_point(size=3)+theme_bw()+geom_vline(xintercept=0, color="blue")+geom_hline(yintercept=0,color="blue")

#ggsave("cis_summary_plot.pdf")




#lincsThatReg<-c("linc-Cox2","linc-Enc1","Kantr","Trp53cor1","Tug1","Eldr")
#Ptgs2, Egfr, Enc1, Kdm5c, Cdnk1a, Morc2a