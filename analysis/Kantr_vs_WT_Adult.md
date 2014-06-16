Kantr KO vs WT (Adult)
======================================


- add labels, descriptions
- turn off all caching 
- other heatmap labels (csHeatmap)
- overlap figure
- tracks 






# Intialize


# Design Overview

This file shows the wt-v-ko comparison for Kantr. 

Samples used are:
<!-- html table generated in R 3.0.2 by xtable 1.7-3 package -->
<!-- Sun Jun 15 20:09:33 2014 -->
<TABLE border=1>
<TR> <TH>  </TH> <TH> 10 </TH>  </TR>
  <TR> <TD align="right"> 1 </TD> <TD> JR824 </TD> </TR>
  <TR> <TD align="right"> 2 </TD> <TD> JR820 </TD> </TR>
  <TR> <TD align="right"> 3 </TD> <TD> JR821 </TD> </TR>
  <TR> <TD align="right"> 4 </TD> <TD> JR742 </TD> </TR>
  <TR> <TD align="right"> 5 </TD> <TD> JR819 </TD> </TR>
  <TR> <TD align="right"> 6 </TD> <TD> JR823 </TD> </TR>
   </TABLE>


Cuff overview:

```
## CuffSet instance with:
## 	 2 samples
## 	 26754 genes
## 	 77524 isoforms
## 	 0 TSS
## 	 0 CDS
## 	 0 promoters
## 	 0 splicing
## 	 0 relCDS
```

## Replicates
<!-- html table generated in R 3.0.2 by xtable 1.7-3 package -->
<!-- Sun Jun 15 20:09:34 2014 -->
<TABLE border=1>
<TR> <TH>  </TH> <TH> file </TH> <TH> sample_name </TH> <TH> replicate </TH> <TH> rep_name </TH> <TH> total_mass </TH> <TH> norm_mass </TH> <TH> internal_scale </TH> <TH> external_scale </TH>  </TR>
  <TR> <TD align="right"> 1 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR824/abundances.cxb </TD> <TD> WT </TD> <TD align="right">   0 </TD> <TD> WT_0 </TD> <TD align="right"> 34312500.00 </TD> <TD align="right"> 36018100.00 </TD> <TD align="right"> 0.96 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 2 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR820/abundances.cxb </TD> <TD> WT </TD> <TD align="right">   1 </TD> <TD> WT_1 </TD> <TD align="right"> 36264600.00 </TD> <TD align="right"> 36018100.00 </TD> <TD align="right"> 1.01 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 3 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR821/abundances.cxb </TD> <TD> WT </TD> <TD align="right">   2 </TD> <TD> WT_2 </TD> <TD align="right"> 45857300.00 </TD> <TD align="right"> 36018100.00 </TD> <TD align="right"> 1.29 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 4 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR742/abundances.cxb </TD> <TD> Kantr </TD> <TD align="right">   0 </TD> <TD> Kantr_0 </TD> <TD align="right"> 35618600.00 </TD> <TD align="right"> 36018100.00 </TD> <TD align="right"> 0.98 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 5 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR819/abundances.cxb </TD> <TD> Kantr </TD> <TD align="right">   1 </TD> <TD> Kantr_1 </TD> <TD align="right"> 32413300.00 </TD> <TD align="right"> 36018100.00 </TD> <TD align="right"> 0.89 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 6 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR823/abundances.cxb </TD> <TD> Kantr </TD> <TD align="right">   2 </TD> <TD> Kantr_2 </TD> <TD align="right"> 33432600.00 </TD> <TD align="right"> 36018100.00 </TD> <TD align="right"> 0.92 </TD> <TD align="right"> 1.00 </TD> </TR>
   </TABLE>

# QC

## Dispersion

This shows count (WHAT IS COUNT? fragment counts? per gene?) vs dispersion (of those counts), or the spread in measurements for a particular gene across replicates. 

from cummerbund manual: Overdispersion is a common problem in RNA-Seq data. As of cufflinks v2.0 mean counts, variance, and dispersion are all emitted, allowing you to visualize the estimated overdispersion for each sample as a quality control measure. - See more at: http://compbio.mit.edu/cummeRbund/manual_2_0.html#sthash.9YRYxwRV.dpuf



```
## Error: 'from' cannot be NA, NaN or infinite
```

