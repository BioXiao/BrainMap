Celrr KO vs WT (Adult)
======================================


- add labels, descriptions
- turn off all caching ! 
- other heatmap labels (csHeatmap)
- overlap figure
- tracks 
- should import litter info






# Intialize


# Design Overview

This file shows the wt-v-ko comparison for Celrr. 

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


# QC

## Dispersion

Dispersion plot for genes in cuff:
(Overdispersion can lead to innacurate quants)


```
## Error: 'from' cannot be NA, NaN or infinite
```

## Cross-replicate variability (fpkmSCVplot)
Differences in CV 2 can result in lower numbers of differentially expressed genes due to a higher degree of variability between replicate fpkm estimates.

Genes:

```
## Scale for 'x' is already present. Adding another scale for 'x', which will replace the existing scale.
## geom_smooth: method="auto" and size of largest group is >=1000, so using gam with formula: y ~ s(x, bs = "cs"). Use 'method = x' to change the smoothing method.
```

![plot of chunk CV genes](figure/Celrr/CV genes.png) 


Isoforms: 

```
## Scale for 'x' is already present. Adding another scale for 'x', which will replace the existing scale.
## geom_smooth: method="auto" and size of largest group is >=1000, so using gam with formula: y ~ s(x, bs = "cs"). Use 'method = x' to change the smoothing method.
```

![plot of chunk cv iso](figure/Celrr/cv iso.png) 

## Volcano

```
## Error: One or more values of 'x' or 'y' are not valid sample names!
```

### Volcano matrix (replicates)

![plot of chunk volcano matrix](figure/Celrr/volcano matrix.png) 

## MvA plot

```
## Error: non-numeric argument to binary operator
```
   
### MvA plot counts

```
## Error: non-numeric argument to binary operator
```

## Scatterplot
![plot of chunk scatterplot](figure/Celrr/scatterplot.png) 

### Scatter matrix (replicates) -- SKIP FOR NOW CAUSING PROBLEMS 




## Distributions

### Boxplots

Boxplot (genes)

![plot of chunk boxplot genes](figure/Celrr/boxplot genes.png) 

Boxplot (genes, replicates)

![plot of chunk boxplot genes replicates](figure/Celrr/boxplot genes replicates.png) 

Boxplot (isoforms)

![plot of chunk boxplot isoforms](figure/Celrr/boxplot isoforms.png) 

Boxplot (isoforms, replicates)

![plot of chunk boxplot isoforms replicates](figure/Celrr/boxplot isoforms replicates.png) 

### Density

Density (genes)

![plot of chunk density](figure/Celrr/density.png) 

Density (genes, replicates)

![plot of chunk density w replicates](figure/Celrr/density w replicates.png) 


## Clustering

### Replicate Clusters
![plot of chunk replicate clusters](figure/Celrr/replicate clusters.png) 

```
## 'dendrogram' with 2 branches and 18 members total, at height 0.07545
```

### PCA (genes)
![plot of chunk PCA](figure/Celrr/PCA.png) 

### MDS (genes)
![plot of chunk MDS](figure/Celrr/MDS.png) 

### Distance Heat Map (genes)
![plot of chunk R distance heatmap](figure/Celrr/R distance heatmap.png) 


# KO assessment

## Endogenous lncRNA expression

<!-- html table generated in R 3.0.2 by xtable 1.7-3 package -->
<!-- Mon Jun 16 16:53:41 2014 -->
<TABLE border=1>
<TR> <TH>  </TH> <TH> gene_id </TH> <TH> sample_name </TH> <TH> fpkm </TH> <TH> conf_hi </TH> <TH> conf_lo </TH> <TH> quant_status </TH>  </TR>
  <TR> <TD align="right"> 1 </TD> <TD> ENSMUSG00000097881.1 </TD> <TD> Celrr </TD> <TD align="right"> 0.01 </TD> <TD align="right"> 0.07 </TD> <TD align="right"> 0.00 </TD> <TD> OK </TD> </TR>
  <TR> <TD align="right"> 2 </TD> <TD> ENSMUSG00000097881.1 </TD> <TD> WT </TD> <TD align="right"> 1.15 </TD> <TD align="right"> 1.73 </TD> <TD align="right"> 0.58 </TD> <TD> OK </TD> </TR>
   </TABLE>
