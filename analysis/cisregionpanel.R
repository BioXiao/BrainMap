#cis region panel
library(cummeRbund)
library(BSgenome.Mmusculus.UCSC.mm10)
library(seqbias)
library(stringr)
library(plyr)
library(ggplot2)
nIter<-1000
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

#start at 6 
#1:dim(dat)[1]
for (i in 1:25){
  
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
  sigGenesRegion<-fullTable[which(fullTable[,40]==chromosome & fullTable[,39]=="yes" & fullTable[,9]>=start & fullTable[,10]<=end),]
  nSig<-nrow(ddply(sigGenesRegion,.(gene_name),head,n=1))
  
  score<-0
  signeighbors<-data.frame(rep(NULL,nIter))
  
  for (i in 1:nIter){
    write(i,stderr())
    sigGenesRegion<-fullTable[which(fullTable[,40]==seqnames(myRandom[i])@values & fullTable[,39]=="yes" & fullTable[,9]>=start(myRandom[i])-(windowSize/2) & fullTable[,10]<=end(myRandom[i])+(windowSize/2)),]
    nSigIter<-nrow(ddply(sigGenesRegion,.(gene_name),head,n=1))
    write(nSigIter,stderr())
    if(nSigIter >= nSig-1) {score<-score+1}
    signeighbors[1,i]<-nSigIter
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
  
  currplot<-ggplot(data,aes(start,test_stat,color=sig, label=gene_name,shape=was_na))+geom_point(size=3)+scale_color_manual(values=c("black", "red"))+coord_cartesian(xlim=c(-windowSize/2, windowSize/2),ylim=c(-max(abs(data$test_stat),na.rm=TRUE)-1,max(abs(data$test_stat),na.rm=TRUE)+1))+labs(title=paste(strain,timepoint,sep=" "))+geom_text(data=subset(data, sig=='yes'))+theme_bw()+geom_vline(xintercept=0, color="blue")+geom_hline(yintercept=0,color="blue")+annotate("text",x=0,y=max(abs(data$test_stat),na.rm=TRUE)+.5,label=paste("pvalue for ",nSig," genes in a region this size is: ",pval_for_region,sep=""))
  #add pvalue to this plot! s
  
  #ggplot(data,aes(start,test_stat,color=sig, label=gene_name,shape=was_na))+geom_point(size=3)+scale_color_manual(values=c("black", "red"))+coord_cartesian(xlim=c(-windowSize/2, windowSize/2),ylim=c(-max(abs(data$test_stat),na.rm=TRUE)-1,max(abs(data$test_stat),na.rm=TRUE)+1))+labs(title=paste(strain,timepoint,sep=" "))+geom_text(data=subset(data, sig=='yes'))+theme_bw()+geom_vline(xintercept=0, color="blue")+geom_hline(yintercept=0,color="blue")
  
  cisplots[[i]]<-currplot
  regions[[i]]<-genesInRegion
  nameofplot<-paste(strain,timepoint,sep="_")
  ggsave(paste(nameofplot,".pdf",sep=""),plot=currplot)
  #pdf(paste(nameofplot,".pdf",sep=""))
  #currplot
  #dev.off()
}

#save(file="cisregionplotlist.Rdata",cisplots)
#save(file="cisregion_geneRegionslist.Rdata",regions)

library(gridExtra)
#load("cisregionplotlist.Rdata")
plotnames<-paste("cisplots[[",1:25,"]]",sep="")
names(cisplots)<-plotnames
listnames<-c(cisplots,list(nrow=5,ncol=5))

pdf("cis_plots_panel.pdf", height=28,width=25)
do.call(grid.arrange,listnames)  
#grid.arrange(cisplots,ncol=5)
dev.off()


