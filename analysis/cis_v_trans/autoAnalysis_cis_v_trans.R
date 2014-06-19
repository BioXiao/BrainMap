# Generate all wt-v-ko cis-v-trans reports for whole brain sequencing by strain 
library(knitr)
analysisdir<-"/n/rinn_data1/users/agroff/GITHUB/BrainMap/analysis/cis_v_trans/"

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

for(i in seq(10,(dim(adult_directories)[2]))){
  strain <-as.character(adult_directories[1,i])
  timepoint<-"Adult"
  filename<-paste(adult_directories[,i],collapse="_")
  dir<-paste(diffdir,filename,sep="/")
  print(filename)
  print(dir)
  print(strain)
  knit2html('CisvTrans.Rmd',output=paste(filename,"_cisvtrans.md", sep=""), quiet=TRUE)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
  print(dir)
  print(strain)
}


# Embryonic Brains 
embryonic_directories<-split[,which(split[4,]=="Embryonic")]
setwd(analysisdir)
for(i in seq(1,(dim(embryonic_directories)[2]))){
  strain <-as.character(embryonic_directories[1,i])
  timepoint<-"Embryonic"
  filename<-paste(embryonic_directories[,i],collapse="_")
  dir<-paste(diffdir,filename,sep="/")
  print(filename)
  print(dir)
  print(strain)
  knit2html('CisvTrans.Rmd',output=paste(filename,"_cisvtrans.md", sep=""), quiet=TRUE)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
  print(dir)
  print(strain)
}