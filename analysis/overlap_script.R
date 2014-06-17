# Cis v Trans 

#setup 
library(cummeRbund)
setwd("/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/diffs/Celrr_vs_WT_Adult/")
cuff<-readCufflinks()
strain<-"Celrr"

# start
#source("http://bioconductor.org/biocLite.R")
#biocLite("BSgenome.Mmusculus.UCSC.mm9")
#biocLite("seqbias")
#biocLite("stringr")
#source("http://bioconductor.org/biocLite.R")
#biocLite("BSgenome.Mmusculus.UCSC.mm10")

library(BSgenome.Mmusculus.UCSC.mm10)
library(seqbias)
library(stringr)


myLengths<-seqlengths(Mmusculus)[!grepl("_random",names(seqlengths(Mmusculus)))]

mm10.granges<-GRanges(seqnames = names(myLengths), ranges = IRanges(start = 1, end = myLengths),seqlengths=myLengths)


#Constants
nIter<-1000
windowSize<-2000000
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
  
  fullTable<-fullTable[fullTable$chromosome %in% names(seqlengths(mm9.granges)),]
  fullTable$chromosome<-factor(fullTable$chromosome, levels=names(seqlengths(mm9.granges)))
  fullTable
}


fullTable<-getTable(cuff)

#linc-Foxf1a
#nSig<-nrow(subset(fullTable,chromosome=='chr8' & start>=123578782-(windowSize/2) & end<=123578782+(windowSize/2) & KO_WT_significant=="yes"))

#linc-Sox2
#nSig<-nrow(subset(fullTable,chromosome=='chr3' & start>=34663091-(windowSize/2) & end<=34663091+(windowSize/2) & ko_wt_significant=="yes"))

#linc-Brn1b
#nSig<-nrow(subset(fullTable,chromosome=='chr1' & start>=42763905-(windowSize/2) & end<=42763905+(windowSize/2) & E13_lincBrn1b_KO_Tel_E13_WT_Tel_significant=="yes"))

#myGene
myGene<-fullTable[which(fullTable$gene_short_name==strain),]
chromosome<-myGene$chromosome
start<-myGene$start-(windowSize/2)
end<-myGene$end+(windowSize/2)
nSig<-nrow(subset(fullTable,chromosome==chromosome & start>=start & end<=end & ko_wt_significant=="yes"))


score<-0
for (i in 1:nIter){
  write(i,stderr())
  nSigIter<-nrow(subset(fullTable,chromosome==seqnames(myRandom[i])@values & start>=start(myRandom[i])-(windowSize/2) & end<=end(myRandom[i])+(windowSize/2) & ko_wt_significant=="yes"))
  write(nSigIter,stderr())
  if(nSigIter >= nSig-1) {score<-score+1}
}

score/nIter

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