# TRACKS
library(cummeRbund)
library(Gviz)

analysisdir<-"/n/rinn_data1/users/agroff/GITHUB/BrainMap/analysis/"
diffdir<-"/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/diffs"
GTF<-"/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/annotation/mm10_gencode_vM2_with_lncRNAs_and_LacZ.gtf"

setwd(diffdir)
setwd('Peril_vs_WT_Adult/')
cuff<-readCufflinks(gtfFile=GTF,genome="mm10")

myID<-"Peril"
myGene<-getGene(cuff,myID)
genetrack <-makeGeneRegionTrack(myGene)
plotTracks(genetrack)