<!-- html table generated in R 3.0.2 by xtable 1.7-3 package -->
<!-- Mon Jun 16 16:53:41 2014 -->
<TABLE border=1>
<TR> <TH>  </TH> <TH> isoform_id </TH> <TH> sample_name </TH> <TH> fpkm </TH> <TH> conf_hi </TH> <TH> conf_lo </TH> <TH> quant_status </TH>  </TR>
  <TR> <TD align="right"> 1 </TD> <TD> ENSMUST00000181183.1 </TD> <TD> Celrr </TD> <TD align="right"> 0.00 </TD> <TD align="right"> 0.05 </TD> <TD align="right"> 0.00 </TD> <TD> OK </TD> </TR>
  <TR> <TD align="right"> 2 </TD> <TD> ENSMUST00000181433.1 </TD> <TD> Celrr </TD> <TD align="right"> 0.01 </TD> <TD align="right"> 0.05 </TD> <TD align="right"> 0.00 </TD> <TD> OK </TD> </TR>
  <TR> <TD align="right"> 3 </TD> <TD> ENSMUST00000181183.1 </TD> <TD> WT </TD> <TD align="right"> 0.27 </TD> <TD align="right"> 0.65 </TD> <TD align="right"> 0.00 </TD> <TD> OK </TD> </TR>
  <TR> <TD align="right"> 4 </TD> <TD> ENSMUST00000181433.1 </TD> <TD> WT </TD> <TD align="right"> 0.88 </TD> <TD align="right"> 1.38 </TD> <TD align="right"> 0.38 </TD> <TD> OK </TD> </TR>
   </TABLE>
![plot of chunk Enodenous lncRNA tables](figure/Celrr/Enodenous lncRNA tables1.png) ![plot of chunk Enodenous lncRNA tables](figure/Celrr/Enodenous lncRNA tables2.png) 

Endogenous expression of Celrr isoforms:

![plot of chunk endogenous iso](figure/Celrr/endogenous iso1.png) ![plot of chunk endogenous iso](figure/Celrr/endogenous iso2.png) 

Barplot of gene expression:

![plot of chunk endogenous barplot](figure/Celrr/endogenous barplot1.png) ![plot of chunk endogenous barplot](figure/Celrr/endogenous barplot2.png) 

Barplot of isoform expression:

![plot of chunk endogenous iso barplot](figure/Celrr/endogenous iso barplot.png) 


## LacZ expression

<!-- html table generated in R 3.0.2 by xtable 1.7-3 package -->
<!-- Mon Jun 16 16:53:50 2014 -->
<TABLE border=1>
<TR> <TH>  </TH> <TH> gene_id </TH> <TH> sample_name </TH> <TH> fpkm </TH> <TH> conf_hi </TH> <TH> conf_lo </TH> <TH> quant_status </TH>  </TR>
  <TR> <TD align="right"> 1 </TD> <TD> Velocigene_LacZ </TD> <TD> Celrr </TD> <TD align="right"> 1.52 </TD> <TD align="right"> 2.02 </TD> <TD align="right"> 1.03 </TD> <TD> OK </TD> </TR>
  <TR> <TD align="right"> 2 </TD> <TD> Velocigene_LacZ </TD> <TD> WT </TD> <TD align="right"> 0.12 </TD> <TD align="right"> 0.26 </TD> <TD align="right"> 0.00 </TD> <TD> OK </TD> </TR>
   </TABLE>
![plot of chunk LacZ expression](figure/Celrr/LacZ expression1.png) ![plot of chunk LacZ expression](figure/Celrr/LacZ expression2.png) ![plot of chunk LacZ expression](figure/Celrr/LacZ expression3.png) ![plot of chunk LacZ expression](figure/Celrr/LacZ expression4.png) 


## Digital Genotyping (LacZ vs Endogenous lncRNA and Sex)
Expression plot (endogenous linc, lacZ, Y-expressed gene):


```
## Scale for 'colour' is already present. Adding another scale for 'colour', which will replace the existing scale.
## ymax not defined: adjusting position using y instead
```

![plot of chunk Digital Genotyping](figure/Celrr/Digital Genotyping.png) 

Expression heatmap:

```
## Using tracking_id, rep_name as id variables
## No id variables; using all as measure variables
```

![plot of chunk digital geno heatmap](figure/Celrr/digital geno heatmap.png) 

# Differential Analysis

## Differential Genes 



There are 55 significantly differentially expressed genes. They are:

