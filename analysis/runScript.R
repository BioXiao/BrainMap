####################BATCH SCRIPT######################
dat<-read.csv("autoanalysisInfo.csv",header=TRUE,stringsAsFactors=FALSE)
#GET i ARG! 
i<-as.numeric(as.character(commandArgs(TRUE)[1]))
filename<-dat$filename[i]
dir.create(filename)
print(filename)
print(dat$strain[i])
setwd(filename)
knit2html('/n/rinn_data1/users/agroff/GITHUB/BrainMap/analysis/StrainTemplate.Rmd',output=paste(filename,".md",sep=""), quiet=TRUE)
