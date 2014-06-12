peril_GEOB KO vs WT (Embryonic)
======================================

# questions
- overdispersion
- get tables to work
- counts






# Intialize


# Design Overview

This file shows the wt-v-ko comparison for peril_GEOB. 

Samples used are:

```r
samples
```

```
##                                                                           9
## c......n....rinn_data1....users....agroff....seq....PERIL....data...   bams
## c......n....rinn_data1....users....agroff....seq....PERIL....data....1 bams
## c......n....rinn_data1....users....agroff....seq....PERIL....data....2 bams
## c......n....rinn_data1....users....agroff....seq....PERIL....data....3 bams
```


Cuff overview:

```r
cuff
```

```
## CuffSet instance with:
## 	 2 samples
## 	 31926 genes
## 	 77340 isoforms
## 	 45508 TSS
## 	 0 CDS
## 	 31926 promoters
## 	 45508 splicing
## 	 0 relCDS
```

## Replicates (MAKE TABLES PRETTY >:| )

```r
print(xtable(replicates(cuff),type="html"))
```

```
## % latex table generated in R 3.0.2 by xtable 1.7-3 package
## % Thu Jun 12 12:02:31 2014
## \begin{table}[ht]
## \centering
## \begin{tabular}{rllrlrrrr}
##   \hline
##  & file & sample\_name & replicate & rep\_name & total\_mass & norm\_mass & internal\_scale & external\_scale \\ 
##   \hline
## 1 & /n/rinn\_data1/users/agroff/seq/PERIL/data/bams/Sample\_JR710\_Peril\_L46\_E14-5\_GE\_and\_OB\_wtm1\_ATCACG/accepted\_hits.bam & wt &   0 & wt\_0 & 19373200.00 & 21401800.00 & 0.90 & 1.00 \\ 
##   2 & /n/rinn\_data1/users/agroff/seq/PERIL/data/bams/Sample\_JR712\_Peril\_L46\_E14-5\_GE\_and\_OB\_wtm3\_TTAGGC/accepted\_hits.bam & wt &   1 & wt\_1 & 17389200.00 & 21401800.00 & 0.82 & 1.00 \\ 
##   3 & /n/rinn\_data1/users/agroff/seq/PERIL/data/bams/Sample\_JR711\_Peril\_L46\_E14-5\_GE\_and\_OB\_kof2\_CGATGT/accepted\_hits.bam & ko &   0 & ko\_0 & 31892200.00 & 21401800.00 & 1.49 & 1.00 \\ 
##   4 & /n/rinn\_data1/users/agroff/seq/PERIL/data/bams/Sample\_JR713\_Peril\_L46\_E14-5\_GE\_and\_OB\_kof\_7\_TGACCA/accepted\_hits.bam & ko &   1 & ko\_1 & 19646900.00 & 21401800.00 & 0.91 & 1.00 \\ 
##    \hline
## \end{tabular}
## \end{table}
```

# QC

## Dispersion

This shows count (WHAT IS COUNT? fragment counts? per gene?) vs dispersion (of those counts), or the spread in measurements for a particular gene across replicates. 

from cummerbund manual: Overdispersion is a common problem in RNA-Seq data. As of cufflinks v2.0 mean counts, variance, and dispersion are all emitted, allowing you to visualize the estimated overdispersion for each sample as a quality control measure. - See more at: http://compbio.mit.edu/cummeRbund/manual_2_0.html#sthash.9YRYxwRV.dpuf



```r
dispersionPlot(genes(cuff))
```

![plot of chunk dispersion](figure/peril_GEOB/dispersion.png) 

## Cross-replicate variability (fpkmSCVplot)
The squared coefficient of variation is a normalized measure of cross replicate variability that can be useful for evaluating the quality your RNA-seq data. Differences in CV 2 can result in lower numbers of differentially expressed genes due to a higher degree of variability between replicate fpkm estimates.


```r
fpkmSCVPlot(genes(cuff))
```

```
## Scale for 'x' is already present. Adding another scale for 'x', which will replace the existing scale.
## geom_smooth: method="auto" and size of largest group is >=1000, so using gam with formula: y ~ s(x, bs = "cs"). Use 'method = x' to change the smoothing method.
```

![plot of chunk CV](figure/peril_GEOB/CV1.png) 

```r
fpkmSCVPlot(isoforms(cuff))
```

```
## Scale for 'x' is already present. Adding another scale for 'x', which will replace the existing scale.
## geom_smooth: method="auto" and size of largest group is >=1000, so using gam with formula: y ~ s(x, bs = "cs"). Use 'method = x' to change the smoothing method.
```