<!-- html table generated in R 3.0.2 by xtable 1.7-3 package -->
<!-- Mon Jun 16 16:53:57 2014 -->
<TABLE border=1>
<TR> <TH>  </TH> <TH> geneAnnot$gene_short_name </TH>  </TR>
  <TR> <TD align="right"> 1 </TD> <TD> Chordc1 </TD> </TR>
  <TR> <TD align="right"> 2 </TD> <TD> Nes </TD> </TR>
  <TR> <TD align="right"> 3 </TD> <TD> Dnajb1 </TD> </TR>
  <TR> <TD align="right"> 4 </TD> <TD> Dio2 </TD> </TR>
  <TR> <TD align="right"> 5 </TD> <TD> Slc38a3 </TD> </TR>
  <TR> <TD align="right"> 6 </TD> <TD> P4ha1 </TD> </TR>
  <TR> <TD align="right"> 7 </TD> <TD> Unc5b </TD> </TR>
  <TR> <TD align="right"> 8 </TD> <TD> Btg2 </TD> </TR>
  <TR> <TD align="right"> 9 </TD> <TD> Ccdc117 </TD> </TR>
  <TR> <TD align="right"> 10 </TD> <TD> Xbp1 </TD> </TR>
  <TR> <TD align="right"> 11 </TD> <TD> Pdia6 </TD> </TR>
  <TR> <TD align="right"> 12 </TD> <TD> Adi1 </TD> </TR>
  <TR> <TD align="right"> 13 </TD> <TD> Serpina3n </TD> </TR>
  <TR> <TD align="right"> 14 </TD> <TD> Fos </TD> </TR>
  <TR> <TD align="right"> 15 </TD> <TD> Arc </TD> </TR>
  <TR> <TD align="right"> 16 </TD> <TD> Sdf2l1 </TD> </TR>
  <TR> <TD align="right"> 17 </TD> <TD> Nr4a1 </TD> </TR>
  <TR> <TD align="right"> 18 </TD> <TD> Glo1 </TD> </TR>
  <TR> <TD align="right"> 19 </TD> <TD> Dusp1 </TD> </TR>
  <TR> <TD align="right"> 20 </TD> <TD> Pdia4 </TD> </TR>
  <TR> <TD align="right"> 21 </TD> <TD> Lcn2 </TD> </TR>
  <TR> <TD align="right"> 22 </TD> <TD> Hspa5 </TD> </TR>
  <TR> <TD align="right"> 23 </TD> <TD> Vcam1 </TD> </TR>
  <TR> <TD align="right"> 24 </TD> <TD> Hddc3 </TD> </TR>
  <TR> <TD align="right"> 25 </TD> <TD> Tsc22d3 </TD> </TR>
  <TR> <TD align="right"> 26 </TD> <TD> Mt3 </TD> </TR>
  <TR> <TD align="right"> 27 </TD> <TD> Mt2 </TD> </TR>
  <TR> <TD align="right"> 28 </TD> <TD> Mt1 </TD> </TR>
  <TR> <TD align="right"> 29 </TD> <TD> Cryab </TD> </TR>
  <TR> <TD align="right"> 30 </TD> <TD> Ptgs2 </TD> </TR>
  <TR> <TD align="right"> 31 </TD> <TD> Lars2 </TD> </TR>
  <TR> <TD align="right"> 32 </TD> <TD> Egr2 </TD> </TR>
  <TR> <TD align="right"> 33 </TD> <TD> Egr1 </TD> </TR>
  <TR> <TD align="right"> 34 </TD> <TD> Fmo2 </TD> </TR>
  <TR> <TD align="right"> 35 </TD> <TD> Obfc1 </TD> </TR>
  <TR> <TD align="right"> 36 </TD> <TD> Gm9493 </TD> </TR>
  <TR> <TD align="right"> 37 </TD> <TD> Acp1 </TD> </TR>
  <TR> <TD align="right"> 38 </TD> <TD> Cirbp </TD> </TR>
  <TR> <TD align="right"> 39 </TD> <TD> Npas4 </TD> </TR>
  <TR> <TD align="right"> 40 </TD> <TD> Tmem252 </TD> </TR>
  <TR> <TD align="right"> 41 </TD> <TD> Opalin </TD> </TR>
  <TR> <TD align="right"> 42 </TD> <TD> Cd14 </TD> </TR>
  <TR> <TD align="right"> 43 </TD> <TD> Per2 </TD> </TR>
  <TR> <TD align="right"> 44 </TD> <TD> Rpl30 </TD> </TR>
  <TR> <TD align="right"> 45 </TD> <TD> Tpt1 </TD> </TR>
  <TR> <TD align="right"> 46 </TD> <TD> Zbtb40 </TD> </TR>
  <TR> <TD align="right"> 47 </TD> <TD> Rpl34 </TD> </TR>
  <TR> <TD align="right"> 48 </TD> <TD> Ppia </TD> </TR>
  <TR> <TD align="right"> 49 </TD> <TD> Gm7292 </TD> </TR>
  <TR> <TD align="right"> 50 </TD> <TD> H2-Bl </TD> </TR>
  <TR> <TD align="right"> 51 </TD> <TD> Wdfy1 </TD> </TR>
  <TR> <TD align="right"> 52 </TD> <TD> Hspa1b </TD> </TR>
  <TR> <TD align="right"> 53 </TD> <TD> Hspa1a </TD> </TR>
  <TR> <TD align="right"> 54 </TD> <TD> AA465934 </TD> </TR>
  <TR> <TD align="right"> 55 </TD> <TD> LacZ </TD> </TR>
   </TABLE>

