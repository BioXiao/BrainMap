peril_GEOB KO vs WT (Embryonic)
======================================

# questions
- overdispersion
- how do we rescale these plots? or just axes?
- add labels, descriptions
- turn off all caching 
- general figure formatting/table formatting 






# Intialize


# Design Overview

This file shows the wt-v-ko comparison for peril_GEOB. 

Samples used are:
<!-- html table generated in R 3.0.2 by xtable 1.7-3 package -->
<!-- Fri Jun 13 13:08:12 2014 -->
<TABLE border=1>
<TR> <TH>  </TH> <TH> 9 </TH>  </TR>
  <TR> <TD align="right"> c......n....rinn_data1....users....agroff....seq....PERIL....data... </TD> <TD> bams </TD> </TR>
  <TR> <TD align="right"> c......n....rinn_data1....users....agroff....seq....PERIL....data....1 </TD> <TD> bams </TD> </TR>
  <TR> <TD align="right"> c......n....rinn_data1....users....agroff....seq....PERIL....data....2 </TD> <TD> bams </TD> </TR>
  <TR> <TD align="right"> c......n....rinn_data1....users....agroff....seq....PERIL....data....3 </TD> <TD> bams </TD> </TR>
   </TABLE>


Cuff overview:

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

## Replicates
<!-- html table generated in R 3.0.2 by xtable 1.7-3 package -->
<!-- Fri Jun 13 13:08:13 2014 -->
<TABLE border=1>
<TR> <TH>  </TH> <TH> file </TH> <TH> sample_name </TH> <TH> replicate </TH> <TH> rep_name </TH> <TH> total_mass </TH> <TH> norm_mass </TH> <TH> internal_scale </TH> <TH> external_scale </TH>  </TR>
  <TR> <TD align="right"> 1 </TD> <TD> /n/rinn_data1/users/agroff/seq/PERIL/data/bams/Sample_JR710_Peril_L46_E14-5_GE_and_OB_wtm1_ATCACG/accepted_hits.bam </TD> <TD> wt </TD> <TD align="right">   0 </TD> <TD> wt_0 </TD> <TD align="right"> 19373200.00 </TD> <TD align="right"> 21401800.00 </TD> <TD align="right"> 0.90 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 2 </TD> <TD> /n/rinn_data1/users/agroff/seq/PERIL/data/bams/Sample_JR712_Peril_L46_E14-5_GE_and_OB_wtm3_TTAGGC/accepted_hits.bam </TD> <TD> wt </TD> <TD align="right">   1 </TD> <TD> wt_1 </TD> <TD align="right"> 17389200.00 </TD> <TD align="right"> 21401800.00 </TD> <TD align="right"> 0.82 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 3 </TD> <TD> /n/rinn_data1/users/agroff/seq/PERIL/data/bams/Sample_JR711_Peril_L46_E14-5_GE_and_OB_kof2_CGATGT/accepted_hits.bam </TD> <TD> ko </TD> <TD align="right">   0 </TD> <TD> ko_0 </TD> <TD align="right"> 31892200.00 </TD> <TD align="right"> 21401800.00 </TD> <TD align="right"> 1.49 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 4 </TD> <TD> /n/rinn_data1/users/agroff/seq/PERIL/data/bams/Sample_JR713_Peril_L46_E14-5_GE_and_OB_kof_7_TGACCA/accepted_hits.bam </TD> <TD> ko </TD> <TD align="right">   1 </TD> <TD> ko_1 </TD> <TD align="right"> 19646900.00 </TD> <TD align="right"> 21401800.00 </TD> <TD align="right"> 0.91 </TD> <TD align="right"> 1.00 </TD> </TR>
   </TABLE>

# QC

## Dispersion

This shows count (WHAT IS COUNT? fragment counts? per gene?) vs dispersion (of those counts), or the spread in measurements for a particular gene across replicates. 

