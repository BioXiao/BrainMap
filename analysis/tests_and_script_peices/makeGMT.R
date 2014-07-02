#Make gmt from genelist 
dir<-"/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/diffs/WT_Adult_Male_v_Female_balanced/"
GTF<-"/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/annotation/mm10_gencode_vM2_with_lncRNAs_and_LacZ.gtf"
genome<-"mm10"
library(cummeRbund)

cuff<-readCufflinks(dir=dir,gtfFile="/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/annotation/mm10_gencode_vM2_with_lncRNAs_and_LacZ.gtf",genome=genome)
sig<-getSig(cuff,alpha=0.05)
sigGenes<-getGenes(cuff,sig)
annot<-annotation(sigGenes)
names<-annot$gene_short_name
forgmt<-c("Sexdiffs","NA",unlist(names))
gmt<-data.frame(forgmt)

#gmt<-paste(forgmt,sep="\t")
#write(t(gmt),file="/n/rinn_data1/users/agroff/GITHUB/BrainMap/analysis/support/sexdiffs.gmt",sep="\t")

#fileConn<-file("/n/rinn_data1/users/agroff/GITHUB/BrainMap/analysis/support/sexdiffs.gmt")
#writeLines(paste(forgmt,sep="\t"), fileConn)
#close(fileConn)

#write(forgmt,file="/n/rinn_data1/users/agroff/GITHUB/BrainMap/analysis/support/sexdiffs.gmt",ncolumns=length(forgmt),sep="\t")

cat(forgmt,file="/n/rinn_data1/users/agroff/GITHUB/BrainMap/analysis/support/sexdiffs.gmt",sep="\t")

library(GSA)
test<-GSA.read.gmt("/n/rinn_data1/users/agroff/GITHUB/BrainMap/analysis/support/sexdiffs.gmt")