![plot of chunk CV](figure/peril_GEOB/CV2.png) 

## Volcano

```r
csVolcano(genes(cuff),"wt","ko")
```

![plot of chunk volcano](figure/peril_GEOB/volcano.png) 

### Volcano matrix (replicates)

```r
csVolcanoMatrix(genes(cuff),replicates=T)
```

![plot of chunk unnamed-chunk-3](figure/peril_GEOB/unnamed-chunk-3.png) 

## MvA plot

```r
MAplot(genes(cuff),"wt","ko")
```

```
## Warning: Removed 8993 rows containing missing values (geom_point).
```

![plot of chunk MvA](figure/peril_GEOB/MvA.png) 
   
### MvA plot counts

```r
MAplot(genes(cuff),"wt","ko",useCount=T)
```

```
## Warning: Removed 8993 rows containing missing values (geom_point).
```

![plot of chunk MvA counts](figure/peril_GEOB/MvA counts.png) 

## Scatterplot

```r
csScatterMatrix(genes(cuff))
```

![plot of chunk scatterplot](figure/peril_GEOB/scatterplot.png) 

### Scatter matrix (replicates)

```r
csScatterMatrix(genes(cuff),replicates=T)
```

![plot of chunk scatterplot matrix](figure/peril_GEOB/scatterplot matrix.png) 


## Distributions

### Boxplot

```r
csBoxplot(genes(cuff))
```

![plot of chunk boxplot](figure/peril_GEOB/boxplot1.png) 

```r
csBoxplot(genes(cuff),replicates=T)
```

![plot of chunk boxplot](figure/peril_GEOB/boxplot2.png) 

```r
csBoxplot(isoforms(cuff))
```

![plot of chunk boxplot](figure/peril_GEOB/boxplot3.png) 

### Density

```r
csDensity(genes(cuff))
```

```
## Warning: Removed 10546 rows containing non-finite values (stat_density).
## Warning: Removed 9958 rows containing non-finite values (stat_density).
```

![plot of chunk density](figure/peril_GEOB/density1.png) 

```r
csDensity(genes(cuff),replicates=T)
```

```
## Warning: Removed 11794 rows containing non-finite values (stat_density).
## Warning: Removed 11938 rows containing non-finite values (stat_density).
## Warning: Removed 10770 rows containing non-finite values (stat_density).
## Warning: Removed 11894 rows containing non-finite values (stat_density).
```

![plot of chunk density](figure/peril_GEOB/density2.png) 


## Clustering

### Replicate Clusters

```r
csDendro(genes(cuff),replicates=T)
```

![plot of chunk replicate clusters](figure/peril_GEOB/replicate clusters.png) 

```
## 'dendrogram' with 2 branches and 4 members total, at height 0.0689
```

### PCA

```r
PCAplot(genes(cuff),"PC2","PC3", replicates=T)
```

![plot of chunk PCA](figure/peril_GEOB/PCA.png) 

### MDS 

```r
MDSplot(genes(cuff),replicates=T)
```

![plot of chunk MDS](figure/peril_GEOB/MDS.png) 

### Distance Heat Map (?not sure it goes here..)

```r
csDistHeat(genes(cuff))
```

![plot of chunk R distance heatmap](figure/peril_GEOB/R distance heatmap1.png) 

```r
csDistHeat(genes(cuff), replicates=T)
```

![plot of chunk R distance heatmap](figure/peril_GEOB/R distance heatmap2.png) 


# KO assessment

```
## Error: RS-DBI driver: (error in statement: near ")": syntax error)
```

```
## Error: error in evaluating the argument 'object' in selecting a method for function 'annotation': Error: object 'sigGenes' not found
```

## Endogenous lncRNA expression

```r
myGeneID<-LINCRNA
myGene<-getGene(cuff, myGeneID)
```

```
## Error: invalid class "CuffGene" object: FALSE
```

```r
fpkm(myGene)
```

```
## Error: error in evaluating the argument 'object' in selecting a method for function 'fpkm': Error: object 'myGene' not found
```

```r
fpkm(isoforms(myGene))
```

```
## Error: error in evaluating the argument 'object' in selecting a method for function 'fpkm': Error in isoforms(myGene) : 
##   error in evaluating the argument 'object' in selecting a method for function 'isoforms': Error: object 'myGene' not found
```

```r
expressionPlot(myGene)
```

```
## Error: error in evaluating the argument 'object' in selecting a method for function 'expressionPlot': Error: object 'myGene' not found
```

```r
expressionPlot(myGene, replicates=TRUE)
```

