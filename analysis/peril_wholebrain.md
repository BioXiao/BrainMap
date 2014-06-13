peril_wholebrain KO vs WT (Embryonic)
======================================

# questions
- overdispersion
- how do we rescale these plots? or just axes?
- add labels, descriptions
- turn off all caching 
- general figure formatting/table formatting 
- other heatmap labels (csHeatmap)






# Intialize


# Design Overview

This file shows the wt-v-ko comparison for peril_wholebrain. 

Samples used are:
<!-- html table generated in R 3.0.2 by xtable 1.7-3 package -->
<!-- Fri Jun 13 15:21:18 2014 -->
<TABLE border=1>
<TR> <TH>  </TH> <TH> 9 </TH>  </TR>
  <TR> <TD align="right"> c......n....rinn_data1....users....agroff....seq....PERIL....data... </TD> <TD> bams </TD> </TR>
  <TR> <TD align="right"> c......n....rinn_data1....users....agroff....seq....PERIL....data....1 </TD> <TD> bams </TD> </TR>
  <TR> <TD align="right"> c......n....rinn_data1....users....agroff....seq....PERIL....data....2 </TD> <TD> bams </TD> </TR>
  <TR> <TD align="right"> c......n....rinn_data1....users....agroff....seq....PERIL....data....3 </TD> <TD> bams </TD> </TR>
  <TR> <TD align="right"> c......n....rinn_data1....users....agroff....seq....PERIL....data....4 </TD> <TD> bams </TD> </TR>
  <TR> <TD align="right"> c......n....rinn_data1....users....agroff....seq....PERIL....data....5 </TD> <TD> bams </TD> </TR>
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
<!-- Fri Jun 13 15:21:19 2014 -->
<TABLE border=1>
<TR> <TH>  </TH> <TH> file </TH> <TH> sample_name </TH> <TH> replicate </TH> <TH> rep_name </TH> <TH> total_mass </TH> <TH> norm_mass </TH> <TH> internal_scale </TH> <TH> external_scale </TH>  </TR>
  <TR> <TD align="right"> 1 </TD> <TD> /n/rinn_data1/users/agroff/seq/PERIL/data/bams/Sample_JR716_Peril_L43_E14-5_whole_brain_wtM1_CAGATC/accepted_hits.bam </TD> <TD> wt </TD> <TD align="right">   0 </TD> <TD> wt_0 </TD> <TD align="right"> 28383700.00 </TD> <TD align="right"> 25891500.00 </TD> <TD align="right"> 1.09 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 2 </TD> <TD> /n/rinn_data1/users/agroff/seq/PERIL/data/bams/Sample_JR717_Peril_L43_E14-5_whole_brain_wtF3_ACTTGA/accepted_hits.bam </TD> <TD> wt </TD> <TD align="right">   1 </TD> <TD> wt_1 </TD> <TD align="right"> 27709200.00 </TD> <TD align="right"> 25891500.00 </TD> <TD align="right"> 1.08 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 3 </TD> <TD> /n/rinn_data1/users/agroff/seq/PERIL/data/bams/Sample_JR719_Peril_L43_E14-5_whole_brain_wtM8_TAGCTT/accepted_hits.bam </TD> <TD> wt </TD> <TD align="right">   2 </TD> <TD> wt_2 </TD> <TD align="right"> 24704700.00 </TD> <TD align="right"> 25891500.00 </TD> <TD align="right"> 0.94 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 4 </TD> <TD> /n/rinn_data1/users/agroff/seq/PERIL/data/bams/Sample_JR718_Peril_L43_E14-5_whole_brain_koM4_GATCAG/accepted_hits.bam </TD> <TD> ko </TD> <TD align="right">   0 </TD> <TD> ko_0 </TD> <TD align="right"> 30022300.00 </TD> <TD align="right"> 25891500.00 </TD> <TD align="right"> 1.17 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 5 </TD> <TD> /n/rinn_data1/users/agroff/seq/PERIL/data/bams/Sample_JR720_Peril_L43_E14-5_whole_brain_koF9_GGCTAC/accepted_hits.bam </TD> <TD> ko </TD> <TD align="right">   1 </TD> <TD> ko_1 </TD> <TD align="right"> 21295400.00 </TD> <TD align="right"> 25891500.00 </TD> <TD align="right"> 0.82 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 6 </TD> <TD> /n/rinn_data1/users/agroff/seq/PERIL/data/bams/Sample_JR721_Peril_L43_E14-5_whole_brain_koF10_CTTGTA/accepted_hits.bam </TD> <TD> ko </TD> <TD align="right">   2 </TD> <TD> ko_2 </TD> <TD align="right"> 24554000.00 </TD> <TD align="right"> 25891500.00 </TD> <TD align="right"> 0.95 </TD> <TD align="right"> 1.00 </TD> </TR>
   </TABLE>

