
dat<-read.csv("autoanalysisInfo.csv",header=TRUE,stringsAsFactors=FALSE)
library(knitr)
i<-as.numeric((commandArgs(TRUE)[1]))
filename<-dat$filename[i]
print(filename)
print(dat$strain[i])
dir.create(filename)
setwd(filename)
strain<-dat$strain[i]
timepoint<-dat$timepoint[i]
dir<-dat$dir[i]
knit2html('/n/rinn_data1/users/agroff/GITHUB/BrainMap/analysis/StrainTemplate.Rmd',output=paste(filename,".md",sep=""), quiet=TRUE)