```
## Error: error in evaluating the argument 'object' in selecting a method for function 'expressionPlot': Error: object 'myGene' not found
```

```r
expressionPlot(isoforms(myGene))
```

```
## Error: error in evaluating the argument 'object' in selecting a method for function 'expressionPlot': Error in isoforms(myGene) : 
##   error in evaluating the argument 'object' in selecting a method for function 'isoforms': Error: object 'myGene' not found
```

```r
expressionPlot(isoforms(myGene), replicates=T)
```

```
## Error: error in evaluating the argument 'object' in selecting a method for function 'expressionPlot': Error in isoforms(myGene) : 
##   error in evaluating the argument 'object' in selecting a method for function 'isoforms': Error: object 'myGene' not found
```

```r
expressionPlot(CDS(myGene))
```

```
## Error: error in evaluating the argument 'object' in selecting a method for function 'expressionPlot': Error in CDS(myGene) : 
##   error in evaluating the argument 'object' in selecting a method for function 'CDS': Error: object 'myGene' not found
```

```r
expressionPlot(CDS(myGene),replicates=T)
```

```
## Error: error in evaluating the argument 'object' in selecting a method for function 'expressionPlot': Error in CDS(myGene) : 
##   error in evaluating the argument 'object' in selecting a method for function 'CDS': Error: object 'myGene' not found
```

```r
expressionPlot(TSS(myGene))
```

```
## Error: error in evaluating the argument 'object' in selecting a method for function 'expressionPlot': Error in TSS(myGene) : 
##   error in evaluating the argument 'object' in selecting a method for function 'TSS': Error: object 'myGene' not found
```

```r
expressionPlot(TSS(myGene),replicates=T)
```

```
## Error: error in evaluating the argument 'object' in selecting a method for function 'expressionPlot': Error in TSS(myGene) : 
##   error in evaluating the argument 'object' in selecting a method for function 'TSS': Error: object 'myGene' not found
```

```r
expressionBarplot(myGene)
```

```
## Error: error in evaluating the argument 'object' in selecting a method for function 'expressionBarplot': Error: object 'myGene' not found
```

```r
expressionBarplot(myGene,replicates=T)
```

```
## Error: error in evaluating the argument 'object' in selecting a method for function 'expressionBarplot': Error: object 'myGene' not found
```

```r
expressionBarplot(isoforms(myGene))     
```

```
## Error: error in evaluating the argument 'object' in selecting a method for function 'expressionBarplot': Error in isoforms(myGene) : 
##   error in evaluating the argument 'object' in selecting a method for function 'isoforms': Error: object 'myGene' not found
```

```r
expressionBarplot(isoforms(myGene), replicates=T)
```

```
## Error: error in evaluating the argument 'object' in selecting a method for function 'expressionBarplot': Error in isoforms(myGene) : 
##   error in evaluating the argument 'object' in selecting a method for function 'isoforms': Error: object 'myGene' not found
```

```r
#include isoform/promoter etc here!!
```


## LacZ expression

```r
myGeneID<-LacZ
```

```
## Error: object 'LacZ' not found
```

```r
myGene<-getGene(cuff, myGeneId)
```

```
## Error: object 'myGeneId' not found
```

```r
fpkm(myGene)
```

```
## Error: error in evaluating the argument 'object' in selecting a method for function 'fpkm': Error: object 'myGene' not found
```

```r
fpkm(isoforms(myGene))
```

```
## Error: error in evaluating the argument 'object' in selecting a method for function 'fpkm': Error in isoforms(myGene) : 
##   error in evaluating the argument 'object' in selecting a method for function 'isoforms': Error: object 'myGene' not found
```

```r
expressionPlot(myGene)
```

```
## Error: error in evaluating the argument 'object' in selecting a method for function 'expressionPlot': Error: object 'myGene' not found
```

```r
expressionPlot(myGene, replicates=TRUE)
```

```
## Error: error in evaluating the argument 'object' in selecting a method for function 'expressionPlot': Error: object 'myGene' not found
```

```r
expressionPlot(isoforms(myGene))
```

```
## Error: error in evaluating the argument 'object' in selecting a method for function 'expressionPlot': Error in isoforms(myGene) : 
##   error in evaluating the argument 'object' in selecting a method for function 'isoforms': Error: object 'myGene' not found
```

```r
expressionPlot(isoforms(myGene), replicates=T)
```

```
## Error: error in evaluating the argument 'object' in selecting a method for function 'expressionPlot': Error in isoforms(myGene) : 
##   error in evaluating the argument 'object' in selecting a method for function 'isoforms': Error: object 'myGene' not found
```

```r
expressionPlot(CDS(myGene))
```

