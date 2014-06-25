# TRACKS

####### cummeRbund Tracks #######
library(cummeRbund)

analysisdir<-"/n/rinn_data1/users/agroff/GITHUB/BrainMap/analysis/"
diffdir<-"/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/diffs"
GTF<-"/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/annotation/mm10_gencode_vM2_with_lncRNAs_and_LacZ.gtf"


#lincRNAsubsetGTF<-"/n/rinn_data1/users/agroff/GITHUB/BrainMap/annotation_abbie/mm10_brainmap_lincRNA_subset.gtf"

#lincRNAsubsetGTF<-"/n/rinn_data1/users/agroff/GITHUB/BrainMap/annotation_abbie/strandless_test.gtf"

oneLinc<-"/n/rinn_data1/users/agroff/GITHUB/BrainMap/abbie_annotation/onelinc.gtf"
oneTrnascript<-"/n/rinn_data1/users/agroff/GITHUB/BrainMap/abbie_annotation/oneTranscript.gtf"


setwd(diffdir)
setwd('linc-Enc1_vs_WT_Embryonic/')
cuff<-readCufflinks(gtfFile=GTF,genome="mm10")

myID<-"linc-Enc1"
myGene<-getGene(cuff,myID)
genetrack <-makeGeneRegionTrack(myGene)
plotTracks(list(genetrack))

#myID<-"Peril"
#peril<-getGene(cuff,myID)
#genetrack <-makeGeneRegionTrack(peril) #throws weird error 
#plotTracks(list(genetrack))

################# SCRIPT FROM LOYAL -- helper functions ### 
library(RMySQL)
library(RColorBrewer)
library(GenomicFeatures)

chromInfo<-read.table("/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/indexes/mm10/mm10_brainmap.chrom.info",header=TRUE)

#makeTranscriptDbFromGFF
#brainmap_lincs_mm10<-makeTranscriptDbFromGFF(lincRNAsubsetGTF,format="gtf",chrominfo=chromInfo,species="Mus musculus")

mm10Db<-makeTranscriptDbFromGFF(GTF,format="gtf",chrominfo=chromInfo, species="Mus musculus")

#subsetA<-"/n/rinn_data1/users/agroff/GITHUB/BrainMap/abbie_annotation/subsetA.gtf"
#subsetB<-"/n/rinn_data1/users/agroff/GITHUB/BrainMap/abbie_annotation/subsetB.gtf"
#oneLinc<-makeTranscriptDbFromGFF(oneLinc,format="gtf")
#subsetADb<-makeTranscriptDbFromGFF(subsetA,format="gtf",chrominfo=chromInfo)
#subsetBDb<-makeTranscriptDbFromGFF(subsetB,format="gtf",chrominfo=chromInfo) #doesnt work! 

#periletc<-"/n/rinn_data1/users/agroff/GITHUB/BrainMap/abbie_annotation/Peril_and_Manr.gtf"
#perilandmanr<-makeTranscriptDbFromGFF(periletc,format="gtf",chrominfo=chromInfo) #WORKS! 

#eldrkantrenc<-"/n/rinn_data1/users/agroff/GITHUB/BrainMap/abbie_annotation/eldr_kantr_enc1.gtf"
#eldrKANTRenc<-makeTranscriptDbFromGFF(eldrkantrenc,format="gtf",chrominfo=chromInfo)

#kantr<-"/n/rinn_data1/users/agroff/GITHUB/BrainMap/abbie_annotation/kantr.gtf"
#KANTR<-makeTranscriptDbFromGFF(kantr,format="gtf",chrominfo=chromInfo)

#eldr<-"/n/rinn_data1/users/agroff/GITHUB/BrainMap/abbie_annotation/eldr.gtf"
#ELDR<-makeTranscriptDbFromGFF(eldr,format="gtf",chrominfo=chromInfo)

#enc1<-"/n/rinn_data1/users/agroff/GITHUB/BrainMap/abbie_annotation/enc1.gtf"
#ENC1<-makeTranscriptDbFromGFF(enc1,format="gtf",chrominfo=chromInfo)

#SAVE 

