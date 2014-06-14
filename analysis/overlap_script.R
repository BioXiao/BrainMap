# Cis v Trans 

#setup 
library(cummeRbund)
setwd('"/n/rinn_data1/users/agroff/seq/PERIL/data/diffs/cuffdiff_v221_newgtf/whole_brain" 
')
cuff<-readCufflinks()

# start

library(BSgenome.Mmusculus.UCSC.mm9)
library(seqbias)
library(stringr)
library(cummeRbund)
cuff<-readCufflinks()

myLengths<-seqlengths(Mmusculus)[!grepl("_random",names(seqlengths(Mmusculus)))]

mm9.granges<-GRanges(seqnames = names(myLengths), ranges = IRanges(start = 1, end = myLengths),seqlengths=myLengths)


#Constants
nIter<-10000
windowSize<-2000000
myRandom<-random.intervals(mm9.granges,n=nIter,ms=windowSize)

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
#nSig<-nrow(subset(fullTable,chromosome=='chr3' & start>=34663091-(windowSize/2) & end<=34663091+(windowSize/2) & KO_WT_significant=="yes"))

#linc-Brn1b
nSig<-nrow(subset(fullTable,chromosome=='chr1' & start>=42763905-(windowSize/2) & end<=42763905+(windowSize/2) & E13_lincBrn1b_KO_Tel_E13_WT_Tel_significant=="yes"))


score<-0
for (i in 1:nIter){
  write(i,stderr())
  nSigIter<-nrow(subset(fullTable,chromosome==seqnames(myRandom[i])@values & start>=start(myRandom[i])-(windowSize/2) & end<=end(myRandom[i])+(windowSize/2) & E13_lincBrn1b_KO_Tel_E13_WT_Tel_significant=="yes"))
  write(nSigIter,stderr())
  if(nSigIter >= nSig-1) {score<-score+1}
}

score/nIter

#P-values (H0=number of significant genes in window is different from that observed for 1000 random intervals)
# linc-Foxf1a   p<0.087 (1 signficant neighboring gene)
# linc-Sox2             p<1.0 (0 significant neighboring gene)
# linc-Brn1b    p<0.225 (4 significant neighboring genes)