# QC

## Dispersion

This shows count (WHAT IS COUNT? fragment counts? per gene?) vs dispersion (of those counts), or the spread in measurements for a particular gene across replicates. 

from cummerbund manual: Overdispersion is a common problem in RNA-Seq data. As of cufflinks v2.0 mean counts, variance, and dispersion are all emitted, allowing you to visualize the estimated overdispersion for each sample as a quality control measure. - See more at: http://compbio.mit.edu/cummeRbund/manual_2_0.html#sthash.9YRYxwRV.dpuf


![plot of chunk dispersion](figure/peril_wholebrain/dispersion.png) 

## Cross-replicate variability (fpkmSCVplot)
The squared coefficient of variation is a normalized measure of cross replicate variability that can be useful for evaluating the quality your RNA-seq data. Differences in CV 2 can result in lower numbers of differentially expressed genes due to a higher degree of variability between replicate fpkm estimates.

Genes:

```
## Scale for 'x' is already present. Adding another scale for 'x', which will replace the existing scale.
## geom_smooth: method="auto" and size of largest group is >=1000, so using gam with formula: y ~ s(x, bs = "cs"). Use 'method = x' to change the smoothing method.
```

![plot of chunk CV genes](figure/peril_wholebrain/CV genes.png) 


Isoforms: 

```
## Scale for 'x' is already present. Adding another scale for 'x', which will replace the existing scale.
## geom_smooth: method="auto" and size of largest group is >=1000, so using gam with formula: y ~ s(x, bs = "cs"). Use 'method = x' to change the smoothing method.
```

![plot of chunk cv iso](figure/peril_wholebrain/cv iso.png) 

## Volcano
![plot of chunk volcano](figure/peril_wholebrain/volcano.png) 

### Volcano matrix (replicates)
![plot of chunk volcano matrix](figure/peril_wholebrain/volcano matrix.png) 

## MvA plot

```
## Warning: Removed 7410 rows containing missing values (geom_point).
```

![plot of chunk MvA](figure/peril_wholebrain/MvA.png) 
   
### MvA plot counts

```
## Warning: Removed 7410 rows containing missing values (geom_point).
```

![plot of chunk MvA counts](figure/peril_wholebrain/MvA counts.png) 

## Scatterplot
![plot of chunk scatterplot](figure/peril_wholebrain/scatterplot.png) 

### Scatter matrix (replicates)
![plot of chunk scatterplot matrix](figure/peril_wholebrain/scatterplot matrix.png) 


## Distributions

### Boxplot
![plot of chunk boxplot](figure/peril_wholebrain/boxplot1.png) ![plot of chunk boxplot](figure/peril_wholebrain/boxplot2.png) ![plot of chunk boxplot](figure/peril_wholebrain/boxplot3.png) 

### Density

```
## Warning: Removed 8487 rows containing non-finite values (stat_density).
## Warning: Removed 8646 rows containing non-finite values (stat_density).
```

![plot of chunk density](figure/peril_wholebrain/density1.png) 

```
## Warning: Removed 10396 rows containing non-finite values (stat_density).
## Warning: Removed 10329 rows containing non-finite values (stat_density).
## Warning: Removed 10816 rows containing non-finite values (stat_density).
## Warning: Removed 10341 rows containing non-finite values (stat_density).
## Warning: Removed 10985 rows containing non-finite values (stat_density).
## Warning: Removed 10732 rows containing non-finite values (stat_density).
```

