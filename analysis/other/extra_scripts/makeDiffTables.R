#make DiffTables
library(cummeRbund)
dat<-read.csv("autoanalysisInfo.csv",header=TRUE,stringsAsFactors=FALSE)

i<-as.numeric((commandArgs(TRUE)[1]))
filename<-dat$filename[i]
print(filename)
print(dat$strain[i])
output<-paste(filename,"diffTable.tab",sep="_")
strain<-dat$strain[i]
timepoint<-dat$timepoint[i]
alpha<-0.05
dir<-dat$dir[i]

cuff<-readCufflinks(dir=dir,gtfFile="/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/annotation/mm10_gencode_vM2_with_lncRNAs_and_LacZ.gtf",genome="mm10")
table<-diffTable(genes(cuff))
write.table(table,file=output,sep="\t")