from cummerbund manual: Overdispersion is a common problem in RNA-Seq data. As of cufflinks v2.0 mean counts, variance, and dispersion are all emitted, allowing you to visualize the estimated overdispersion for each sample as a quality control measure. - See more at: http://compbio.mit.edu/cummeRbund/manual_2_0.html#sthash.9YRYxwRV.dpuf



```
## Warning: RS-DBI driver warning: (closing pending result sets before
## closing this connection)
```

![plot of chunk dispersion](figure/peril_GEOB/dispersion.png) 

## Cross-replicate variability (fpkmSCVplot)
The squared coefficient of variation is a normalized measure of cross replicate variability that can be useful for evaluating the quality your RNA-seq data. Differences in CV 2 can result in lower numbers of differentially expressed genes due to a higher degree of variability between replicate fpkm estimates.

Genes:

```
## Scale for 'x' is already present. Adding another scale for 'x', which will replace the existing scale.
## geom_smooth: method="auto" and size of largest group is >=1000, so using gam with formula: y ~ s(x, bs = "cs"). Use 'method = x' to change the smoothing method.
```

![plot of chunk CV genes](figure/peril_GEOB/CV genes.png) 


Isoforms: 

```
## Scale for 'x' is already present. Adding another scale for 'x', which will replace the existing scale.
## geom_smooth: method="auto" and size of largest group is >=1000, so using gam with formula: y ~ s(x, bs = "cs"). Use 'method = x' to change the smoothing method.
```

![plot of chunk cv iso](figure/peril_GEOB/cv iso.png) 

## Volcano
![plot of chunk volcano](figure/peril_GEOB/volcano.png) 

### Volcano matrix (replicates)
![plot of chunk volcano matrix](figure/peril_GEOB/volcano matrix.png) 

## MvA plot

```
## Warning: Removed 8993 rows containing missing values (geom_point).
```

![plot of chunk MvA](figure/peril_GEOB/MvA.png) 
   
### MvA plot counts

```
## Warning: Removed 8993 rows containing missing values (geom_point).
```

![plot of chunk MvA counts](figure/peril_GEOB/MvA counts.png) 

## Scatterplot
![plot of chunk scatterplot](figure/peril_GEOB/scatterplot.png) 

### Scatter matrix (replicates)
![plot of chunk scatterplot matrix](figure/peril_GEOB/scatterplot matrix.png) 


## Distributions

### Boxplot
![plot of chunk boxplot](figure/peril_GEOB/boxplot1.png) ![plot of chunk boxplot](figure/peril_GEOB/boxplot2.png) ![plot of chunk boxplot](figure/peril_GEOB/boxplot3.png) 

### Density

```
## Warning: Removed 10546 rows containing non-finite values (stat_density).
## Warning: Removed 9958 rows containing non-finite values (stat_density).
```

![plot of chunk density](figure/peril_GEOB/density1.png) 

```
## Warning: Removed 11794 rows containing non-finite values (stat_density).
## Warning: Removed 11938 rows containing non-finite values (stat_density).
## Warning: Removed 10770 rows containing non-finite values (stat_density).
## Warning: Removed 11894 rows containing non-finite values (stat_density).
```

![plot of chunk density](figure/peril_GEOB/density2.png) 


## Clustering

### Replicate Clusters
![plot of chunk replicate clusters](figure/peril_GEOB/replicate clusters.png) 

```
## 'dendrogram' with 2 branches and 4 members total, at height 0.0689
```

### PCA
![plot of chunk PCA](figure/peril_GEOB/PCA.png) 

### MDS 
![plot of chunk MDS](figure/peril_GEOB/MDS.png) 

### Distance Heat Map
![plot of chunk R distance heatmap](figure/peril_GEOB/R distance heatmap.png) 


# KO assessment

## Endogenous lncRNA expression

```
## Error: invalid class "CuffGene" object: FALSE
```