```
## Error: error in evaluating the argument 'object' in selecting a method for function 'expressionPlot': Error in CDS(myGene) : 
##   error in evaluating the argument 'object' in selecting a method for function 'CDS': Error: object 'myGene' not found
```

```r
expressionPlot(CDS(myGene),replicates=T)
```

```
## Error: error in evaluating the argument 'object' in selecting a method for function 'expressionPlot': Error in CDS(myGene) : 
##   error in evaluating the argument 'object' in selecting a method for function 'CDS': Error: object 'myGene' not found
```

```r
expressionPlot(TSS(myGene))
```

```
## Error: error in evaluating the argument 'object' in selecting a method for function 'expressionPlot': Error in TSS(myGene) : 
##   error in evaluating the argument 'object' in selecting a method for function 'TSS': Error: object 'myGene' not found
```

```r
expressionPlot(TSS(myGene),replicates=T)
```

```
## Error: error in evaluating the argument 'object' in selecting a method for function 'expressionPlot': Error in TSS(myGene) : 
##   error in evaluating the argument 'object' in selecting a method for function 'TSS': Error: object 'myGene' not found
```

```r
expressionBarplot(myGene)
```

```
## Error: error in evaluating the argument 'object' in selecting a method for function 'expressionBarplot': Error: object 'myGene' not found
```

```r
expressionBarplot(myGene,replicates=T)
```

```
## Error: error in evaluating the argument 'object' in selecting a method for function 'expressionBarplot': Error: object 'myGene' not found
```

```r
expressionBarplot(isoforms(myGene))     
```

```
## Error: error in evaluating the argument 'object' in selecting a method for function 'expressionBarplot': Error in isoforms(myGene) : 
##   error in evaluating the argument 'object' in selecting a method for function 'isoforms': Error: object 'myGene' not found
```

```r
expressionBarplot(isoforms(myGene), replicates=T)
```

```
## Error: error in evaluating the argument 'object' in selecting a method for function 'expressionBarplot': Error in isoforms(myGene) : 
##   error in evaluating the argument 'object' in selecting a method for function 'isoforms': Error: object 'myGene' not found
```


## Digital Genotyping (LacZ vs Endogenous lncRNA and Sex)

```r
genotypingGeneIDs<-c(LINCRNA,"LacZ","Eif2s3y")
genotypingGenes<-getGenes(cuff,genotypingGeneIDs)
       
expressionBarplot(genotypingGenes)
```

```
## Scale for 'colour' is already present. Adding another scale for 'colour', which will replace the existing scale.
## ymax not defined: adjusting position using y instead
```

![plot of chunk Digital Genotyping](figure/peril_GEOB/Digital Genotyping1.png) 

```r
expressionBarplot(genotypingGenes,replicates=T)
```

```
## Scale for 'colour' is already present. Adding another scale for 'colour', which will replace the existing scale.
## ymax not defined: adjusting position using y instead
```

![plot of chunk Digital Genotyping](figure/peril_GEOB/Digital Genotyping2.png) 


# Differential Analysis


## Differential Genes
There are 0 significantly differentially expressed genes. They are:

```r
print(xtable(geneAnnot$gene_short_name),type="html")
```

```
## Error: object 'geneAnnot' not found
```

```r
#print(xtable((fpkmMatrix(sigPCGenes))),type = "html", include.rownames = T)
```

### Matrix of gene significant differences between conditions

```r
sigMatrix(cuff, level="genes", alpha=alpha)
```

![plot of chunk sigMatrix](figure/peril_GEOB/sigMatrix1.png) 

```r
sigMatrix(cuff, level="genes", alpha=alpha, replicates=T)
```

```
## Error: unused argument (replicates = T)
```

```r
sigMatrix(cuff, level="isoforms",alpha=alpha)
```

![plot of chunk sigMatrix](figure/peril_GEOB/sigMatrix2.png) 

```r
sigMatrix(cuff, level="isoforms",alpha=alpha, replicates=T)       
```

```
## Error: unused argument (replicates = T)
```

### Replicate Clustering by significant genes 

```r
csDendro(sigGenes, replicates=T)
```

```
## Error: error in evaluating the argument 'object' in selecting a method for function 'csDendro': Error: object 'sigGenes' not found
```

### Significant gene expression differences between conditions


```r
csHeatmap(sigGenes, cluster="both",replicates=T)
```

```
## Error: error in evaluating the argument 'object' in selecting a method for function 'csHeatmap': Error: object 'sigGenes' not found
```

```r
expressionPlot(sigGenes)
```

