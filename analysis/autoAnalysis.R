# Generate all wt-v-ko analysis reports for whole brain sequencing by strain 
library(knitr)
analysisdir<-"/n/rinn_data1/users/agroff/GITHUB/BrainMap/analysis/"

# Make directory table
diffdir<-"/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/diffs"
setwd(diffdir)
files<-list.files()
names<-files
split<-data.frame(strsplit(names,"_"))
rownames(split)<-c("strain","vs","wt","timepoint")

# ADULT Brains 
adult_directories<-split[,which(split[4,]=="Adult")]
setwd(analysisdir)
#library(cummeRbund)
for(i in seq(1,(dim(adult_directories)[2]))){
  strain <-as.character(adult_directories[1,i])
  timepoint<-"Adult"
  filename<-paste(adult_directories[,i],collapse="_")
  dir<-paste(diffdir,filename,sep="/")
  print(filename)
  print(dir)
  print(strain)
  #setwd(dir)
  #cuff<-readCufflinks(gtfFile="/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/annotation/mm10_gencode_vM2_with_lncRNAs_and_LacZ.gtf",genome="mm10") 
  knit2html('StrainTemplate.Rmd',output=paste(filename,".md", sep=""), quiet=TRUE)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
  print(dir)
  print(strain)
}
#paste(adult_directories[,1],sep="_",collapse="_")


# Embryonic Brains 
embryonic_directories<-split[,which(split[4,]=="Embryonic")]
setwd(analysisdir)
#library(cummeRbund)
for(i in seq(1,(dim(embryonic_directories)[2]))){
  strain <-as.character(embryonic_directories[1,i])
  timepoint<-"Embryonic"
  filename<-paste(embryonic_directories[,i],collapse="_")
  dir<-paste(diffdir,filename,sep="/")
  #output<-paste(analysisdir,filename,sep="/")
  print(filename)
  print(dir)
  print(strain)
  #setwd(dir)
  #cuff<-readCufflinks(gtfFile="/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/annotation/mm10_gencode_vM2_with_lncRNAs_and_LacZ.gtf",genome="mm10") 
  knit2html('StrainTemplate.Rmd',output=paste(filename,".md", sep=""), quiet=TRUE)                                                                                                                                                                                                                                                                                                                                                                                                                                                                        
  print(dir)
  print(strain)
}