```
## Error: error in evaluating the argument 'object' in selecting a method for function 'fpkm': Error: object 'myGene' not found
```

```
## Error: error in evaluating the argument 'object' in selecting a method for function 'fpkm': Error in isoforms(myGene) : 
##   error in evaluating the argument 'object' in selecting a method for function 'isoforms': Error: object 'myGene' not found
```

```
## Error: error in evaluating the argument 'object' in selecting a method for function 'expressionPlot': Error: object 'myGene' not found
```

```
## Error: error in evaluating the argument 'object' in selecting a method for function 'expressionPlot': Error: object 'myGene' not found
```

```
## Error: error in evaluating the argument 'object' in selecting a method for function 'expressionPlot': Error in isoforms(myGene) : 
##   error in evaluating the argument 'object' in selecting a method for function 'isoforms': Error: object 'myGene' not found
```

```
## Error: error in evaluating the argument 'object' in selecting a method for function 'expressionPlot': Error in isoforms(myGene) : 
##   error in evaluating the argument 'object' in selecting a method for function 'isoforms': Error: object 'myGene' not found
```

```
## Error: error in evaluating the argument 'object' in selecting a method for function 'expressionBarplot': Error: object 'myGene' not found
```

```
## Error: error in evaluating the argument 'object' in selecting a method for function 'expressionBarplot': Error: object 'myGene' not found
```

```
## Error: error in evaluating the argument 'object' in selecting a method for function 'expressionBarplot': Error in isoforms(myGene) : 
##   error in evaluating the argument 'object' in selecting a method for function 'isoforms': Error: object 'myGene' not found
```

```
## Error: error in evaluating the argument 'object' in selecting a method for function 'expressionBarplot': Error in isoforms(myGene) : 
##   error in evaluating the argument 'object' in selecting a method for function 'isoforms': Error: object 'myGene' not found
```


## LacZ expression

```
## Error: object 'LacZ' not found
```

```
## Error: object 'myGeneId' not found
```

```
## Error: error in evaluating the argument 'object' in selecting a method for function 'fpkm': Error: object 'myGene' not found
```

```
## Error: error in evaluating the argument 'object' in selecting a method for function 'expressionPlot': Error: object 'myGene' not found
```

```
## Error: error in evaluating the argument 'object' in selecting a method for function 'expressionPlot': Error: object 'myGene' not found
```

```
## Error: error in evaluating the argument 'object' in selecting a method for function 'expressionBarplot': Error: object 'myGene' not found
```

```
## Error: error in evaluating the argument 'object' in selecting a method for function 'expressionBarplot': Error: object 'myGene' not found
```


## Digital Genotyping (LacZ vs Endogenous lncRNA and Sex)

```
## Scale for 'colour' is already present. Adding another scale for 'colour', which will replace the existing scale.
## ymax not defined: adjusting position using y instead
```

![plot of chunk Digital Genotyping](figure/peril_GEOB/Digital Genotyping1.png) 

```
## Scale for 'colour' is already present. Adding another scale for 'colour', which will replace the existing scale.
## ymax not defined: adjusting position using y instead
```

![plot of chunk Digital Genotyping](figure/peril_GEOB/Digital Genotyping2.png) 


# Differential Analysis

## Differential Genes 


```
## Error: RS-DBI driver: (error in statement: near ")": syntax error)
```

```
## Error: error in evaluating the argument 'object' in selecting a method for function 'annotation': Error: object 'sigGenes' not found
```

There are 0 significantly differentially expressed genes. They are:


```
## Error: object 'geneAnnot' not found
```

### Matrix of gene significant differences between conditions
(skip for Brainmap wt-v-ko comparisons)

![plot of chunk sigMatrix](figure/peril_GEOB/sigMatrix.png) 

### Replicate Clustering by significant genes 

```
## Error: error in evaluating the argument 'object' in selecting a method for function 'csDendro': Error: object 'sigGenes' not found
```