## Cross-replicate variability (fpkmSCVplot)
The squared coefficient of variation is a normalized measure of cross replicate variability that can be useful for evaluating the quality your RNA-seq data. Differences in CV 2 can result in lower numbers of differentially expressed genes due to a higher degree of variability between replicate fpkm estimates.

Genes:

```
## Scale for 'x' is already present. Adding another scale for 'x', which will replace the existing scale.
## geom_smooth: method="auto" and size of largest group is >=1000, so using gam with formula: y ~ s(x, bs = "cs"). Use 'method = x' to change the smoothing method.
```

![plot of chunk CV genes](figure/Kantr/CV genes.png) 


Isoforms: 

```
## Scale for 'x' is already present. Adding another scale for 'x', which will replace the existing scale.
## geom_smooth: method="auto" and size of largest group is >=1000, so using gam with formula: y ~ s(x, bs = "cs"). Use 'method = x' to change the smoothing method.
```

![plot of chunk cv iso](figure/Kantr/cv iso.png) 

## Volcano

```
## Error: One or more values of 'x' or 'y' are not valid sample names!
```

### Volcano matrix (replicates)
![plot of chunk volcano matrix](figure/Kantr/volcano matrix.png) 

## MvA plot

```
## Error: non-numeric argument to binary operator
```
   
### MvA plot counts

```
## Error: non-numeric argument to binary operator
```

## Scatterplot
![plot of chunk scatterplot](figure/Kantr/scatterplot.png) 

### Scatter matrix (replicates) -- SKIP FOR NOW CAUSING PROBLEMS 




## Distributions

### Boxplot
![plot of chunk boxplot](figure/Kantr/boxplot1.png) ![plot of chunk boxplot](figure/Kantr/boxplot2.png) ![plot of chunk boxplot](figure/Kantr/boxplot3.png) 

### Density

```
## Warning: Removed 5378 rows containing non-finite values (stat_density).
## Warning: Removed 5588 rows containing non-finite values (stat_density).
```

![plot of chunk density](figure/Kantr/density1.png) 

```
## Warning: Removed 6638 rows containing non-finite values (stat_density).
## Warning: Removed 6608 rows containing non-finite values (stat_density).
## Warning: Removed 6441 rows containing non-finite values (stat_density).
## Warning: Removed 6727 rows containing non-finite values (stat_density).
## Warning: Removed 6876 rows containing non-finite values (stat_density).
## Warning: Removed 6760 rows containing non-finite values (stat_density).
```

![plot of chunk density](figure/Kantr/density2.png) 


## Clustering

### Replicate Clusters
![plot of chunk replicate clusters](figure/Kantr/replicate clusters.png) 

```
## 'dendrogram' with 2 branches and 6 members total, at height 0.06617
```

### PCA
![plot of chunk PCA](figure/Kantr/PCA.png) 

### MDS 
![plot of chunk MDS](figure/Kantr/MDS.png) 

### Distance Heat Map
![plot of chunk R distance heatmap](figure/Kantr/R distance heatmap.png) 


# KO assessment

## Endogenous lncRNA expression
<!-- html table generated in R 3.0.2 by xtable 1.7-3 package -->
<!-- Sun Jun 15 20:10:42 2014 -->
<TABLE border=1>
<TR> <TH>  </TH> <TH> gene_id </TH> <TH> sample_name </TH> <TH> fpkm </TH> <TH> conf_hi </TH> <TH> conf_lo </TH> <TH> quant_status </TH>  </TR>
  <TR> <TD align="right"> 1 </TD> <TD> ENSMUSG00000087403.2 </TD> <TD> Kantr </TD> <TD align="right"> 0.02 </TD> <TD align="right"> 0.42 </TD> <TD align="right"> 0.00 </TD> <TD> OK </TD> </TR>
  <TR> <TD align="right"> 2 </TD> <TD> ENSMUSG00000087403.2 </TD> <TD> WT </TD> <TD align="right"> 14.10 </TD> <TD align="right"> 17.60 </TD> <TD align="right"> 10.61 </TD> <TD> OK </TD> </TR>
   </TABLE>