```
## Error: error in evaluating the argument 'object' in selecting a method for function 'expressionPlot': Error: object 'sigGenes' not found
```

```r
       #MOAR PLOTS! 
```


### Expression-level significance relationship

```r
csScatter(sigGenes, "wt", "ko", smooth=T)
```

```
## Error: error in evaluating the argument 'object' in selecting a method for function 'csScatter': Error: object 'sigGenes' not found
```

```r
csVolcano(sigGenes, "wt", "ko")
```

```
## Error: error in evaluating the argument 'object' in selecting a method for function 'csVolcano': Error: object 'sigGenes' not found
```

## Differential Splicing

### Differential Isoforms between conditions
Per isoform difference between conditions:

```r
isoformSigIDs<-getSig(cuff,level="isoforms",alpha=0.1)
isoformSigGenes<-getGenes(cuff,isoformSigIDs)
```

```
## Error: RS-DBI driver: (error in statement: near ")": syntax error)
```

```r
isoAnnot<-annotation(isoformSigGenes)
```

```
## Error: error in evaluating the argument 'object' in selecting a method for function 'annotation': Error: object 'isoformSigGenes' not found
```

```r
print(xtable(isoAnnot$gene_short_name),type="html")
```

```
## Error: object 'isoAnnot' not found
```

### Differential Splicing between conditions
Per condition differences in isoforms #Does gene have diff piechart between conditions

```r
splicingSigIDs<-getSig(cuff,level="splicing",alpha=0.05)
splicingSigGenes<-getGenes(cuff,splicingSigIDs)
```

```
## Error: RS-DBI driver: (error in statement: near ")": syntax error)
```

```r
spliceAnnot<-annotation(splicingSigGenes)
```

```
## Error: error in evaluating the argument 'object' in selecting a method for function 'annotation': Error: object 'splicingSigGenes' not found
```

```r
print(xtable(as.data.frame(spliceAnnot$gene_short_name)), type="html")
```

```
## Error: error in evaluating the argument 'x' in selecting a method for function 'as.data.frame': Error: object 'spliceAnnot' not found
```

```r
#Print csPie chart pannel
#how to make ggplot panel? 
#for(gene %in% splicingSigGenes){
#  csPie(cuff,gene) 
#}

#splicing.unique.IDs<-setdiff(annotation(splicingSigGenes)$gene_id#,annotation(sigGenes)$gene_id)
#splicing.unique.IDs

#pdf("sigSplicing_heatmap.pdf",width=10,height=20)
csHeatmap(isoforms(splicingSigGenes),cluster='row',method=dist)
```

```
## Error: error in evaluating the argument 'object' in selecting a method for function 'csHeatmap': Error in isoforms(splicingSigGenes) : 
##   error in evaluating the argument 'object' in selecting a method for function 'isoforms': Error: object 'splicingSigGenes' not found
```

```r
csHeatmap(isoforms(isoformSigGenes),cluster='row',method=dist)
```

```
## Error: error in evaluating the argument 'object' in selecting a method for function 'csHeatmap': Error in isoforms(isoformSigGenes) : 
##   error in evaluating the argument 'object' in selecting a method for function 'isoforms': Error: object 'isoformSigGenes' not found
```

```r
  #IS THIS DIFFERENTIAL BETWEEN WT/KO OR ISOFORMS? WHETHER IN ONE CONDITION OR BOTH?
#dev.off()
```



## Differential Promoter usage (isoforms by tss)


```r
tssSigIDs<-getSig(cuff,alpha=0.1,level="TSS")
tssSigGenes<-getGenes(cuff,tssSigIDs)
```

```
## Error: RS-DBI driver: (error in statement: near ")": syntax error)
```

```r
#promoter.unique.IDs<-setdiff(annotation(sigPromoterGenes)$gene_id,annotation(sigGenes)$gene_id)
#promoter.unique.IDs

id<-tssSigIDs[19]
gene<-getGene(cuff,id)
```

```
## Error: invalid class "CuffGene" object: FALSE
```

```r
csPie(gene) #how can you get a significantly different promoter but with no isoform diff? 
```

```
## Error: unable to find an inherited method for function 'csPie' for
## signature '"standardGeneric"'
```

```r
csHeatmap(tssSigGenes,cluster='row',method=dist)
```

```
## Error: error in evaluating the argument 'object' in selecting a method for function 'csHeatmap': Error: object 'tssSigGenes' not found
```

```r
#for(id %in% sigPromoterIDs){
#  gene<-getGene(cuff,id)
#  csPie(gene)
#}
```

## Differential Promoter Usage (By "Promoters")