### Significant gene expression differences between conditions


```
## Error: error in evaluating the argument 'object' in selecting a method for function 'csHeatmap': Error: object 'sigGenes' not found
```

```
## Error: error in evaluating the argument 'object' in selecting a method for function 'expressionPlot': Error: object 'sigGenes' not found
```

```
## Error: error in evaluating the argument 'object' in selecting a method for function 'expressionBarplot': Error: object 'sigGenes' not found
```

An individual look at each of the significantly differentially regulated genes:


```
## Error: input must be grobs!
```


### Expression-level significance relationship

**Interesting comments n stuff!**


```
## Error: error in evaluating the argument 'object' in selecting a method for function 'csScatter': Error: object 'sigGenes' not found
```

```
## Error: error in evaluating the argument 'object' in selecting a method for function 'csVolcano': Error: object 'sigGenes' not found
```

## Differential Splicing

### Differential Isoforms between conditions
Per isoform difference between conditions:
![plot of chunk diff.iso](figure/peril_GEOB/diff.iso.png) 

```
## Error: RS-DBI driver: (error in statement: near ")": syntax error)
```

```
## Error: error in evaluating the argument 'object' in selecting a method for function 'annotation': Error: object 'isoformSigGenes' not found
```

These isoforms are:

```
## Error: object 'isoAnnot' not found
```


```
## Error: error in evaluating the argument 'object' in selecting a method for function 'csHeatmap': Error in isoforms(isoformSigGenes) : 
##   error in evaluating the argument 'object' in selecting a method for function 'isoforms': Error: object 'isoformSigGenes' not found
```

### Differential Splicing between conditions

Per condition differences in isoforms (Does gene have diff piechart between conditions?)


```
## Error: RS-DBI driver: (error in statement: near ")": syntax error)
```

```
## Error: no slot of name "tables" for this object of class "CuffDist"
```

```
## Error: error in evaluating the argument 'object' in selecting a method for function 'annotation': Error: object 'splicingSigGenes' not found
```

These genes are:

```
## Error: error in evaluating the argument 'x' in selecting a method for function 'as.data.frame': Error: object 'spliceAnnot' not found
```

Splicing heatmap by isoform:

```
## Error: error in evaluating the argument 'object' in selecting a method for function 'csHeatmap': Error in isoforms(splicingSigGenes) : 
##   error in evaluating the argument 'object' in selecting a method for function 'isoforms': Error: object 'splicingSigGenes' not found
```

Splicing heatmap by gene

```
## Error: error in evaluating the argument 'object' in selecting a method for function 'csHeatmap': Error: object 'splicingSigGenes' not found
```

The following are significantly differentially spliced genes (relative portion of isoform per condition): 

# how do we rescale these plots? or just axes?

```
## Error: input must be grobs!
```



 










# Gene/Pathway Analysis

## GSEA






```
## pdf 
##   4
```

```
## Error: invalid graphics state
```


```
## pdf 
##   4
```

```
## Error: invalid graphics state
```

## GO enrichment 
Cluster profiler used to call enichments of significantly differentially regulated genes that map to Entrez IDs. 

Description/explanation of what's here, and justify all choices. 


```
## Error: RS-DBI driver: (error in statement: near ")": syntax error)
```

```
## Error: error in evaluating the argument 'object' in selecting a method for function 'annotation': Error: object 'sigGenes' not found
```

```
## Error: object 'geneAnnot' not found
```

```
## Error: error in evaluating the argument 'object' in selecting a method for function 'diffData': Error: object 'sigGenes' not found
```

```
## Error: object 'sigDiff' not found
```

biomart to get entrez gene IDS
clusterProfiler does GO enrichment 

BP, MF, CC
enrichKEGG
enrichPathway


```
## Loading required package: biomaRt
## 
## Attaching package: 'biomaRt'
## 
## The following object is masked from 'package:cummeRbund':
## 
##     getGene
```