![plot of chunk density](figure/peril_wholebrain/density2.png) 


## Clustering

### Replicate Clusters
![plot of chunk replicate clusters](figure/peril_wholebrain/replicate clusters.png) 

```
## 'dendrogram' with 2 branches and 6 members total, at height 0.06655
```

### PCA
![plot of chunk PCA](figure/peril_wholebrain/PCA.png) 

### MDS 
![plot of chunk MDS](figure/peril_wholebrain/MDS.png) 

### Distance Heat Map
![plot of chunk R distance heatmap](figure/peril_wholebrain/R distance heatmap.png) 


# KO assessment

## Endogenous lncRNA expression

```
## Error: invalid class "CuffGene" object: FALSE
```

<!-- html table generated in R 3.0.2 by xtable 1.7-3 package -->
<!-- Fri Jun 13 15:24:21 2014 -->
<TABLE border=1>
<TR> <TH>  </TH> <TH> gene_id </TH> <TH> sample_name </TH> <TH> fpkm </TH> <TH> conf_hi </TH> <TH> conf_lo </TH> <TH> quant_status </TH>  </TR>
  <TR> <TD align="right"> 1 </TD> <TD> XLOC_008094 </TD> <TD> ko </TD> <TD align="right"> 1.68 </TD> <TD align="right"> 2.21 </TD> <TD align="right"> 1.14 </TD> <TD> OK </TD> </TR>
  <TR> <TD align="right"> 2 </TD> <TD> XLOC_008094 </TD> <TD> wt </TD> <TD align="right"> 1.77 </TD> <TD align="right"> 2.41 </TD> <TD align="right"> 1.13 </TD> <TD> OK </TD> </TR>
   </TABLE>
