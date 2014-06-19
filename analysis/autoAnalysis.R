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

for(i in seq(7,(dim(adult_directories)[2]))){
  strain <-as.character(adult_directories[1,i])
  timepoint<-"Adult"
  filename<-paste(adult_directories[,i],collapse="_")
  dir<-paste(diffdir,filename,sep="/")
  #output<-paste(analysisdir,filename,sep="/")
  print(filename)
  print(dir)
  print(strain)
  knit2html('StrainTemplate.Rmd',output=paste(filename,".md", sep=""), quiet=TRUE)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
  print(dir)
  print(strain)
}
#paste(adult_directories[,1],sep="_",collapse="_")


# Embryonic Brains 
embryonic_directories<-split[,which(split[4,]=="Embryonic")]
setwd(analysisdir)
for(i in seq(1,(dim(embryonic_directories)[2]))){
  strain <-as.character(embryonic_directories[1,i])
  timepoint<-"Embryonic"
  filename<-paste(embryonic_directories[,i],collapse="_")
  dir<-paste(diffdir,filename,sep="/")
  #output<-paste(analysisdir,filename,sep="/")
  print(filename)
  print(dir)
  print(strain)
  knit2html('StrainTemplate.Rmd',output=paste(filename,".md", sep=""), quiet=TRUE)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
  print(dir)
  print(strain)
}






# read in master sheet
# use this to populate StrainTemplate_embryonic 
# automatically generate reports for each strain 
#for(i in seq(1,(dim(mastersheet)[1]))){
#  strain <-mastersheet[i,1]
#  dir<-mastersheet[i,2]
#  print(dir)
#  print(strain)
#  #dir correct but not reading correct db? (GEOB has 3 samples)
#  knit2html('StrainTemplate_embryonic.Rmd',output=paste(strain,".md", sep=""), quiet=TRUE)
#  print(dir)
#  print(strain)
#}


######### 
# TEST
#########
# test1<-c("peril_GEOB","/n/rinn_data1/users/agroff/seq/PERIL/data/diffs/cuffdiff_v221_newgtf/GE_OB/")
# test2<-c("peril_kidney","/n/rinn_data1/users/agroff/seq/PERIL/data/diffs/cuffdiff_v221_newgtf/Kidney/")
# test3<-c("peril_wholebrain","/n/rinn_data1/users/agroff/seq/PERIL/data/diffs/cuffdiff_v221_newgtf/whole_brain")
# test_master_sheet<-(rbind(test1,test2,test3))
#
#for(i in seq(1,(dim(test_master_sheet)[1]))){
#  strain <-test_master_sheet[i,1]
#  dir<-test_master_sheet[i,2]
#  print(dir)
#  print(strain)
#  #knit2html('test.Rmd',output=paste(strain,"_test.md", sep=""), quiet=TRUE)
#  knit2html('StrainTemplate_embryonic.Rmd', output=paste(strain,".md",sep="")) #if works, add quiet=TRUE
#  print(dir)
#  print(strain)
#}