### Matrix of gene significant differences between conditions

(skip for Brainmap wt-v-ko comparisons)

![plot of chunk sigMatrix](figure/Celrr/sigMatrix.png) 

### Significant gene expression differences between conditions

Expression plot (genes):
![plot of chunk sigExpression](figure/Celrr/sigExpression1.png) 

```
## Using tracking_id, rep_name as id variables
## No id variables; using all as measure variables
```

![plot of chunk sigExpression](figure/Celrr/sigExpression2.png) 

Significant genes with expression >50fpkm (any condition):

```
## Using tracking_id, sample_name as id variables
```

![plot of chunk highly expressed sig](figure/Celrr/highly expressed sig.png) 

An individual look at each of the highly expressed significantly differentially regulated genes:
(eval=false for first pass)



### Expression-level/significance relationship

Scatter plot of significant genes only:

```
## Using tracking_id, sample_name as id variables
```

```
## Error: One or more values of 'x' or 'y' are not valid sample names!
```

Volcano plot with significant genes only:

```
## Error: One or more values of 'x' or 'y' are not valid sample names!
```


## Differential Splicing

### Differential Isoforms between conditions
Per isoform difference between conditions:
![plot of chunk diff.iso](figure/Celrr/diff.iso.png) 

These isoforms are:
<!-- html table generated in R 3.0.2 by xtable 1.7-3 package -->
<!-- Mon Jun 16 16:54:07 2014 -->
<TABLE border=1>
<TR> <TH>  </TH> <TH> isoAnnot$gene_short_name </TH>  </TR>
  <TR> <TD align="right"> 1 </TD> <TD> Chordc1 </TD> </TR>
  <TR> <TD align="right"> 2 </TD> <TD> Hif3a </TD> </TR>
  <TR> <TD align="right"> 3 </TD> <TD> Nes </TD> </TR>
  <TR> <TD align="right"> 4 </TD> <TD> Dnajb1 </TD> </TR>
  <TR> <TD align="right"> 5 </TD> <TD> Dio2 </TD> </TR>
  <TR> <TD align="right"> 6 </TD> <TD> Btg2 </TD> </TR>
  <TR> <TD align="right"> 7 </TD> <TD> Xbp1 </TD> </TR>
  <TR> <TD align="right"> 8 </TD> <TD> Pdia6 </TD> </TR>
  <TR> <TD align="right"> 9 </TD> <TD> Serpina3n </TD> </TR>
  <TR> <TD align="right"> 10 </TD> <TD> Fos </TD> </TR>
  <TR> <TD align="right"> 11 </TD> <TD> Fam107a </TD> </TR>
  <TR> <TD align="right"> 12 </TD> <TD> Arc </TD> </TR>
  <TR> <TD align="right"> 13 </TD> <TD> Sdf2l1 </TD> </TR>
  <TR> <TD align="right"> 14 </TD> <TD> Nr4a1 </TD> </TR>
  <TR> <TD align="right"> 15 </TD> <TD> Dusp1 </TD> </TR>
  <TR> <TD align="right"> 16 </TD> <TD> Pdia4 </TD> </TR>
  <TR> <TD align="right"> 17 </TD> <TD> Hspa5 </TD> </TR>
  <TR> <TD align="right"> 18 </TD> <TD> Vcam1 </TD> </TR>
  <TR> <TD align="right"> 19 </TD> <TD> Hddc3 </TD> </TR>
  <TR> <TD align="right"> 20 </TD> <TD> Mt3 </TD> </TR>
  <TR> <TD align="right"> 21 </TD> <TD> Mt2 </TD> </TR>
  <TR> <TD align="right"> 22 </TD> <TD> Mt1 </TD> </TR>
  <TR> <TD align="right"> 23 </TD> <TD> Ptgs2 </TD> </TR>
  <TR> <TD align="right"> 24 </TD> <TD> Lars2 </TD> </TR>
  <TR> <TD align="right"> 25 </TD> <TD> Egr1 </TD> </TR>
  <TR> <TD align="right"> 26 </TD> <TD> Gm9493 </TD> </TR>
  <TR> <TD align="right"> 27 </TD> <TD> Cirbp </TD> </TR>
  <TR> <TD align="right"> 28 </TD> <TD> Trim39 </TD> </TR>
  <TR> <TD align="right"> 29 </TD> <TD> Npas4 </TD> </TR>
  <TR> <TD align="right"> 30 </TD> <TD> Tmem252 </TD> </TR>
  <TR> <TD align="right"> 31 </TD> <TD> Opalin </TD> </TR>
  <TR> <TD align="right"> 32 </TD> <TD> Cd14 </TD> </TR>
  <TR> <TD align="right"> 33 </TD> <TD> Per2 </TD> </TR>
  <TR> <TD align="right"> 34 </TD> <TD> Zbtb40 </TD> </TR>
  <TR> <TD align="right"> 35 </TD> <TD> Gm7292 </TD> </TR>
  <TR> <TD align="right"> 36 </TD> <TD> Wdfy1 </TD> </TR>
  <TR> <TD align="right"> 37 </TD> <TD> Hspa1b </TD> </TR>
  <TR> <TD align="right"> 38 </TD> <TD> Hspa1a </TD> </TR>
  <TR> <TD align="right"> 39 </TD> <TD> Neat1 </TD> </TR>
  <TR> <TD align="right"> 40 </TD> <TD> LacZ </TD> </TR>
   </TABLE>