<!-- html table generated in R 3.0.2 by xtable 1.7-3 package -->
<!-- Fri Jun 13 15:24:21 2014 -->
<TABLE border=1>
<TR> <TH>  </TH> <TH> isoform_id </TH> <TH> sample_name </TH> <TH> fpkm </TH> <TH> conf_hi </TH> <TH> conf_lo </TH> <TH> quant_status </TH>  </TR>
  <TR> <TD align="right"> 1 </TD> <TD> TCONS_00019669 </TD> <TD> ko </TD> <TD align="right"> 0.05 </TD> <TD align="right"> 0.18 </TD> <TD align="right"> 0.00 </TD> <TD> OK </TD> </TR>
  <TR> <TD align="right"> 2 </TD> <TD> TCONS_00019670 </TD> <TD> ko </TD> <TD align="right"> 0.00 </TD> <TD align="right"> 0.03 </TD> <TD align="right"> 0.00 </TD> <TD> OK </TD> </TR>
  <TR> <TD align="right"> 3 </TD> <TD> TCONS_00019671 </TD> <TD> ko </TD> <TD align="right"> 0.00 </TD> <TD align="right"> 0.02 </TD> <TD align="right"> 0.00 </TD> <TD> OK </TD> </TR>
  <TR> <TD align="right"> 4 </TD> <TD> TCONS_00019672 </TD> <TD> ko </TD> <TD align="right"> 0.38 </TD> <TD align="right"> 0.76 </TD> <TD align="right"> 0.00 </TD> <TD> OK </TD> </TR>
  <TR> <TD align="right"> 5 </TD> <TD> TCONS_00019673 </TD> <TD> ko </TD> <TD align="right"> 0.00 </TD> <TD align="right"> 0.02 </TD> <TD align="right"> 0.00 </TD> <TD> OK </TD> </TR>
  <TR> <TD align="right"> 6 </TD> <TD> TCONS_00019674 </TD> <TD> ko </TD> <TD align="right"> 1.04 </TD> <TD align="right"> 1.53 </TD> <TD align="right"> 0.56 </TD> <TD> OK </TD> </TR>
  <TR> <TD align="right"> 7 </TD> <TD> TCONS_00019675 </TD> <TD> ko </TD> <TD align="right"> 0.10 </TD> <TD align="right"> 0.29 </TD> <TD align="right"> 0.00 </TD> <TD> OK </TD> </TR>
  <TR> <TD align="right"> 8 </TD> <TD> TCONS_00019676 </TD> <TD> ko </TD> <TD align="right"> 0.00 </TD> <TD align="right"> 0.07 </TD> <TD align="right"> 0.00 </TD> <TD> OK </TD> </TR>
  <TR> <TD align="right"> 9 </TD> <TD> TCONS_00019677 </TD> <TD> ko </TD> <TD align="right"> 0.11 </TD> <TD align="right"> 0.37 </TD> <TD align="right"> 0.00 </TD> <TD> OK </TD> </TR>
  <TR> <TD align="right"> 10 </TD> <TD> TCONS_00019669 </TD> <TD> wt </TD> <TD align="right"> 0.23 </TD> <TD align="right"> 0.62 </TD> <TD align="right"> 0.00 </TD> <TD> OK </TD> </TR>
  <TR> <TD align="right"> 11 </TD> <TD> TCONS_00019670 </TD> <TD> wt </TD> <TD align="right"> 0.00 </TD> <TD align="right"> 0.03 </TD> <TD align="right"> 0.00 </TD> <TD> OK </TD> </TR>
  <TR> <TD align="right"> 12 </TD> <TD> TCONS_00019671 </TD> <TD> wt </TD> <TD align="right"> 0.00 </TD> <TD align="right"> 0.02 </TD> <TD align="right"> 0.00 </TD> <TD> OK </TD> </TR>
  <TR> <TD align="right"> 13 </TD> <TD> TCONS_00019672 </TD> <TD> wt </TD> <TD align="right"> 0.19 </TD> <TD align="right"> 0.46 </TD> <TD align="right"> 0.00 </TD> <TD> OK </TD> </TR>
  <TR> <TD align="right"> 14 </TD> <TD> TCONS_00019673 </TD> <TD> wt </TD> <TD align="right"> 0.47 </TD> <TD align="right"> 0.84 </TD> <TD align="right"> 0.11 </TD> <TD> OK </TD> </TR>
  <TR> <TD align="right"> 15 </TD> <TD> TCONS_00019674 </TD> <TD> wt </TD> <TD align="right"> 0.68 </TD> <TD align="right"> 1.05 </TD> <TD align="right"> 0.32 </TD> <TD> OK </TD> </TR>
  <TR> <TD align="right"> 16 </TD> <TD> TCONS_00019675 </TD> <TD> wt </TD> <TD align="right"> 0.08 </TD> <TD align="right"> 0.25 </TD> <TD align="right"> 0.00 </TD> <TD> OK </TD> </TR>
  <TR> <TD align="right"> 17 </TD> <TD> TCONS_00019676 </TD> <TD> wt </TD> <TD align="right"> 0.00 </TD> <TD align="right"> 0.07 </TD> <TD align="right"> 0.00 </TD> <TD> OK </TD> </TR>
  <TR> <TD align="right"> 18 </TD> <TD> TCONS_00019677 </TD> <TD> wt </TD> <TD align="right"> 0.12 </TD> <TD align="right"> 0.56 </TD> <TD align="right"> 0.00 </TD> <TD> OK </TD> </TR>
   </TABLE>
![plot of chunk Enodenous lncRNA tables](figure/peril_wholebrain/Enodenous lncRNA tables1.png) ![plot of chunk Enodenous lncRNA tables](figure/peril_wholebrain/Enodenous lncRNA tables2.png) ![plot of chunk Enodenous lncRNA tables](figure/peril_wholebrain/Enodenous lncRNA tables3.png) ![plot of chunk Enodenous lncRNA tables](figure/peril_wholebrain/Enodenous lncRNA tables4.png) ![plot of chunk Enodenous lncRNA tables](figure/peril_wholebrain/Enodenous lncRNA tables5.png) ![plot of chunk Enodenous lncRNA tables](figure/peril_wholebrain/Enodenous lncRNA tables6.png) ![plot of chunk Enodenous lncRNA tables](figure/peril_wholebrain/Enodenous lncRNA tables7.png) ![plot of chunk Enodenous lncRNA tables](figure/peril_wholebrain/Enodenous lncRNA tables8.png) 


