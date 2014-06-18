# Cis v Trans 

# start
#source("http://bioconductor.org/biocLite.R")
#biocLite("BSgenome.Mmusculus.UCSC.mm9")
#biocLite("seqbias")
#biocLite("stringr")
#source("http://bioconductor.org/biocLite.R")
#biocLite("BSgenome.Mmusculus.UCSC.mm10")
#biocLite("ggplot2")
#biocLite("rtracklayer")
#biocLite("seqbias")
#biocLite("BiocParallel")
#biocLite("IRanges")

#setup 
library(cummeRbund)
library(BSgenome.Mmusculus.UCSC.mm10)
library(seqbias)
library(stringr)
library(plyr)

myLengths<-seqlengths(Mmusculus)[!grepl("_random",names(seqlengths(Mmusculus)))]
mm10.granges<-GRanges(seqnames = names(myLengths), ranges = IRanges(start = 1, end = myLengths),seqlengths=myLengths)

#Constants
nIter<-1000
windowSize<-2000000
set.seed()
myRandom<-random.intervals(mm10.granges,n=nIter,ms=windowSize)

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


setwd("/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/diffs/Peril_vs_WT_Embryonic/")
cuff<-readCufflinks()
strain<-"Peril"

fullTable<-getTable(cuff)

myGene<-fullTable[which(fullTable$gene_short_name==strain),][1,]
chromosome<-myGene$chromosome
start<-myGene$start-(windowSize/2)
end<-myGene$end+(windowSize/2)
strain_wt_sig<-paste(strain,"_WT_significant", sep="")
#nSig<-nrow(subset(fullTable,chromosome==chromosome & start>=start &end<=end & strain_wt_sig=="yes"))
nSig<-nrow(fullTable[which(fullTable[,40]==chromosome & fullTable[,39]=="yes" & fullTable[,9]>=start & fullTable[,10]<=end),])

score<-0
signeighbors<-data.frame(rep(NULL,nIter))

for (i in 1:nIter){
  write(i,stderr())
#  nSigIter<-nrow(subset(fullTable,chromosome==seqnames(myRandom[i])@values & start>=start(myRandom[i])-(windowSize/2) & 
# end<=end(myRandom[i])+(windowSize/2) & strain_wt_sig=="yes"))
#  nSigIter<-nrow(fullTable[which(fullTable[,40]==seqnames(myRandom[i])@values & fullTable[,39]=="yes" & fullTable[,9]>=start(myRandom[i])-(windowSize/2) & 
# fullTable[,10]<=end(myRandom[i])+(windowSize/2)),])
####NROWS IS NOT GENES, and may not even be isoforms! 
  sigGenesRegion<-fullTable[which(fullTable[,40]==seqnames(myRandom[i])@values & fullTable[,39]=="yes" & fullTable[,9]>=start(myRandom[i])-(windowSize/2) & fullTable[,10]<=end(myRandom[i])+(windowSize/2)),]
  nSigIter<-nrow(ddply(sigGenesRegion,.(gene_name),head,n=1))
  write(nSigIter,stderr())
  if(nSigIter >= nSig-1) {score<-score+1}
  signeighbors[1,i]<-nSigIter
}

score/nIter

ttest<-t.test(signneighbors,mu=nSig-1)
ttset$p.value

#first 	question, region enriched over genomic background for cis significance? (pvalue)

#second task:
#plot all genes in region according to start position in region. color code red=yes, black=no

genesInRegion<-fullTable[which(fullTable[,40]==chromosome & fullTable[,9]>=start & fullTable[,10]<=end),]
genesInRegion$start<-myGene$start-genesInRegion$start
colnames(genesInRegion)[39]<-"sig"
colnames(genesInRegion)[35]<-"log2foldchange"
colnames(genesInRegion)[36]<-"test_stat"

library(plyr)
data<-ddply(genesInRegion,.(gene_id),head,n=1)


#data<-cbind(genesInRegion$gene_id, genesInRegion$gene_name, genesInRegion$log2foldchange, genesInRegion$sig, genesInRegion$start, genesInRegion$end)
#data<-as.data.frame(data)
#colnames(data)<-c("gene_id","gene_name","log2foldchange","sig","start","end")
#ddply(data, .(gene_id), head, n = 1) 



#transform start/stop to center around gene of interest??? (so 0 is our gene?)
#qplot(start,test_stat,data=data,color=sig)
#ggplot(data,aes(start,test_stat,color=sig))+geom_point()+scale_fill_manual(values=c("black", "red"))
ggplot(data,aes(start,test_stat,color=sig))+geom_point()+scale_color_manual(values=c("black", "red"))+coord_cartesian(xlim=c(-windowSize/2, windowSize/2))








#P-values (H0=number of significant genes in window is different from that observed for 1000 random intervals)
# linc-Foxf1a   p<0.087 (1 signficant neighboring gene)
# linc-Sox2             p<1.0 (0 significant neighboring gene)
# linc-Brn1b    p<0.225 (4 significant neighboring genes)



#Simple Image
#xacis: window size (-100k, +100k; tss @0)
#yaxis: test stat
#gene in position across region 
#colored by yes/no; red/black 




#Draw GeneTrack  

library(Gviz)
#Granges
#must read gtf in w cuff 
cuff<-readCufflinks(gtfFile='/n/rinn_data1/users/agroff/annotation/mm9/ucsc_no_noncoding_AND_lincdb2.gtf',genome='mm9')#will be mm10!
myID<-"Pde8b"
myGene<-getGene(cuff,myID)
genetrack <-makeGeneRegionTrack(myGene)
plotTracks(genetrack)
