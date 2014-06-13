# Generate all wt-v-ko analysis reports for whole brain sequencing by strain 
library(knitr)
setwd("/n/rinn_data1/users/agroff/GITHUB/BrainMap/analysis/")
# read in master sheet


# create df with 2 columns: strain, output dir (can get more creative later)


# use this to populate StrainTemplate_embryonic 
# automatically generate reports for each strain 
for(i in seq(1,(dim(mastersheet)[1]))){
  strain <-mastersheet[i,1]
  dir<-mastersheet[i,2]
  print(dir)
  print(strain)
  #dir correct but not reading correct db? (GEOB has 3 samples)
  knit2html('StrainTemplate_embryonic.Rmd',output=paste(strain,".md", sep=""), quiet=TRUE)
  print(dir)
  print(strain)
}

#want to be able to do autoAnalysis() or autoAnalysis(dir,comparison)
#knit2html


######### 
# TEST
#########

test1<-c("peril_GEOB","/n/rinn_data1/users/agroff/seq/PERIL/data/diffs/cuffdiff_v221_newgtf/GE_OB/")
test2<-c("peril_kidney","/n/rinn_data1/users/agroff/seq/PERIL/data/diffs/cuffdiff_v221_newgtf/Kidney/")
test3<-c("peril_wholebrain","/n/rinn_data1/users/agroff/seq/PERIL/data/diffs/cuffdiff_v221_newgtf/whole_brain")
test_master_sheet<-(rbind(test1,test2,test3))

for(i in seq(1,(dim(test_master_sheet)[1]))){
  strain <-test_master_sheet[i,1]
  dir<-test_master_sheet[i,2]
  print(dir)
  print(strain)
  #knit2html('test.Rmd',output=paste(strain,"_test.md", sep=""), quiet=TRUE)
  knit2html('StrainTemplate_embryonic.Rmd', output=paste(strain,".md",sep="")) #if works, add quiet=TRUE
  print(dir)
  print(strain)
}