<!-- html table generated in R 3.0.2 by xtable 1.7-3 package -->
<!-- Sun Jun 15 20:10:42 2014 -->
<TABLE border=1>
<TR> <TH>  </TH> <TH> isoform_id </TH> <TH> sample_name </TH> <TH> fpkm </TH> <TH> conf_hi </TH> <TH> conf_lo </TH> <TH> quant_status </TH>  </TR>
  <TR> <TD align="right"> 1 </TD> <TD> ENSMUST00000125102.1 </TD> <TD> Kantr </TD> <TD align="right"> 0.00 </TD> <TD align="right"> 0.17 </TD> <TD align="right"> 0.00 </TD> <TD> OK </TD> </TR>
  <TR> <TD align="right"> 2 </TD> <TD> ENSMUST00000135115.1 </TD> <TD> Kantr </TD> <TD align="right"> 0.00 </TD> <TD align="right"> 0.14 </TD> <TD align="right"> 0.00 </TD> <TD> OK </TD> </TR>
  <TR> <TD align="right"> 3 </TD> <TD> ENSMUST00000141922.1 </TD> <TD> Kantr </TD> <TD align="right"> 0.00 </TD> <TD align="right"> 0.15 </TD> <TD align="right"> 0.00 </TD> <TD> OK </TD> </TR>
  <TR> <TD align="right"> 4 </TD> <TD> ENSMUST00000148326.1 </TD> <TD> Kantr </TD> <TD align="right"> 0.02 </TD> <TD align="right"> 0.13 </TD> <TD align="right"> 0.00 </TD> <TD> OK </TD> </TR>
  <TR> <TD align="right"> 5 </TD> <TD> ENSMUST00000149098.1 </TD> <TD> Kantr </TD> <TD align="right"> 0.00 </TD> <TD align="right"> 0.12 </TD> <TD align="right"> 0.00 </TD> <TD> OK </TD> </TR>
  <TR> <TD align="right"> 6 </TD> <TD> ENSMUST00000154085.1 </TD> <TD> Kantr </TD> <TD align="right"> 0.00 </TD> <TD align="right"> 0.08 </TD> <TD align="right"> 0.00 </TD> <TD> OK </TD> </TR>
  <TR> <TD align="right"> 7 </TD> <TD> ENSMUST00000181635.1 </TD> <TD> Kantr </TD> <TD align="right"> 0.00 </TD> <TD align="right"> 0.14 </TD> <TD align="right"> 0.00 </TD> <TD> OK </TD> </TR>
  <TR> <TD align="right"> 8 </TD> <TD> ENSMUST00000125102.1 </TD> <TD> WT </TD> <TD align="right"> 0.00 </TD> <TD align="right"> 0.17 </TD> <TD align="right"> 0.00 </TD> <TD> OK </TD> </TR>
  <TR> <TD align="right"> 9 </TD> <TD> ENSMUST00000135115.1 </TD> <TD> WT </TD> <TD align="right"> 1.06 </TD> <TD align="right"> 2.47 </TD> <TD align="right"> 0.00 </TD> <TD> OK </TD> </TR>
  <TR> <TD align="right"> 10 </TD> <TD> ENSMUST00000141922.1 </TD> <TD> WT </TD> <TD align="right"> 0.09 </TD> <TD align="right"> 0.54 </TD> <TD align="right"> 0.00 </TD> <TD> OK </TD> </TR>
  <TR> <TD align="right"> 11 </TD> <TD> ENSMUST00000148326.1 </TD> <TD> WT </TD> <TD align="right"> 10.96 </TD> <TD align="right"> 13.75 </TD> <TD align="right"> 8.16 </TD> <TD> OK </TD> </TR>
  <TR> <TD align="right"> 12 </TD> <TD> ENSMUST00000149098.1 </TD> <TD> WT </TD> <TD align="right"> 0.00 </TD> <TD align="right"> 0.21 </TD> <TD align="right"> 0.00 </TD> <TD> OK </TD> </TR>
  <TR> <TD align="right"> 13 </TD> <TD> ENSMUST00000154085.1 </TD> <TD> WT </TD> <TD align="right"> 0.12 </TD> <TD align="right"> 0.48 </TD> <TD align="right"> 0.00 </TD> <TD> OK </TD> </TR>
  <TR> <TD align="right"> 14 </TD> <TD> ENSMUST00000181635.1 </TD> <TD> WT </TD> <TD align="right"> 1.88 </TD> <TD align="right"> 4.09 </TD> <TD align="right"> 0.00 </TD> <TD> OK </TD> </TR>
   </TABLE>
