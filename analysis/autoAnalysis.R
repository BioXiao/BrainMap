# Generate all wt-v-ko analysis reports for whole brain sequencing by strain 

# NEED:
# strain
# timepoint
# dir
# filename
# # make csv file with these and feed into R BATCH script 

diffdir<-"/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/diffs"

files<-list.files(path=diffdir)
files[1]<-NA
files[8]<-NA
files[29]<-NA
files[30]<-NA
files[31]<-NA
#files[14]<-NA #brn1a_embryonic
files<-files[!is.na(files)]
names<-files


split<-data.frame(strsplit(names,"_"))
rownames(split)<-c("strain","vs","wt","timepoint")



mat<-matrix(nrow=dim(split)[2],ncol=4)
data=data.frame(mat)
colnames(data)<-c("strain","timepoint","filename","dir")

for(i in seq(1,(dim(split)[2]))){ 
  data$strain[i] <-as.character(split[1,i])
  data$timepoint[i]<-as.character(split[4,i])
  filename<-paste(split[,i],collapse="_")
  data$filename[i]<-filename
  data$dir[i]<-paste(diffdir,filename,sep="/")
#  knit2html('../StrainTemplate.Rmd',output=paste(filename,".md",sep=""), quiet=TRUE)
}

write.table(data,"autoanalysisInfo.csv",sep=",")


####################BATCH SCRIPT######################
dat<-read.csv("autoanalysisInfo.csv",header=TRUE,stringsAsFactors=FALSE)
#GET i ARG! 
i<-as.numeric(as.character(commandArgs(TRUE)[1]))
filename<-dat$filename[i]
print(filename)
print(dat$strain[i])
dir.create(filename)
setwd(filename)
knit2html('/n/rinn_data1/users/agroff/GITHUB/BrainMap/analysis/StrainTemplate.Rmd',output=paste(filename,".md",sep=""), quiet=TRUE)

########################## ADULT ###################

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
  setwd(analysisdir)
  strain <-as.character(adult_directories[1,i])
  timepoint<-"Adult"
  filename<-paste(adult_directories[,i],collapse="_")
  dir<-paste(diffdir,filename,sep="/")
  dir.create(filename)
  print(filename)
  print(dir)
  print(strain)
  setwd(filename)
  knit2html('../StrainTemplate.Rmd',output=paste(filename,".md",sep=""), quiet=TRUE)
  print(dir)
  print(strain)
  setwd(analysisdir)
}






#############################################



library(knitr)
analysisdir<-"/n/rinn_data1/users/agroff/GITHUB/BrainMap/analysis/"

# Make directory table
diffdir<-"/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/diffs"
setwd(diffdir)
files<-list.files()
names<-files
split<-data.frame(strsplit(names,"_"))
rownames(split)<-c("strain","vs","wt","timepoint")


# Embryonic Brains 
embryonic_directories<-split[,which(split[4,]=="Embryonic")]
setwd(analysisdir)
#library(cummeRbund)
#haunt and tp53cor1
for(i in seq(1,(dim(embryonic_directories)[2]))){
  strain <-as.character(embryonic_directories[1,i])
  timepoint<-"Embryonic"
  filename<-paste(embryonic_directories[,i],collapse="_")
  dir<-paste(diffdir,filename,sep="/")
  dir.create(filename)
  print(filename)
  print(dir)
  print(strain)
  #setwd(dir)
  #cuff<-readCufflinks(gtfFile="/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/annotation/mm10_gencode_vM2_with_lncRNAs_and_LacZ.gtf",genome="mm10") 
  setwd(filename)
  knit2html('../StrainTemplate.Rmd',output=paste(filename,".md",sep=""), quiet=TRUE)
  #knit2html('../test.Rmd',output=paste(filename,"_test.md",sep=""), quiet=TRUE)
  print(dir)
  print(strain)
  setwd(analysisdir)
}