```r
promoterSigIDs<-getSig(cuff,alpha=0.1,level="promoters")

promoterSigGenes<-getGenes(cuff,promoterSigIDs)
```

```
## Error: RS-DBI driver: (error in statement: near ")": syntax error)
```

```r
#promoter.unique.IDs<-setdiff(annotation(sigPromoterGenes)$gene_id,annotation(sigGenes)$gene_id)

#promoter.unique.IDs

pdf("sigPromoter_heatmap.pdf",width=10,height=20)
csHeatmap(promoterSigGenes,cluster='row',method=dist)
```

```
## Error: error in evaluating the argument 'object' in selecting a method for function 'csHeatmap': Error: object 'promoterSigGenes' not found
```

```r
dev.off()
```

```
## pdf 
##   2
```

## Differential CDS? (unique protein coding isoforms)

```r
cdsSigIDs<-getSig(cuff,alpha=0.1,level="CDS")
#sigCDSIDs<-getSig(cuff,alpha=0.1,level="CDS")
cdsSigGenes<-getGenes(cuff,cdsSigIDs)
```

```
## Error: RS-DBI driver: (error in statement: near ")": syntax error)
```

```r
relcdsSigIDs<-getSig(cuff,alpha=0.1,level="relCDS")
relcdsSigGenes<-getGenes(cuff,relcdsSigIDs)
```

```
## Error: RS-DBI driver: (error in statement: near ")": syntax error)
```

```r
#CDS.unique.IDs<-setdiff(annotation(sigCDSGenes)$gene_id,annotation(sigGenes)$gene_id)
#CDS.unique.IDs

pdf("sigCDS_heatmap.pdf",width=10,height=20)
csHeatmap(cdsSigGenes,cluster='row',method=dist)
```

```
## Error: error in evaluating the argument 'object' in selecting a method for function 'csHeatmap': Error: object 'cdsSigGenes' not found
```

```r
dev.off()
```

```
## pdf 
##   2
```




## Venn diagram overview of Differential changes

```r
# Make venn diagram of DE genes, DE splicing, DE promoters, DE relCDS (See figure 2)

#install.packages("tiff")
#library(tiff)
require(VennDiagram)
```

```
## Loading required package: VennDiagram
```

```r
venn<-venn.diagram(list(
    'Genes'=sigGeneIDs,
    'Splicing'=splicingSigIDs,
    'Isoforms'=isoformSigIDs,
    'Promoters'=promoterSigIDs,
    'TSS'=tssSigIDs),filename=NULL)
```

```
## Error: object 'sigGeneIDs' not found
```

```r
#'CDS'=cdsSigIDs,
#'relCDS'=relcdsSigIDs
```


# Gene/Pathway Analysis

## GSEA


```r
population<-genes(cuff)
population.diff<-diffData(population)
annotation<-annotation(genes(cuff))
gene_names<-merge(annotation,population.diff)

gene_set_index <- function(genelist, short_names){
  which(short_names %in% genelist)   
}

get_gene_set_p_vals <- function(input, gs, alternative){
  gene_set_indices <- lapply(gs$genesets, function(short_name){
    gene_set_index(input$short_name, short_name)
    })
  pvl<-lapply(gene_set_indices,geneSetTest,input$test_stat, alternative=alternative)
  pvl_mat<-as.data.frame(t(unlist(pvl)))
  colnames(pvl_mat) <- gs$geneset.names
   return(pvl_mat)
}
 
get_gene_set_q_vals <- function(pvl_mat, method="bonferroni"){
	comp_corrected <- matrix(p.adjust(pvl_mat, method=method), nrow=nrow(pvl_mat), ncol=ncol(pvl_mat))
	colnames(comp_corrected) <- colnames(pvl_mat)
	rownames(comp_corrected) <- rownames(pvl_mat)
	return(comp_corrected)
}

colMins<-function(x){
  apply(x,2,min)
}
rowMins<-function(x){
  apply(x,1,min)
}
 
InputCols<-maPalette(low="white",high="red",k=100)
```