![plot of chunk Enodenous lncRNA tables](figure/Kantr/Enodenous lncRNA tables1.png) ![plot of chunk Enodenous lncRNA tables](figure/Kantr/Enodenous lncRNA tables2.png) ![plot of chunk Enodenous lncRNA tables](figure/Kantr/Enodenous lncRNA tables3.png) ![plot of chunk Enodenous lncRNA tables](figure/Kantr/Enodenous lncRNA tables4.png) ![plot of chunk Enodenous lncRNA tables](figure/Kantr/Enodenous lncRNA tables5.png) ![plot of chunk Enodenous lncRNA tables](figure/Kantr/Enodenous lncRNA tables6.png) ![plot of chunk Enodenous lncRNA tables](figure/Kantr/Enodenous lncRNA tables7.png) ![plot of chunk Enodenous lncRNA tables](figure/Kantr/Enodenous lncRNA tables8.png) 


## LacZ expression
<!-- html table generated in R 3.0.2 by xtable 1.7-3 package -->
<!-- Sun Jun 15 20:10:58 2014 -->
<TABLE border=1>
<TR> <TH>  </TH> <TH> gene_id </TH> <TH> sample_name </TH> <TH> fpkm </TH> <TH> conf_hi </TH> <TH> conf_lo </TH> <TH> quant_status </TH>  </TR>
  <TR> <TD align="right"> 1 </TD> <TD> Velocigene_LacZ </TD> <TD> Kantr </TD> <TD align="right"> 2.28 </TD> <TD align="right"> 2.79 </TD> <TD align="right"> 1.78 </TD> <TD> OK </TD> </TR>
  <TR> <TD align="right"> 2 </TD> <TD> Velocigene_LacZ </TD> <TD> WT </TD> <TD align="right"> 0.00 </TD> <TD align="right"> 0.02 </TD> <TD align="right"> 0.00 </TD> <TD> OK </TD> </TR>
   </TABLE>
![plot of chunk LacZ expression](figure/Kantr/LacZ expression1.png) ![plot of chunk LacZ expression](figure/Kantr/LacZ expression2.png) ![plot of chunk LacZ expression](figure/Kantr/LacZ expression3.png) ![plot of chunk LacZ expression](figure/Kantr/LacZ expression4.png) 


## Digital Genotyping (LacZ vs Endogenous lncRNA and Sex)

break apart into bars for individual replicates, prefferably all together


```
## Scale for 'colour' is already present. Adding another scale for 'colour', which will replace the existing scale.
## ymax not defined: adjusting position using y instead
```

![plot of chunk Digital Genotyping](figure/Kantr/Digital Genotyping1.png) 

```
## Scale for 'colour' is already present. Adding another scale for 'colour', which will replace the existing scale.
## ymax not defined: adjusting position using y instead
```

![plot of chunk Digital Genotyping](figure/Kantr/Digital Genotyping2.png) 

```
## Using tracking_id, rep_name as id variables
## No id variables; using all as measure variables
```

![plot of chunk Digital Genotyping](figure/Kantr/Digital Genotyping3.png) 


# Differential Analysis

## Differential Genes 



There are 313 significantly differentially expressed genes. They are:


```
## Error: no applicable method for 'xtable' applied to an object of class
## "character"
```

### Matrix of gene significant differences between conditions
(skip for Brainmap wt-v-ko comparisons)

![plot of chunk sigMatrix](figure/Kantr/sigMatrix.png) 

### Significant gene expression differences between conditions


```
## Using tracking_id, rep_name as id variables
## No id variables; using all as measure variables
```

![plot of chunk sigExpression](figure/Kantr/sigExpression1.png) ![plot of chunk sigExpression](figure/Kantr/sigExpression2.png) 

```
## Scale for 'colour' is already present. Adding another scale for 'colour', which will replace the existing scale.
## ymax not defined: adjusting position using y instead
```

![plot of chunk sigExpression](figure/Kantr/sigExpression3.png) 

An individual look at each of the significantly differentially regulated genes:
(eval=false for first pass)



### Expression-level significance relationship

**Interesting comments n stuff!**


```
## Using tracking_id, sample_name as id variables
```

```
## Error: One or more values of 'x' or 'y' are not valid sample names!
```

