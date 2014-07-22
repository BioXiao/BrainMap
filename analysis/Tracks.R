# TRACKS
library(cummeRbund)
library(Gviz)
library(RColorBrewer)

analysisdir<-"/n/rinn_data1/users/agroff/GITHUB/BrainMap/analysis/"
diffdir<-"/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/diffs"
GTF<-"/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/annotation/mm10_gencode_vM2_with_lncRNAs_and_LacZ.gtf"

dir<-paste(diffdir,'Haunt_vs_WT_Adult/',sep="/")
dirnorm<-paste(diffdir,"linc-Brn1b_vs_WT_Adult/",sep="/")
cuff<-readCufflinks(dir=dir,gtfFile=GTF[1],genome="mm10")
cuffnorm<-readCufflinks(dir=dirnorm,gtfFile=GTF[1],genome="mm10")

myID<-"Haunt"
myGene<-getGene(cuff,myID)
genetrack <-makeGeneRegionTrack(myGene)

myID<-"linc-Brn1b"
brn1b<-getGene(cuff,myID)
myGene<-brn1b
genetrack<-makeGeneRegionTrack(brn1b)

plotTracks(genetrack)

################# SCRIPT FROM LOYAL ##################

library(rtracklayer)
library(Gviz)
library(RMySQL)

#Need to install R-3.0.0 (Devel) for Gviz to deal with .bam files

#Helper Functions
movingAverage <- function(x, n=50, centered=TRUE) {
  
  if (centered) {
    before <- floor  ((n-1)/2)
    after  <- ceiling((n-1)/2)
  } else {
    before <- n-1
    after  <- 0
  }
  
  # Track the sum and count of number of non-NA items
  s     <- rep(0, length(x))
  count <- rep(0, length(x))
  
  # Add the centered data
  new <- x
  # Add to count list wherever there isn't a
  count <- count + !is.na(new)
  # Now replace NA_s with 0_s and add to total
  new[is.na(new)] <- 0
  s <- s + new
  
  # Add the data from before
  i <- 1
  while (i <= before) {
    # This is the vector with offset values to add
    new   <- c(rep(NA, i), x[1:(length(x)-i)])
    
    count <- count + !is.na(new)
    new[is.na(new)] <- 0
    s <- s + new
    
    i <- i+1
  }
  
  # Add the data from after
  i <- 1
  while (i <= after) {
    # This is the vector with offset values to add
    new   <- c(x[(i+1):length(x)], rep(NA, i))
    
    count <- count + !is.na(new)
    new[is.na(new)] <- 0
    s <- s + new
    
    i <- i+1
  }
  
  # return sum divided by count
  s/count
}

#TODO: get regions to plot
#plotRegions<-read.table("plotRegions.txt",header=T,sep="\t",stringsAsFactors=FALSE)

#Constants
genome<-"mm10"

#name<-"Slc25a12"
#chrom<-"chr2"
#from<-71095513
#to<-71215660

#dir<-"/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/diffs/Peril_vs_WT_Embryonic/"
#setwd(dir)
#cuff<-readCufflinks(gtfFile="/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/annotation/mm10_gencode_vM2_with_lncRNAs_and_LacZ.gtf",genome="mm10") 
#name<-"Peril"
name<-"Haunt"
myGene<-getGene(cuff,name)
annot<-annotation(myGene)

locus<-strsplit(annot$locus,":")
locus<-unlist(locus)
chrom<-locus[[1]]
start_and_end<-strsplit(locus[[2]],"-")
start_and_end<-unlist(start_and_end)
from<-as.numeric(start_and_end[[1]])
to<-as.numeric(start_and_end[[2]])


reps<-replicates(cuff)
files<-lapply(reps$file,function(x){strsplit(x, "/")})
files<-as.data.frame(files)
samples<-(t(files[10,]))
rownames(samples)<-NULL

JRs<-samples


bamRoot<-'/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/bam/'

bamFiles<-lapply(JRs,function(x){paste(bamRoot,x,"/accepted_hits.bam",sep="")})

bamNames<-reps$rep_name

bamColors<-brewer.pal(length(bamNames),"Spectral")

makeBamTrack<-function(bamFile,bamName,genome=genome,chromosome,color="steelblue",window=20,ylim=c(0,15)){
  track<-DataTrack(range=bamFile,name=bamName,genome=genome,type="h",transformation=function(x){movingAverage(x,window)},col=color,fill.histogram=color,col.histogram=color,chromosome=chromosome, ylim=ylim, lwd=1.5)
  return(track)
}

#require(TxDb.Mmusculus.UCSC.mm10.knownGene)