```
## Using tracking_id, rep_name as id variables
```

![plot of chunk isoform heatmap](figure/Celrr/isoform heatmap.png) 

### Differential Splicing between conditions

(eval false for first pass)

Per condition differences in isoforms (Does gene have diff piechart between conditions?)



These genes are:


Splicing heatmap by isoform:


Splicing heatmap by gene


The following are significantly differentially spliced genes (relative portion of isoform per condition): 





 






# Gene/Pathway Analysis

## GSEA





![plot of chunk print GSEA biocarta](figure/Celrr/print GSEA biocarta.png) 

![plot of chunk print GSEA reactome](figure/Celrr/print GSEA reactome.png) 

## GO enrichment 
Cluster profiler used to call enichments of significantly differentially regulated genes that map to Entrez IDs. 

Description/explanation of what's here, and justify all choices. 




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
## [1] "ERROR: The estimated pi0 <= 0. Check that you have valid p-values or use another lambda method."
```

```
## [1] "ERROR: The estimated pi0 <= 0. Check that you have valid p-values or use another lambda method."
```

![plot of chunk GO figures](figure/Celrr/GO figures1.png) ![plot of chunk GO figures](figure/Celrr/GO figures2.png) ![plot of chunk GO figures](figure/Celrr/GO figures3.png) ![plot of chunk GO figures](figure/Celrr/GO figures4.png) ![plot of chunk GO figures](figure/Celrr/GO figures5.png) 

# Cis vs Trans (locally)



# Notes

## Samples used are:
<!-- html table generated in R 3.0.2 by xtable 1.7-3 package -->
<!-- Mon Jun 16 16:56:28 2014 -->
<TABLE border=1>
<TR> <TH>  </TH> <TH> 10 </TH>  </TR>
  <TR> <TD align="right"> 1 </TD> <TD> JR729 </TD> </TR>
  <TR> <TD align="right"> 2 </TD> <TD> JR728 </TD> </TR>
  <TR> <TD align="right"> 3 </TD> <TD> JR796 </TD> </TR>
  <TR> <TD align="right"> 4 </TD> <TD> JR797 </TD> </TR>
  <TR> <TD align="right"> 5 </TD> <TD> JR740 </TD> </TR>
  <TR> <TD align="right"> 6 </TD> <TD> JR800 </TD> </TR>
  <TR> <TD align="right"> 7 </TD> <TD> JR827 </TD> </TR>
  <TR> <TD align="right"> 8 </TD> <TD> JR778 </TD> </TR>
  <TR> <TD align="right"> 9 </TD> <TD> JR734 </TD> </TR>
  <TR> <TD align="right"> 10 </TD> <TD> JR802 </TD> </TR>
  <TR> <TD align="right"> 11 </TD> <TD> JR803 </TD> </TR>
  <TR> <TD align="right"> 12 </TD> <TD> JR735 </TD> </TR>
  <TR> <TD align="right"> 13 </TD> <TD> JR817 </TD> </TR>
  <TR> <TD align="right"> 14 </TD> <TD> JR785 </TD> </TR>
  <TR> <TD align="right"> 15 </TD> <TD> JR781 </TD> </TR>
  <TR> <TD align="right"> 16 </TD> <TD> JR739 </TD> </TR>
  <TR> <TD align="right"> 17 </TD> <TD> JR783 </TD> </TR>
  <TR> <TD align="right"> 18 </TD> <TD> JR804 </TD> </TR>
   </TABLE>

## Replicates
<!-- html table generated in R 3.0.2 by xtable 1.7-3 package -->
<!-- Mon Jun 16 16:56:28 2014 -->
<TABLE border=1>
<TR> <TH>  </TH> <TH> file </TH> <TH> sample_name </TH> <TH> replicate </TH> <TH> rep_name </TH> <TH> total_mass </TH> <TH> norm_mass </TH> <TH> internal_scale </TH> <TH> external_scale </TH>  </TR>
  <TR> <TD align="right"> 1 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR729/abundances.cxb </TD> <TD> WT </TD> <TD align="right">   0 </TD> <TD> WT_0 </TD> <TD align="right"> 26338300.00 </TD> <TD align="right"> 33696500.00 </TD> <TD align="right"> 0.78 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 2 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR728/abundances.cxb </TD> <TD> WT </TD> <TD align="right">   1 </TD> <TD> WT_1 </TD> <TD align="right"> 20332100.00 </TD> <TD align="right"> 33696500.00 </TD> <TD align="right"> 0.60 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 3 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR796/abundances.cxb </TD> <TD> WT </TD> <TD align="right">   2 </TD> <TD> WT_2 </TD> <TD align="right"> 34093300.00 </TD> <TD align="right"> 33696500.00 </TD> <TD align="right"> 1.01 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 4 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR797/abundances.cxb </TD> <TD> WT </TD> <TD align="right">   3 </TD> <TD> WT_3 </TD> <TD align="right"> 28111900.00 </TD> <TD align="right"> 33696500.00 </TD> <TD align="right"> 0.82 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 5 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR740/abundances.cxb </TD> <TD> WT </TD> <TD align="right">   4 </TD> <TD> WT_4 </TD> <TD align="right"> 35813300.00 </TD> <TD align="right"> 33696500.00 </TD> <TD align="right"> 1.06 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 6 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR800/abundances.cxb </TD> <TD> WT </TD> <TD align="right">   5 </TD> <TD> WT_5 </TD> <TD align="right"> 37017800.00 </TD> <TD align="right"> 33696500.00 </TD> <TD align="right"> 1.10 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 7 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR827/abundances.cxb </TD> <TD> WT </TD> <TD align="right">   6 </TD> <TD> WT_6 </TD> <TD align="right"> 27790600.00 </TD> <TD align="right"> 33696500.00 </TD> <TD align="right"> 0.83 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 8 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR778/abundances.cxb </TD> <TD> WT </TD> <TD align="right">   7 </TD> <TD> WT_7 </TD> <TD align="right"> 39549100.00 </TD> <TD align="right"> 33696500.00 </TD> <TD align="right"> 1.19 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 9 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR734/abundances.cxb </TD> <TD> WT </TD> <TD align="right">   8 </TD> <TD> WT_8 </TD> <TD align="right"> 34485000.00 </TD> <TD align="right"> 33696500.00 </TD> <TD align="right"> 1.04 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 10 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR802/abundances.cxb </TD> <TD> WT </TD> <TD align="right">   9 </TD> <TD> WT_9 </TD> <TD align="right"> 45472800.00 </TD> <TD align="right"> 33696500.00 </TD> <TD align="right"> 1.34 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 11 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR803/abundances.cxb </TD> <TD> WT </TD> <TD align="right">  10 </TD> <TD> WT_10 </TD> <TD align="right"> 52136700.00 </TD> <TD align="right"> 33696500.00 </TD> <TD align="right"> 1.55 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 12 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR735/abundances.cxb </TD> <TD> WT </TD> <TD align="right">  11 </TD> <TD> WT_11 </TD> <TD align="right"> 34999600.00 </TD> <TD align="right"> 33696500.00 </TD> <TD align="right"> 1.04 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 13 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR817/abundances.cxb </TD> <TD> WT </TD> <TD align="right">  12 </TD> <TD> WT_12 </TD> <TD align="right"> 30811500.00 </TD> <TD align="right"> 33696500.00 </TD> <TD align="right"> 0.92 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 14 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR785/abundances.cxb </TD> <TD> WT </TD> <TD align="right">  13 </TD> <TD> WT_13 </TD> <TD align="right"> 34180700.00 </TD> <TD align="right"> 33696500.00 </TD> <TD align="right"> 1.00 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 15 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR781/abundances.cxb </TD> <TD> WT </TD> <TD align="right">  14 </TD> <TD> WT_14 </TD> <TD align="right"> 41544600.00 </TD> <TD align="right"> 33696500.00 </TD> <TD align="right"> 1.24 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 16 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR739/abundances.cxb </TD> <TD> Celrr </TD> <TD align="right">   0 </TD> <TD> Celrr_0 </TD> <TD align="right"> 23329000.00 </TD> <TD align="right"> 33696500.00 </TD> <TD align="right"> 0.69 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 17 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR783/abundances.cxb </TD> <TD> Celrr </TD> <TD align="right">   1 </TD> <TD> Celrr_1 </TD> <TD align="right"> 37164200.00 </TD> <TD align="right"> 33696500.00 </TD> <TD align="right"> 1.10 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 18 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR804/abundances.cxb </TD> <TD> Celrr </TD> <TD align="right">   2 </TD> <TD> Celrr_2 </TD> <TD align="right"> 39723200.00 </TD> <TD align="right"> 33696500.00 </TD> <TD align="right"> 1.16 </TD> <TD align="right"> 1.00 </TD> </TR>
   </TABLE>

## Session Info

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
##  [7] cluster_1.15.2         colorspace_1.2-4       dichromat_2.0-0       
## [10] digest_0.6.4           DO.db_2.7              evaluate_0.5.5        
## [13] formatR_0.10           Formula_1.1-1          gdata_2.13.3          
## [16] GenomicFeatures_1.14.5 GOSemSim_1.20.3        graph_1.40.1          
## [19] graphite_1.8.1         gtools_3.4.1           Hmisc_3.14-4          
## [22] igraph_0.7.1           KEGG.db_2.10.1         KernSmooth_2.23-12    
## [25] labeling_0.2           lattice_0.20-29        latticeExtra_0.6-26   
## [28] markdown_0.7           MASS_7.3-33            Matrix_1.1-3          
## [31] mime_0.1.1             munsell_0.4.2          org.Hs.eg.db_2.10.1   
## [34] plyr_1.8.1             proto_0.3-10           qvalue_1.36.0         
## [37] RColorBrewer_1.0-5     Rcpp_0.11.1            RCurl_1.95-4.1        
## [40] reactome.db_1.46.1     Rsamtools_1.14.3       scales_0.2.4          
## [43] splines_3.0.2          stats4_3.0.2           stringr_0.6.2         
## [46] survival_2.37-7        tcltk_3.0.2            tools_3.0.2           
## [49] XML_3.98-1.1           zlibbioc_1.8.0
```

## Run Info

```
##           param
## 1      cmd_line
## 2       version
## 3  SVN_revision
## 4 boost_version
## 5        genome
##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              value
## 1 cuffdiff -p 10 -L WT,Celrr -o /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/diffs/Celrr_vs_WT_Adult /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/annotation/mm10_gencode_vM2_with_lncRNAs_and_LacZ.gtf /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR729/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR728/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR796/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR797/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR740/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR800/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR827/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR778/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR734/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR802/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR803/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR735/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR817/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR785/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR781/abundances.cxb /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR739/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR783/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR804/abundances.cxb 
## 2                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            2.2.1
## 3                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             4237
## 4                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           104700
## 5                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             mm10
```