## LacZ expression

```
## Error: object 'LacZ' not found
```

```
## Error: object 'myGeneId' not found
```

<!-- html table generated in R 3.0.2 by xtable 1.7-3 package -->
<!-- Fri Jun 13 15:24:34 2014 -->
<TABLE border=1>
<TR> <TH>  </TH> <TH> gene_id </TH> <TH> sample_name </TH> <TH> fpkm </TH> <TH> conf_hi </TH> <TH> conf_lo </TH> <TH> quant_status </TH>  </TR>
  <TR> <TD align="right"> 1 </TD> <TD> XLOC_008094 </TD> <TD> ko </TD> <TD align="right"> 1.68 </TD> <TD align="right"> 2.21 </TD> <TD align="right"> 1.14 </TD> <TD> OK </TD> </TR>
  <TR> <TD align="right"> 2 </TD> <TD> XLOC_008094 </TD> <TD> wt </TD> <TD align="right"> 1.77 </TD> <TD align="right"> 2.41 </TD> <TD align="right"> 1.13 </TD> <TD> OK </TD> </TR>
   </TABLE>
![plot of chunk LacZ expression](figure/peril_wholebrain/LacZ expression1.png) ![plot of chunk LacZ expression](figure/peril_wholebrain/LacZ expression2.png) ![plot of chunk LacZ expression](figure/peril_wholebrain/LacZ expression3.png) ![plot of chunk LacZ expression](figure/peril_wholebrain/LacZ expression4.png) 


## Digital Genotyping (LacZ vs Endogenous lncRNA and Sex)

```
## Scale for 'colour' is already present. Adding another scale for 'colour', which will replace the existing scale.
## ymax not defined: adjusting position using y instead
```

![plot of chunk Digital Genotyping](figure/peril_wholebrain/Digital Genotyping1.png) 

```
## Scale for 'colour' is already present. Adding another scale for 'colour', which will replace the existing scale.
## ymax not defined: adjusting position using y instead
```

![plot of chunk Digital Genotyping](figure/peril_wholebrain/Digital Genotyping2.png) 


# Differential Analysis

## Differential Genes 



There are 24 significantly differentially expressed genes. They are:


```
## Error: no applicable method for 'xtable' applied to an object of class
## "character"
```

### Matrix of gene significant differences between conditions
(skip for Brainmap wt-v-ko comparisons)

![plot of chunk sigMatrix](figure/peril_wholebrain/sigMatrix.png) 

### Replicate Clustering by significant genes 

```
## Using tracking_id, rep_name as id variables
```

![plot of chunk sigDendro](figure/peril_wholebrain/sigDendro.png) 

```
## 'dendrogram' with 2 branches and 6 members total, at height 0.3084
```

### Significant gene expression differences between conditions


```
## Using tracking_id, rep_name as id variables
## No id variables; using all as measure variables
```

![plot of chunk sigExpression](figure/peril_wholebrain/sigExpression1.png) ![plot of chunk sigExpression](figure/peril_wholebrain/sigExpression2.png) 

```
## Scale for 'colour' is already present. Adding another scale for 'colour', which will replace the existing scale.
## ymax not defined: adjusting position using y instead
```

![plot of chunk sigExpression](figure/peril_wholebrain/sigExpression3.png) 

An individual look at each of the significantly differentially regulated genes:

![plot of chunk plot ALL OF THE SIGNIFICANT GENES](figure/peril_wholebrain/plot ALL OF THE SIGNIFICANT GENES.png) 


### Expression-level significance relationship

**Interesting comments n stuff!**


```
## Using tracking_id, sample_name as id variables
```

![plot of chunk expression-sig relationship](figure/peril_wholebrain/expression-sig relationship1.png) ![plot of chunk expression-sig relationship](figure/peril_wholebrain/expression-sig relationship2.png) 

