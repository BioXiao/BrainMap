# Generate all wt-v-ko analysis reports for whole brain sequencing by strain 


# read in xlsx master sheet

# list of output directories 


# use this to populate StrainTemplate_embryonic 


# automatically generate reports for each strain 
#want to be able to do autoAnalysis() or autoAnalysis(dir,comparison)
for dir %in% output_directories{
  knit_expand(StrainTemplate_embryonic.Rmd,dir)
  #save to that output folder with name StrainName_embryonic_autoReport.Rmd
}

#knit2html

library(knitr)
strain <- "PERIL!"
knit2html('test.Rmd',output=strain.md)