#Need to install R-3.0.0 (Devel) for Gviz to deal with .bam files
#Helper Functions
movingAverage <- function(x, n=10, centered=TRUE) {
  
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

makeBamTrack<-function(bamFile,bamName,genome=genome,chromosome,color="steelblue",window=20,ylim=c(0,15)){
  
  track<-DataTrack(range=bamFile,name=bamName,genome=genome,type="h",transformation=function(x){movingAverage(x,window)},col=color,fill.histogram=color,col.histogram=color,chromosome=chromosome, ylim=ylim, lwd=1.5)
  
  return(track)
}

########## Constants #########
library(cummeRbund)
analysisdir<-"/n/rinn_data1/users/agroff/GITHUB/BrainMap/analysis/"
diffdir<-"/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/diffs"
GTF<-"/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/annotation/mm10_gencode_vM2_with_lncRNAs_and_LacZ.gtf"

genome<-"mm10"

setwd(diffdir)
setwd('Peril_vs_WT_Embryonic/')
cuff<-readCufflinks(gtfFile=GTF,genome=genome)
name<-"Peril"

myGene<-getGene(cuff,name)
genetrack <-makeGeneRegionTrack(myGene)
#plotTracks(list(genetrack))

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

setwd(analysisdir)
deletionCoords<-read.table("mm10DeletionCoords.txt",sep="\t",header=TRUE,stringsAsFactors=FALSE)
colnames(deletionCoords)<-c("gene_name","gene_region","deletionRegion")
koStrain<-name
coords<-deletionCoords[which(deletionCoords$gene_name==koStrain),3]
coords<-strsplit(coords,":")
coords<-unlist(coords)
koChr<-coords[1]
positions<-strsplit(coords[[2]],"-")
positions<-unlist(positions)
koStart<-as.numeric(positions[1])
koWidth<-abs(as.numeric(positions[2])-as.numeric(positions[1]))


bamRoot<-'/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/bam/'

bamFiles<-lapply(JRs,function(x){paste(bamRoot,x,"/accepted_hits.bam",sep="")})

bamNames<-reps$rep_name

specCols<-brewer.pal(3,"Paired")
colPal<-colorRampPalette(specCols)
bamColors<-colPal(length(bamFiles))

#require(TxDb.Mmusculus.UCSC.mm10.knownGene)

doPlot<-function(genome=genome,name,myChr,from,to,window,bamFiles,bamNames,koStart,koWidth,koChr){
  #Make Tracks
  axTrack<-GenomeAxisTrack(add53 = TRUE,add35 = TRUE, labelPos = "above")
  idxTrack <- IdeogramTrack(genome = genome, chromosome = myChr)
  koTrack<-AnnotationTrack(start=koStart,width=koWidth,chromosome=koChr,strand="*",id=koStrain,genome="mm10",name="KO Region")
  #BamTracks
  write("\tBamTracks",stderr())
  bamTracks<-list()
  bamOrder<-c(1:length(bamFiles))

  for (i in bamOrder){
    track<-makeBamTrack(bamFiles[[i]],bamNames[[i]],genome=genome,chromosome=myChr,color=bamColors[i],window=window)
    bamTracks<-c(bamTracks,track)
  }
  
  #Plot Tracks
  write("\tplotting...",stderr())
  # myTracks<-c(bamTracks,knownGenes)
  myTracks<-c(idxTrack,axTrack,genetrack,bamTracks,koTrack)
  trackSizes<-c(1,1,4,rep(1,length(bamTracks)),1)

  #pdf(paste(name,".pdf",sep=""),width=10,height=8)
  plotTracks(myTracks,from=from,to=to,chromosome=myChr,showAxis=FALSE,background.title="black",col.title="white",col.axis="black",sizes=trackSizes)
  #dev.off()
  #dbDisconnect(con)
}


doPlot(genome=genome, name=name, myChr=chrom, from=from, to=to, window=20,bamFiles=bamFiles, bamNames=bamNames, koStart=koStart,koWidth=koWidth,koChr=koChr)


detach(package:GenomicFeatures)

#> plotTracks(bamTracks[[16]],from=from,to=to,chromosome=myChr,showAxis=FALSE,background.title="black",col.title="white",col.axis="grey")
#Error in n - 1 : non-numeric argument to binary operator

#make a transcriptDB with our gtf in mm10 


####################lots of plots! #########
#for(i in 1:dim(plotRegions)[1]){
#  write(paste(plotRegions[i,]$name),stderr())
#  #print(paste(plotRegions[i,]$name,plotRegions[i,]$chrom))
#  doPlot(genome=genome,
#         name=plotRegions[i,]$name,
#         myChr=plotRegions[i,]$chrom,
#         from=as.numeric(plotRegions[i,]$start),
#         to=as.numeric(plotRegions[i,]$end),
#         window=as.numeric(plotRegions[i,]$window))
#}