```r
df.pop<-data.frame("short_name"=toupper(gene_names$gene_short_name),"test_stat"=gene_names$test_stat)
row.names(df.pop)=population.diff$gene_id
df.pop.ordered<-df.pop[order(df.pop$test_stat),]
Input.df<-df.pop.ordered

reactome_pvl_mat <- get_gene_set_p_vals(Input.df, reactome_gs,alternative="mixed")
reactome_pvl_corrected <- get_gene_set_q_vals(reactome_pvl_mat)
reactome_pvl_corrected<-rbind(reactome_pvl_corrected,reactome_pvl_corrected)

biocarta_pvl_mat <- get_gene_set_p_vals(Input.df, biocarta_gs, alternative="mixed")
biocarta_pvl_corrected <- get_gene_set_q_vals(biocarta_pvl_mat)
biocarta_pvl_corrected<-rbind(biocarta_pvl_corrected,biocarta_pvl_corrected)


#two options, print as pdf, and adjust size in separate code block
#make minimum height and then increment scaled by number of rows to return 

heatmap.2(-log10(t(biocarta_pvl_corrected[,which(colMins(biocarta_pvl_corrected) < 0.01)])), trace="none", margins=c(5,30),col=InputCols,dendrogram="both",lhei = c(0.1,0.90))
```

```
## Error: figure margins too large
```

![plot of chunk unnamed-chunk-5](figure/peril_GEOB/unnamed-chunk-5.png) 

```r
heatmap.2(-log10(t(reactome_pvl_corrected[,which(colMins(reactome_pvl_corrected) < 0.01)])), trace="none", margins=c(5,30),col=InputCols,dendrogram="both",lhei = c(0.1,0.90))
```

```
## Error: NaN dissimilarity value.
```

## GO enrichment (cluster profiler?)



```r
geneNames<-geneAnnot$gene_short_name
```

```
## Error: object 'geneAnnot' not found
```

```r
# Top genes by test stat
#diff<-diffData(genes(cuff))
#diff<-diff[order(abs(diff$test_stat),decreasing=TRUE),]
#top_genes<-diff[which(diff$p_value<0.1),]
#top_genes_annot<-merge(top_genes,population)
#geneNames<-top_genes_annot$gene_short_name
```

biomart to get entrez gene IDS
clusterProfiler does GO enrichment 

BP, MF, CC

enrichKEGG
enrichDO
enrichPathway
groupGO






```r
goBP<-enrichGO(gene=sigEZ, organism="mouse",ont="BP",pvalueCutoff=0.01,readable=T)
```

```
## Error: could not find function "enrichGO"
```

```r
goMF<-enrichGO(gene=sigEZ, organism="mouse",ont="MF",pvalueCutoff=0.01,readable=T)
```

```
## Error: could not find function "enrichGO"
```

```r
goCC<-enrichGO(gene=sigEZ, organism="mouse",ont="CC",pvalueCutoff=0.01,readable=T)
```

```
## Error: could not find function "enrichGO"
```

```r
#kegg<-enrichKEGG(gene=sigEZ, organism="mouse",pvalueCutoff=0.01, readable=T)

#disease<-enrichDO(gene=sigEZ, organism="mouse",pvalueCutoff=0.01, readable=T)

#pathway<-enrichPathway(gene=sigEZ,organism="mouse",pvalueCutoff=0.01, readable=T)
```


```r
#Simple method
#plot(goBP)
#plot(goMF)
#plot(goCC)

#Visualizing w clusterProfiler
#barplot(goBP, drop = TRUE, showCategory = 12)
#barplot(goBP, showCategory = 12)
#barplot(goMF,showCategory=12)
#barplot(goCC, showCategory=12)

#WHY DONT THESE FUNCTIONS WORK? 
#cnetplot(goBP, categorySize = "pvalue", foldChange = geneList)
#cnetplot(goBP, categorySize = "geneNum", foldChange = geneList)

#cluster.enrichKEGG<-compareCluster(sigEZ,fun="enrichKEGG",organism="mouse",qvalueCutoff=0.01)
#require(ReactomePA)
#cluster.enrichPathway<-compareCluster(sigEntrezNames,fun="enrichPathway",qvalueCutoff=0.01)

plot(goBP,showCategory=10) + theme(axis.text.x=element_text(angle=-90,hjust=0)) + ggtitle("Enriched BP")
```

```
## Error: object 'goBP' not found
```

```r
plot(goMF,showCategory=10) + theme(axis.text.x=element_text(angle=-90,hjust=0)) + ggtitle("Enriched MF")
```

```
## Error: object 'goMF' not found
```

```r
plot(goCC,showCategory=10) + theme(axis.text.x=element_text(angle=-90,hjust=0)) + ggtitle("Enriched CC")
```

```
## Error: object 'goCC' not found
```

```r
#plot(cluster.enrichKEGG,showCategory=10) + theme(axis.text.x=element_text(angle=-90,hjust=0)) + ggtitle("Enriched KEGG")
#plot(cluster.enrichPathway,showCategory=20) + theme(axis.text.x=element_text(angle=-90,hjust=0)) + ggtitle("Enriched Reactome")

detach("package:biomaRt")
```

```
## Error: invalid 'name' argument
```