doPlot<-function(genome=genome,name,myChr,from,to,window=50,bamFiles,bamNames){
  #Make Tracks
  axTrack<-GenomeAxisTrack(add53 = TRUE,add35 = TRUE, labelPos = "above")
  idxTrack <- IdeogramTrack(genome = genome, chromosome = myChr)
  
  #BamTracks
  write("\tBamTracks",stderr())
  bamTracks<-list()
  bamOrder<-c(1:(length(bamFiles)-4))

  for (i in bamOrder){
    track<-makeBamTrack(bamFiles[[i]],bamNames[[i]],genome=genome,chromosome=myChr,color=bamColors[i],window=50)
    bamTracks<-c(bamTracks,track)
  }
  
  #Plot Tracks
  write("\tplotting...",stderr())

  myTracks<-bamTracks[1:3]
  trackSizes<-c(rep(1,3))
  
  plotTracks(myTracks,from=as.numeric(from),to=as.numeric(to),chrom=myChr,showAxis=FALSE,background.title="white",col.title="black",col.axis="black",sizes=trackSizes)
  
  #plotTracks(bamTracks,from=as.numeric(from),to=as.numeric(to),chrom=chrom,showAxis=FALSE,background.title="white",col.title="black",col.axis="black",sizes=trackSizes)
}


doPlot(genome=genome, name=name, myChr=chrom, from=from, to=to, window=50,bamFiles, bamNames)
















for(i in 1:dim(plotRegions)[1]){
  write(paste(plotRegions[i,]$name),stderr())
  #print(paste(plotRegions[i,]$name,plotRegions[i,]$chrom))
  doPlot(genome=genome,
         name=plotRegions[i,]$name,
         myChr=plotRegions[i,]$chrom,
         from=as.numeric(plotRegions[i,]$start),
         to=as.numeric(plotRegions[i,]$end),
         window=as.numeric(plotRegions[i,]$window))
}






######
#Karyogram
######
library(biovizBase)
library(ggbio)

myRanges<-GRanges(seqnames=Rle(plotRegions$chrom),IRanges(plotRegions$start,plotRegions$end),name=plotRegions$name)

mm10 <- getIdeogram("mm10", cytoband = TRUE)
seqlengths(mm10) <- seqlengths(mm10)[names(seqlengths(mm10))]
mm10 <- keepSeqlevels(mm10, paste0("chr", c(1:19, "X","Y")))

pdf("karyogram.pdf")
autoplot(mm9,layout="karyogram",cytoband=TRUE) + layout_karyogram(myRanges,fill="red",color="red",geom="rect",ylim = c(11, 21),lwd=2)
dev.off()

#Full X-chromosome plot
chrom<-"chrX"
from<-1
to<-166650296
name<-"ChromosomeX"

doPlotX<-function(genome,name,chrom,from,to,window=16666){
  
  
  #Make Tracks
  axTrack<-GenomeAxisTrack(add53 = TRUE,add35 = TRUE, labelPos = "above")
  idxTrack <- IdeogramTrack(genome = genome, chromosome = chrom)
  
  #write("\tUCSC",stderr())
  #knownGenes <- UcscTrack(genome = genome, chromosome = chrom,
  #                       track = "refGene", from = from, to = to, trackType = "GeneRegionTrack",
  #                        rstarts = "exonStarts", rends = "exonEnds", gene = "name",
  #                        symbol = "name2", transcript = "name2", strand = "strand",
  #                        fill = "black", col.line="black", name = "RefSeq Genes",showId=T,stacking="dense"
  #                                                       )
  
  #BamTracks
  #tmp<-DataTrack(range="/Volumes/Odyssey/seq/lgoff/CHART/linc-FIRRE/mESC/Rap1-R1.sorted.unique_alignment.bam",genome="mm9",type="h",name="RAP-R1",chromosome=chrom,transformation=function(x){movingAverage(x,200)})
  write("\tBamTracks",stderr())
  bamTracks<-list()
  bamOrder<-c(1:6)
  for (i in bamOrder){
    track<-makeBamTrack(bamFiles[i],bamNames[i],genome=genome,chromosome=chrom,color=bamColors[i],window=window,ylim=c(0,15))
    bamTracks<-c(bamTracks,track)
  }
  
  #Plot Tracks
  write("\tplotting...",stderr())
  myTracks<-c(axTrack,bamTracks)
  trackSizes<-c(1,rep(1,length(bamTracks)))
  
  
  png(paste(name,".png",sep=""),width=1000,height=800)
  plotTracks(myTracks,from=from,to=to,chrom=chrom,background.title="white",col.title="black",col.axis="black",sizes=trackSizes,showAxis=TRUE)
  dev.off()
  #dbDisconnect(con)
}

doPlotX(genome=genome,name=name,chrom=chrom,from=from,to=to,window=0)