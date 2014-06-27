# Generate all wt-v-ko analysis reports for whole brain sequencing by strain 
library(knitr)
trackdir<-"/n/rinn_data1/users/agroff/GITHUB/BrainMap/analysis/tracks/"

# Make directory table
diffdir<-"/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/olddiffs"
files<-list.files(path=diffdir)
names<-files
split<-data.frame(strsplit(names,"_"))
rownames(split)<-c("strain","vs","wt","timepoint")

# ADULT Brains 
adult_directories<-split[,which(split[4,]=="Adult")]
setwd(trackdir)
for(i in seq(1,(dim(adult_directories)[2]))){
  setwd(trackdir) #POOR FORM, FIX SO DONT EVER SETWD FOR EACH
  strain <-as.character(adult_directories[1,i])
  timepoint<-"Adult"
  filename<-paste(adult_directories[,i],collapse="_")
  dir<-paste(diffdir,filename,sep="/")
  dir.create(filename)
  print(filename)
  print(dir)
  print(strain)
  setwd(filename) #POOR FORM
  knit2html('../Track_vis.Rmd',output=paste(filename,".md",sep=""), quiet=TRUE)
  print(dir)
  print(strain)
}






#############################################



library(knitr)
trackdir<-"/n/rinn_data1/users/agroff/GITHUB/BrainMap/analysis/tracks/"

# Make directory table
diffdir<-"/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/olddiffs"
setwd(diffdir)
files<-list.files()
names<-files
split<-data.frame(strsplit(names,"_"))
rownames(split)<-c("strain","vs","wt","timepoint")


# Embryonic Brains 
embryonic_directories<-split[,which(split[4,]=="Embryonic")]
setwd(trackdir)
#library(cummeRbund)
#haunt and tp53cor1
for(i in seq(1,(dim(embryonic_directories)[2]))){
  setwd(trackdir)
  strain <-as.character(embryonic_directories[1,i])
  timepoint<-"Embryonic"
  filename<-paste(embryonic_directories[,i],collapse="_")
  dir<-paste(diffdir,filename,sep="/")
  dir.create(filename)
  print(filename)
  print(dir)
  print(strain)
  setwd(filename) #POOR FORM
  knit2html('../Track_vis.Rmd',output=paste(filename,".md",sep=""), quiet=TRUE)
  print(dir)
  print(strain)
}