# Cis vs Trans (locally)

```r
window<-1000000
```


# Transcription Factor binding enrichment (for sigdiff genes...?)


# Interesting Genes
Hand pick these after initial round of analysis?

# Notes

# Session Info

```r
sessionInfo()
```

```
## R version 3.0.2 (2013-09-25)
## Platform: x86_64-unknown-linux-gnu (64-bit)
## 
## locale:
##  [1] LC_CTYPE=en_US.UTF-8       LC_NUMERIC=C              
##  [3] LC_TIME=en_US.UTF-8        LC_COLLATE=en_US.UTF-8    
##  [5] LC_MONETARY=en_US.UTF-8    LC_MESSAGES=en_US.UTF-8   
##  [7] LC_PAPER=en_US.UTF-8       LC_NAME=C                 
##  [9] LC_ADDRESS=C               LC_TELEPHONE=C            
## [11] LC_MEASUREMENT=en_US.UTF-8 LC_IDENTIFICATION=C       
## 
## attached base packages:
## [1] grid      parallel  stats     graphics  grDevices utils     datasets 
## [8] methods   base     
## 
## other attached packages:
##  [1] VennDiagram_1.6.5    mgcv_1.7-29          nlme_3.1-117        
##  [4] marray_1.40.0        gplots_2.13.0        GSA_1.03            
##  [7] limma_3.18.13        xtable_1.7-3         cummeRbund_2.7.2    
## [10] Gviz_1.6.0           rtracklayer_1.22.7   GenomicRanges_1.14.4
## [13] XVector_0.2.0        IRanges_1.20.7       fastcluster_1.1.13  
## [16] reshape2_1.4         ggplot2_1.0.0        RSQLite_0.11.4      
## [19] DBI_0.2-7            BiocGenerics_0.8.0   knitr_1.6           
## 
## loaded via a namespace (and not attached):
##  [1] AnnotationDbi_1.24.0   Biobase_2.22.0         biomaRt_2.18.0        
##  [4] Biostrings_2.30.1      biovizBase_1.10.8      bitops_1.0-6          
##  [7] BSgenome_1.30.0        caTools_1.17           cluster_1.15.2        
## [10] codetools_0.2-8        colorspace_1.2-4       dichromat_2.0-0       
## [13] digest_0.6.4           evaluate_0.5.5         formatR_0.10          
## [16] Formula_1.1-1          gdata_2.13.3           GenomicFeatures_1.14.5
## [19] gtable_0.1.2           gtools_3.4.1           Hmisc_3.14-4          
## [22] KernSmooth_2.23-12     labeling_0.2           lattice_0.20-29       
## [25] latticeExtra_0.6-26    markdown_0.7           MASS_7.3-33           
## [28] Matrix_1.1-3           mime_0.1.1             munsell_0.4.2         
## [31] plyr_1.8.1             proto_0.3-10           RColorBrewer_1.0-5    
## [34] Rcpp_0.11.1            RCurl_1.95-4.1         Rsamtools_1.14.3      
## [37] scales_0.2.4           splines_3.0.2          stats4_3.0.2          
## [40] stringr_0.6.2          survival_2.37-7        tools_3.0.2           
## [43] XML_3.98-1.1           zlibbioc_1.8.0
```

#Run Info

```r
runInfo(cuff)
```

```
##           param
## 1      cmd_line
## 2       version
## 3  SVN_revision
## 4 boost_version
##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                value
## 1 cuffdiff -p 8 -o /n/rinn_data1/users/agroff/seq/PERIL/data/diffs/cuffdiff_v221_newgtf/GE_OB -L wt,ko /n/rinn_data1/users/agroff/annotation/mm9/ucsc_no_noncoding_AND_lincdb2.gtf /n/rinn_data1/users/agroff/seq/PERIL/data/bams/Sample_JR710_Peril_L46_E14-5_GE_and_OB_wtm1_ATCACG/accepted_hits.bam,/n/rinn_data1/users/agroff/seq/PERIL/data/bams/Sample_JR712_Peril_L46_E14-5_GE_and_OB_wtm3_TTAGGC/accepted_hits.bam /n/rinn_data1/users/agroff/seq/PERIL/data/bams/Sample_JR711_Peril_L46_E14-5_GE_and_OB_kof2_CGATGT/accepted_hits.bam,/n/rinn_data1/users/agroff/seq/PERIL/data/bams/Sample_JR713_Peril_L46_E14-5_GE_and_OB_kof_7_TGACCA/accepted_hits.bam 
## 2                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              2.2.1
## 3                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               4237
## 4                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             104700
```