## Differential Splicing

### Differential Isoforms between conditions
Per isoform difference between conditions:
![plot of chunk diff.iso](figure/peril_wholebrain/diff.iso.png) 

```
## Error: RS-DBI driver: (error in statement: near ")": syntax error)
```

These isoforms are:

```
## Error: no applicable method for 'xtable' applied to an object of class
## "character"
```


```
## Using tracking_id, sample_name as id variables
## No id variables; using all as measure variables
```

![plot of chunk isoform heatmap](figure/peril_wholebrain/isoform heatmap.png) 

### Differential Splicing between conditions

Per condition differences in isoforms (Does gene have diff piechart between conditions?)


```
## Error: no slot of name "tables" for this object of class "CuffDist"
```

These genes are:
<!-- html table generated in R 3.0.2 by xtable 1.7-3 package -->
<!-- Fri Jun 13 15:27:02 2014 -->
<TABLE border=1>
<TR> <TH>  </TH> <TH> spliceAnnot$gene_short_name </TH>  </TR>
  <TR> <TD align="right"> 1 </TD> <TD> Satb2 </TD> </TR>
  <TR> <TD align="right"> 2 </TD> <TD> Tmem104 </TD> </TR>
  <TR> <TD align="right"> 3 </TD> <TD> Pol mu,Polm </TD> </TR>
  <TR> <TD align="right"> 4 </TD> <TD> Rnf112 </TD> </TR>
  <TR> <TD align="right"> 5 </TD> <TD> Pde8b </TD> </TR>
  <TR> <TD align="right"> 6 </TD> <TD> Pxk </TD> </TR>
  <TR> <TD align="right"> 7 </TD> <TD> Nfatc4 </TD> </TR>
  <TR> <TD align="right"> 8 </TD> <TD> Scrib </TD> </TR>
  <TR> <TD align="right"> 9 </TD> <TD> Gnb1l,Wdvcf </TD> </TR>
  <TR> <TD align="right"> 10 </TD> <TD> Ephb3 </TD> </TR>
  <TR> <TD align="right"> 11 </TD> <TD> Kank1 </TD> </TR>
  <TR> <TD align="right"> 12 </TD> <TD> Ralgds,mKIAA1308 </TD> </TR>
  <TR> <TD align="right"> 13 </TD> <TD> Lrp1b </TD> </TR>
  <TR> <TD align="right"> 14 </TD> <TD> Dpp4 </TD> </TR>
  <TR> <TD align="right"> 15 </TD> <TD> EG381438,Gm5148 </TD> </TR>
  <TR> <TD align="right"> 16 </TD> <TD> Dnaja1,Mir207 </TD> </TR>
  <TR> <TD align="right"> 17 </TD> <TD> Col27a1,mKIAA1870 </TD> </TR>
  <TR> <TD align="right"> 18 </TD> <TD> 0610037D15Rik,Ccdc163 </TD> </TR>
  <TR> <TD align="right"> 19 </TD> <TD>  </TD> </TR>
  <TR> <TD align="right"> 20 </TD> <TD> Zfp420 </TD> </TR>
  <TR> <TD align="right"> 21 </TD> <TD> Arntl,bmal1b </TD> </TR>
  <TR> <TD align="right"> 22 </TD> <TD> Itgam </TD> </TR>
  <TR> <TD align="right"> 23 </TD> <TD> Vstm2b </TD> </TR>
  <TR> <TD align="right"> 24 </TD> <TD> Nup93 </TD> </TR>
  <TR> <TD align="right"> 25 </TD> <TD> Nfix </TD> </TR>
   </TABLE>

Splicing heatmap by isoform:

```
## Using tracking_id, sample_name as id variables
## No id variables; using all as measure variables
```

![plot of chunk splicing heatmap by isoform](figure/peril_wholebrain/splicing heatmap by isoform.png) 

Splicing heatmap by gene

```
## Using tracking_id, sample_name as id variables
## No id variables; using all as measure variables
```

