#cis region panel
library(cummeRbund)
library(BSgenome.Mmusculus.UCSC.mm10)
library(seqbias)
library(stringr)
library(plyr)
library(ggplot2)
nIter<-1000
windowSize<-4000000

getTable<-function(object){
  fullTable<-diffTable(genes(object))
  write("First Split",stderr())
  firstSplit<-str_split_fixed(fullTable$locus,":",2)
  write("Second Split",stderr())
  secondSplit<-str_split_fixed(firstSplit[,2],"-",2)
  fullTable$chromosome<-firstSplit[,1]
  fullTable$start<-as.numeric(secondSplit[,1])
  fullTable$end<-as.numeric(secondSplit[,2])
  fullTable<-fullTable[fullTable$chromosome %in% names(seqlengths(mm10.granges)),]
  fullTable$chromosome<-factor(fullTable$chromosome, levels=names(seqlengths(mm10.granges)))
  fullTable
}

dat<-read.csv("autoanalysisInfo.csv",header=TRUE,stringsAsFactors=FALSE)
cisplots<-list()

#start at 6 
#1:dim(dat)[1]
for (i in 1:3){
  
  strain<-dat$strain[i]
  dir<-dat$dir[i]
  cuff<-readCufflinks(dir=dir,GTF="/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/annotation/mm10_gencode_vM2_with_lncRNAs_and_LacZ.gtf",genome="mm10")

  myLengths<-seqlengths(Mmusculus)[!grepl("_random",names(seqlengths(Mmusculus)))]
  mm10.granges<-GRanges(seqnames = names(myLengths), ranges = IRanges(start = 1, end = myLengths),seqlengths=myLengths)
  myRandom<-random.intervals(mm10.granges,n=nIter,ms=windowSize)
  
  fullTable<-getTable(cuff)
  
  myGene<-fullTable[which(fullTable$gene_short_name==strain),][1,] #any problems w this?
  chromosome<-myGene$chromosome
  start<-myGene$start-(windowSize/2)
  end<-myGene$end+(windowSize/2)
  sigGenesRegion<-fullTable[which(fullTable[,40]==chromosome & fullTable[,39]=="yes" & fullTable[,9]>=start & fullTable[,10]<=end),]
  nSig<-nrow(ddply(sigGenesRegion,.(gene_name),head,n=1))
  
  #score<-0
  #signeighbors<-data.frame(rep(NULL,nIter))
  
 # for (i in 1:nIter){
  #  write(i,stderr())
  #  sigGenesRegion<-fullTable[which(fullTable[,40]==seqnames(myRandom[i])@values & fullTable[,39]=="yes" & fullTable[,9]>=start(myRandom[i])-(windowSize/2) & fullTable[,10]<=end(myRandom[i])+(windowSize/2)),]
  #  nSigIter<-nrow(ddply(sigGenesRegion,.(gene_name),head,n=1))
  #  write(nSigIter,stderr())
  #  if(nSigIter >= nSig-1) {score<-score+1}
  #  signeighbors[1,i]<-nSigIter
  #}
  
  #pval_for_region<-score/nIter
  
  genesInRegion<-fullTable[which(fullTable[,40]==chromosome & fullTable[,9]>=start & fullTable[,10]<=end),]
  genesInRegion$start<-myGene$start-genesInRegion$start
  colnames(genesInRegion)[39]<-"sig"
  colnames(genesInRegion)[35]<-"log2foldchange"
  colnames(genesInRegion)[36]<-"test_stat"
  data<-ddply(genesInRegion,.(gene_id),head,n=1)
  data$test_stat<-as.numeric(data$test_stat)
  
  currplot<-ggplot(data,aes(start,test_stat,color=sig, label=gene_name))+geom_point()+scale_color_manual(values=c("black", "red"))+coord_cartesian(xlim=c(-windowSize/2, windowSize/2),ylim=c(-max(abs(data$test_stat)+1),max(abs(data$test_stat))+1))+labs(title=strain)+geom_text(data=subset(data, sig=='yes'))+theme_bw()+geom_vline(xintercept=0, color="blue")+geom_hline(yintercept=0,color="blue")
  cisplots[[i]]<-currplot
}

# Multiple plot function
#
# ggplot objects can be passed in ..., or to plotlist (as a list of ggplot objects)
# - cols:   Number of columns in layout
# - layout: A matrix specifying the layout. If present, 'cols' is ignored.
#
# If the layout is something like matrix(c(1,2,3,3), nrow=2, byrow=TRUE),
# then plot 1 will go in the upper left, 2 will go in the upper right, and
# 3 will go all the way across the bottom.
#
multiplot <- function(..., plotlist=NULL, file, cols=1, layout=NULL) {
  require(grid)
  
  # Make a list from the ... arguments and plotlist
  plots <- c(list(...), plotlist)
  
  numPlots = length(plots)
  
  # If layout is NULL, then use 'cols' to determine layout
  if (is.null(layout)) {
    # Make the panel
    # ncol: Number of columns of plots
    # nrow: Number of rows needed, calculated from # of cols
    layout <- matrix(seq(1, cols * ceiling(numPlots/cols)),
                     ncol = cols, nrow = ceiling(numPlots/cols))
  }
  
  if (numPlots==1) {
    print(plots[[1]])
    
  } else {
    # Set up the page
    grid.newpage()
    pushViewport(viewport(layout = grid.layout(nrow(layout), ncol(layout))))
    
    # Make each plot, in the correct location
    for (i in 1:numPlots) {
      # Get the i,j matrix positions of the regions that contain this subplot
      matchidx <- as.data.frame(which(layout == i, arr.ind = TRUE))
      
      print(plots[[i]], vp = viewport(layout.pos.row = matchidx$row,
                                      layout.pos.col = matchidx$col))
    }
  }
}
pdf("cis_plots_panel.pdf")
multiplot(plotlist=cisplots,cols=4)
dev.off()