```
## Error: object 'geneNames' not found
```

```
## Error: object 'sigEntrez' not found
```

```
## Error: error in evaluating the argument 'x' in selecting a method for function 'unlist': Error: object 'sigEZ' not found
```


```
## Error: object 'sigEZ' not found
```

```
## Error: object 'sigEZ' not found
```

```
## Error: object 'sigEZ' not found
```

```
## Error: object 'sigEZ' not found
```

```
## Error: object 'sigEZ' not found
```


```
## Error: error in evaluating the argument 'x' in selecting a method for function 'plot': Error: object 'goBP' not found
```

```
## Error: error in evaluating the argument 'x' in selecting a method for function 'plot': Error: object 'goMF' not found
```

```
## Error: error in evaluating the argument 'x' in selecting a method for function 'plot': Error: object 'goCC' not found
```

```
## Error: error in evaluating the argument 'x' in selecting a method for function 'plot': Error: object 'kegg' not found
```

```
## Error: error in evaluating the argument 'x' in selecting a method for function 'plot': Error: object 'pathway' not found
```

# Cis vs Trans (locally)




# Interesting Genes
Hand pick these after initial round of analysis?

# Notes

# Session Info

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
##  [1] VennDiagram_1.6.5      ReactomePA_1.6.1       org.Mm.eg.db_2.10.1   
##  [4] GO.db_2.10.1           DOSE_2.0.0             clusterProfiler_1.13.1
##  [7] AnnotationDbi_1.24.0   Biobase_2.22.0         mgcv_1.7-29           
## [10] nlme_3.1-117           gridExtra_0.9.1        gtable_0.1.2          
## [13] knitr_1.6              marray_1.40.0          gplots_2.13.0         
## [16] GSA_1.03               limma_3.18.13          xtable_1.7-3          
## [19] cummeRbund_2.7.2       Gviz_1.6.0             rtracklayer_1.22.7    
## [22] GenomicRanges_1.14.4   XVector_0.2.0          IRanges_1.20.7        
## [25] fastcluster_1.1.13     reshape2_1.4           ggplot2_1.0.0         
## [28] RSQLite_0.11.4         DBI_0.2-7              BiocGenerics_0.8.0    
## 
## loaded via a namespace (and not attached):
##  [1] biomaRt_2.18.0         Biostrings_2.30.1      biovizBase_1.10.8     
##  [4] bitops_1.0-6           BSgenome_1.30.0        caTools_1.17          
##  [7] cluster_1.15.2         codetools_0.2-8        colorspace_1.2-4      
## [10] dichromat_2.0-0        digest_0.6.4           DO.db_2.7             
## [13] evaluate_0.5.5         formatR_0.10           Formula_1.1-1         
## [16] gdata_2.13.3           GenomicFeatures_1.14.5 GOSemSim_1.20.3       
## [19] graph_1.40.1           graphite_1.8.1         gtools_3.4.1          
## [22] Hmisc_3.14-4           igraph_0.7.1           KEGG.db_2.10.1        
## [25] KernSmooth_2.23-12     labeling_0.2           lattice_0.20-29       
## [28] latticeExtra_0.6-26    MASS_7.3-33            Matrix_1.1-3          
## [31] munsell_0.4.2          org.Hs.eg.db_2.10.1    plyr_1.8.1            
## [34] proto_0.3-10           qvalue_1.36.0          RColorBrewer_1.0-5    
## [37] Rcpp_0.11.1            RCurl_1.95-4.1         reactome.db_1.46.1    
## [40] Rsamtools_1.14.3       scales_0.2.4           splines_3.0.2         
## [43] stats4_3.0.2           stringr_0.6.2          survival_2.37-7       
## [46] tcltk_3.0.2            tools_3.0.2            XML_3.98-1.1          
## [49] zlibbioc_1.8.0
```

#Run Info

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