![plot of chunk splicing heatmap by gene](figure/peril_wholebrain/splicing heatmap by gene.png) 

The following are significantly differentially spliced genes (relative portion of isoform per condition): 

# how do we rescale these plots? or just axes?
![plot of chunk print all the splicing csPie plots](figure/peril_wholebrain/print all the splicing csPie plots.png) 



 










# Gene/Pathway Analysis

## GSEA






```
## Error: object 'noinfinitiesx' not found
```

```
## Error: object 'x_max' not found
```

![plot of chunk print GSEA biocarta](figure/peril_wholebrain/print GSEA biocarta.png) 


```
## Error: object 'noinfinitiesx' not found
```

```
## Error: object 'x_max' not found
```

```
## Error: NaN dissimilarity value.
```

## GO enrichment 
Cluster profiler used to call enichments of significantly differentially regulated genes that map to Entrez IDs. 

Description/explanation of what's here, and justify all choices. 



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



![plot of chunk GO figures](figure/peril_wholebrain/GO figures1.png) ![plot of chunk GO figures](figure/peril_wholebrain/GO figures2.png) 

```
## Error: 'x' and 'units' must have length > 0
```

```
## Warning: no non-missing arguments to min; returning Inf
## Warning: no non-missing arguments to max; returning -Inf
## Warning: no non-missing arguments to min; returning Inf
## Warning: no non-missing arguments to max; returning -Inf
## Warning: "showCategory" is not a graphical parameter
```

```
## Error: need finite 'xlim' values
```

![plot of chunk GO figures](figure/peril_wholebrain/GO figures3.png) 

```
## Warning: no non-missing arguments to min; returning Inf
## Warning: no non-missing arguments to max; returning -Inf
## Warning: no non-missing arguments to min; returning Inf
## Warning: no non-missing arguments to max; returning -Inf
## Warning: "showCategory" is not a graphical parameter
```

```
## Error: need finite 'xlim' values
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
## [13] marray_1.40.0          gplots_2.13.0          GSA_1.03              
## [16] limma_3.18.13          xtable_1.7-3           cummeRbund_2.7.2      
## [19] Gviz_1.6.0             rtracklayer_1.22.7     GenomicRanges_1.14.4  
## [22] XVector_0.2.0          IRanges_1.20.7         fastcluster_1.1.13    
## [25] reshape2_1.4           ggplot2_1.0.0          RSQLite_0.11.4        
## [28] DBI_0.2-7              BiocGenerics_0.8.0     knitr_1.6             
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
##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          value
## 1 cuffdiff -p 8 -o /n/rinn_data1/users/agroff/seq/PERIL/data/diffs/cuffdiff_v221_newgtf/whole_brain -L wt,ko /n/rinn_data1/users/agroff/annotation/mm9/ucsc_no_noncoding_AND_lincdb2.gtf /n/rinn_data1/users/agroff/seq/PERIL/data/bams/Sample_JR716_Peril_L43_E14-5_whole_brain_wtM1_CAGATC/accepted_hits.bam,/n/rinn_data1/users/agroff/seq/PERIL/data/bams/Sample_JR717_Peril_L43_E14-5_whole_brain_wtF3_ACTTGA/accepted_hits.bam,/n/rinn_data1/users/agroff/seq/PERIL/data/bams/Sample_JR719_Peril_L43_E14-5_whole_brain_wtM8_TAGCTT/accepted_hits.bam /n/rinn_data1/users/agroff/seq/PERIL/data/bams/Sample_JR718_Peril_L43_E14-5_whole_brain_koM4_GATCAG/accepted_hits.bam,/n/rinn_data1/users/agroff/seq/PERIL/data/bams/Sample_JR720_Peril_L43_E14-5_whole_brain_koF9_GGCTAC/accepted_hits.bam,/n/rinn_data1/users/agroff/seq/PERIL/data/bams/Sample_JR721_Peril_L43_E14-5_whole_brain_koF10_CTTGTA/accepted_hits.bam 
## 2                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        2.2.1
## 3                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         4237
## 4                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       104700
```