```
## Error: One or more values of 'x' or 'y' are not valid sample names!
```

## Differential Splicing

### Differential Isoforms between conditions
Per isoform difference between conditions:
![plot of chunk diff.iso](figure/Kantr/diff.iso.png) 

These isoforms are:

```
## Error: no applicable method for 'xtable' applied to an object of class
## "character"
```


```
## Using tracking_id, sample_name as id variables
## No id variables; using all as measure variables
```

![plot of chunk isoform heatmap](figure/Kantr/isoform heatmap.png) 

### Differential Splicing between conditions

Per condition differences in isoforms (Does gene have diff piechart between conditions?)



These genes are:


Splicing heatmap by isoform:

```
## Error: error in evaluating the argument 'object' in selecting a method for function 'csHeatmap': Error in isoforms(splicingSigGenes) : 
##   error in evaluating the argument 'object' in selecting a method for function 'isoforms': Error: object 'splicingSigGenes' not found
```

Splicing heatmap by gene


The following are significantly differentially spliced genes (relative portion of isoform per condition): 

eval false for first pass




 










# Gene/Pathway Analysis

## GSEA





![plot of chunk print GSEA biocarta](figure/Kantr/print GSEA biocarta.png) 

![plot of chunk print GSEA reactome](figure/Kantr/print GSEA reactome.png) 

## GO enrichment 
Cluster profiler used to call enichments of significantly differentially regulated genes that map to Entrez IDs. 

Description/explanation of what's here, and justify all choices. 



biomart to get entrez gene IDS
clusterProfiler does GO enrichment 

BP, MF, CC
enrichKEGG
enrichPathway



![plot of chunk GO figures](figure/Kantr/GO figures1.png) ![plot of chunk GO figures](figure/Kantr/GO figures2.png) ![plot of chunk GO figures](figure/Kantr/GO figures3.png) ![plot of chunk GO figures](figure/Kantr/GO figures4.png) ![plot of chunk GO figures](figure/Kantr/GO figures5.png) 

```
## Error: invalid 'name' argument
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
##  [1] GO.db_2.10.1           org.Mm.eg.db_2.10.1    clusterProfiler_1.13.1
##  [4] DOSE_2.0.0             ReactomePA_1.6.1       AnnotationDbi_1.24.0  
##  [7] Biobase_2.22.0         mgcv_1.7-29            nlme_3.1-117          
## [10] gridExtra_0.9.1        gtable_0.1.2           marray_1.40.0         
## [13] gplots_2.13.0          GSA_1.03               limma_3.18.13         
## [16] xtable_1.7-3           knitr_1.6              cummeRbund_2.7.2      
## [19] Gviz_1.6.0             rtracklayer_1.22.7     GenomicRanges_1.14.4  
## [22] XVector_0.2.0          IRanges_1.20.7         fastcluster_1.1.13    
## [25] reshape2_1.4           ggplot2_1.0.0          RSQLite_0.11.4        
## [28] DBI_0.2-7              BiocGenerics_0.8.0    
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
## [28] latticeExtra_0.6-26    markdown_0.7           MASS_7.3-33           
## [31] Matrix_1.1-3           mime_0.1.1             munsell_0.4.2         
## [34] org.Hs.eg.db_2.10.1    plyr_1.8.1             proto_0.3-10          
## [37] qvalue_1.36.0          RColorBrewer_1.0-5     Rcpp_0.11.1           
## [40] RCurl_1.95-4.1         reactome.db_1.46.1     Rsamtools_1.14.3      
## [43] scales_0.2.4           splines_3.0.2          stats4_3.0.2          
## [46] stringr_0.6.2          survival_2.37-7        tcltk_3.0.2           
## [49] tools_3.0.2            XML_3.98-1.1           zlibbioc_1.8.0
```

#Run Info

```
##           param
## 1      cmd_line
## 2       version
## 3  SVN_revision
## 4 boost_version
## 5        genome
##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          value
## 1 cuffdiff -p 10 -L WT,Kantr -o /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/diffs/Kantr_vs_WT_Adult /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/annotation/mm10_gencode_vM2_with_lncRNAs_and_LacZ.gtf /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR824/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR820/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR821/abundances.cxb /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR742/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR819/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR823/abundances.cxb 
## 2                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        2.2.1
## 3                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         4237
## 4                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       104700
## 5                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         mm10
```
