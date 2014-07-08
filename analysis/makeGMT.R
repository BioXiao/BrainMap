#Make gmt from genelist 
sig<-getSig(cuff,alpha=0.05)
sigGenes<-getGenes(cuff,sig)
annot<-annotation(sigGenes)
names<-annot$gene_short_name
forgmt<-list("SexDiffs","NA",names)
forgmt<-unlist(forgmt)

write(forgmt,file="/n/rinn_data1/users/agroff/GITHUB/BrainMap/analysis/support/sexdiffs.gmt",ncolumns=length(forgmt),sep="\t")

library(GSA)
test<-GSA.read.gmt("/n/rinn_data1/users/agroff/GITHUB/BrainMap/analysis/support/sexdiffs.gmt")