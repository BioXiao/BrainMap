# Generate all wt-v-ko analysis reports for whole brain sequencing by strain 
library(knitr)

# read in master sheet


# create df with 2 columns: strain, output dir (can get more creative later)


# use this to populate StrainTemplate_embryonic 
# automatically generate reports for each strain 
for(i in seq(1,length(mastersheet))){
  strain <-mastersheet[i,1]
  dir<-mastersheet[i,2]
  knit2html('StrainTemplate_embryonic.Rmd',output=paste(strain,".md", sep=""))
}

#want to be able to do autoAnalysis() or autoAnalysis(dir,comparison)
#knit2html