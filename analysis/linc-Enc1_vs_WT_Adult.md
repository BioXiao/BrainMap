linc-Enc1 KO vs WT (Adult)
======================================


- add labels, descriptions
- turn off all caching ! 
- other heatmap labels (csHeatmap)
- overlap figure
- tracks 
- should import litter info






# Intialize


# Design Overview

This file shows the wt-v-ko comparison for linc-Enc1. 

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
![plot of chunk CV genes](figure/linc-Enc1/Adult/CV genes.png) 


Isoforms: 
![plot of chunk cv iso](figure/linc-Enc1/Adult/cv iso.png) 

## Volcano

```
## Error: One or more values of 'x' or 'y' are not valid sample names!
```

### Volcano matrix (replicates)

![plot of chunk volcano matrix](figure/linc-Enc1/Adult/volcano matrix.png) 

## MvA plot

```
## Error: non-numeric argument to binary operator
```
   
### MvA plot counts

```
## Error: non-numeric argument to binary operator
```

## Scatterplot
![plot of chunk scatterplot](figure/linc-Enc1/Adult/scatterplot.png) 

### Scatter matrix (replicates) -- SKIP FOR NOW CAUSING PROBLEMS 




## Distributions

### Boxplots

Boxplot (genes)

![plot of chunk boxplot genes](figure/linc-Enc1/Adult/boxplot genes.png) 

Boxplot (genes, replicates)

![plot of chunk boxplot genes replicates](figure/linc-Enc1/Adult/boxplot genes replicates.png) 

Boxplot (isoforms)

![plot of chunk boxplot isoforms](figure/linc-Enc1/Adult/boxplot isoforms.png) 

Boxplot (isoforms, replicates)

![plot of chunk boxplot isoforms replicates](figure/linc-Enc1/Adult/boxplot isoforms replicates.png) 

### Density

Density (genes)

![plot of chunk density](figure/linc-Enc1/Adult/density.png) 

Density (genes, replicates)

![plot of chunk density w replicates](figure/linc-Enc1/Adult/density w replicates.png) 


## Clustering

### Replicate Clusters
![plot of chunk replicate clusters](figure/linc-Enc1/Adult/replicate clusters.png) 

```
## 'dendrogram' with 2 branches and 18 members total, at height 0.07706
```

### PCA (genes)
![plot of chunk PCA](figure/linc-Enc1/Adult/PCA.png) 

### MDS (genes)
![plot of chunk MDS](figure/linc-Enc1/Adult/MDS.png) 





# KO assessment

## Endogenous lncRNA expression

![plot of chunk Enodenous lncRNA tables](figure/linc-Enc1/Adult/Enodenous lncRNA tables.png) 

Endogenous expression of linc-Enc1 isoforms:

![plot of chunk endogenous iso](figure/linc-Enc1/Adult/endogenous iso.png) 

Barplot of gene expression:

![plot of chunk endogenous barplot](figure/linc-Enc1/Adult/endogenous barplot.png) 

Barplot of isoform expression:

![plot of chunk endogenous iso barplot](figure/linc-Enc1/Adult/endogenous iso barplot.png) 


## LacZ expression

![plot of chunk LacZ expression](figure/linc-Enc1/Adult/LacZ expression1.png) ![plot of chunk LacZ expression](figure/linc-Enc1/Adult/LacZ expression2.png) 


## Digital Genotyping (LacZ vs Endogenous lncRNA and Sex)
Expression plot (endogenous linc, lacZ, Y-expressed gene):

![plot of chunk Digital Genotyping](figure/linc-Enc1/Adult/Digital Genotyping.png) 

Expression heatmap:
![plot of chunk digital geno heatmap](figure/linc-Enc1/Adult/digital geno heatmap.png) 

# Differential Analysis

## Differential Genes 



There are 54 significantly differentially expressed genes. They are:

<!-- html table generated in R 3.0.2 by xtable 1.7-3 package -->
<!-- Mon Jun 16 23:22:40 2014 -->
<TABLE border=1>
<TR> <TH>  </TH> <TH> geneAnnot$gene_short_name </TH>  </TR>
  <TR> <TD align="right"> 1 </TD> <TD> Nes </TD> </TR>
  <TR> <TD align="right"> 2 </TD> <TD> Dnajb1 </TD> </TR>
  <TR> <TD align="right"> 3 </TD> <TD> P4ha1 </TD> </TR>
  <TR> <TD align="right"> 4 </TD> <TD> Pttg1 </TD> </TR>
  <TR> <TD align="right"> 5 </TD> <TD> Adi1 </TD> </TR>
  <TR> <TD align="right"> 6 </TD> <TD> Psmb5 </TD> </TR>
  <TR> <TD align="right"> 7 </TD> <TD> Arc </TD> </TR>
  <TR> <TD align="right"> 8 </TD> <TD> Mut </TD> </TR>
  <TR> <TD align="right"> 9 </TD> <TD> Glo1 </TD> </TR>
  <TR> <TD align="right"> 10 </TD> <TD> Xdh </TD> </TR>
  <TR> <TD align="right"> 11 </TD> <TD> Flnb </TD> </TR>
  <TR> <TD align="right"> 12 </TD> <TD> Nnt </TD> </TR>
  <TR> <TD align="right"> 13 </TD> <TD> Lcn2 </TD> </TR>
  <TR> <TD align="right"> 14 </TD> <TD> Cyr61 </TD> </TR>
  <TR> <TD align="right"> 15 </TD> <TD> Alad </TD> </TR>
  <TR> <TD align="right"> 16 </TD> <TD> Hddc3 </TD> </TR>
  <TR> <TD align="right"> 17 </TD> <TD> Arhgap27 </TD> </TR>
  <TR> <TD align="right"> 18 </TD> <TD> Supt16 </TD> </TR>
  <TR> <TD align="right"> 19 </TD> <TD> Tmem260 </TD> </TR>
  <TR> <TD align="right"> 20 </TD> <TD> Hdhd3 </TD> </TR>
  <TR> <TD align="right"> 21 </TD> <TD> Car8 </TD> </TR>
  <TR> <TD align="right"> 22 </TD> <TD> Mup4 </TD> </TR>
  <TR> <TD align="right"> 23 </TD> <TD> Enc1 </TD> </TR>
  <TR> <TD align="right"> 24 </TD> <TD> Tuba1c </TD> </TR>
  <TR> <TD align="right"> 25 </TD> <TD> 5430402E10Rik </TD> </TR>
  <TR> <TD align="right"> 26 </TD> <TD> Gm9493 </TD> </TR>
  <TR> <TD align="right"> 27 </TD> <TD> Zfp488 </TD> </TR>
  <TR> <TD align="right"> 28 </TD> <TD> Acp1 </TD> </TR>
  <TR> <TD align="right"> 29 </TD> <TD> BC048546 </TD> </TR>
  <TR> <TD align="right"> 30 </TD> <TD> Myh7 </TD> </TR>
  <TR> <TD align="right"> 31 </TD> <TD> Mup5 </TD> </TR>
  <TR> <TD align="right"> 32 </TD> <TD> Rpl30 </TD> </TR>
  <TR> <TD align="right"> 33 </TD> <TD> Cox5b </TD> </TR>
  <TR> <TD align="right"> 34 </TD> <TD> Rpl34 </TD> </TR>
  <TR> <TD align="right"> 35 </TD> <TD> Obp2a </TD> </TR>
  <TR> <TD align="right"> 36 </TD> <TD> Obp1b </TD> </TR>
  <TR> <TD align="right"> 37 </TD> <TD> Obp1a </TD> </TR>
  <TR> <TD align="right"> 38 </TD> <TD> Bpifb9b </TD> </TR>
  <TR> <TD align="right"> 39 </TD> <TD> Bpifb3 </TD> </TR>
  <TR> <TD align="right"> 40 </TD> <TD> Lcn11 </TD> </TR>
  <TR> <TD align="right"> 41 </TD> <TD> Ppp1r3e </TD> </TR>
  <TR> <TD align="right"> 42 </TD> <TD> Gm7292 </TD> </TR>
  <TR> <TD align="right"> 43 </TD> <TD> H2-Bl </TD> </TR>
  <TR> <TD align="right"> 44 </TD> <TD> Gm2373 </TD> </TR>
  <TR> <TD align="right"> 45 </TD> <TD> Obp2b </TD> </TR>
  <TR> <TD align="right"> 46 </TD> <TD> 4930412C18Rik </TD> </TR>
  <TR> <TD align="right"> 47 </TD> <TD> Apold1 </TD> </TR>
  <TR> <TD align="right"> 48 </TD> <TD> Hspa1b </TD> </TR>
  <TR> <TD align="right"> 49 </TD> <TD> Hspa1a </TD> </TR>
  <TR> <TD align="right"> 50 </TD> <TD> AA465934 </TD> </TR>
  <TR> <TD align="right"> 51 </TD> <TD> 4930480K23Rik </TD> </TR>
  <TR> <TD align="right"> 52 </TD> <TD> Gm26825 </TD> </TR>
  <TR> <TD align="right"> 53 </TD> <TD> Gm26924 </TD> </TR>
  <TR> <TD align="right"> 54 </TD> <TD> LacZ </TD> </TR>
   </TABLE>

### Matrix of gene significant differences between conditions

(skip for Brainmap wt-v-ko comparisons)

![plot of chunk sigMatrix](figure/linc-Enc1/Adult/sigMatrix.png) 

### Significant gene expression differences between conditions

Expression plot (genes):
![plot of chunk sigExpression](figure/linc-Enc1/Adult/sigExpression1.png) ![plot of chunk sigExpression](figure/linc-Enc1/Adult/sigExpression2.png) 

Significant genes with expression >50fpkm (any condition):
![plot of chunk highly expressed sig](figure/linc-Enc1/Adult/highly expressed sig.png) 

An individual look at each of the highly expressed significantly differentially regulated genes:
(eval=false for first pass)



### Expression-level/significance relationship

Scatter plot of significant genes only:

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
![plot of chunk diff.iso](figure/linc-Enc1/Adult/diff.iso.png) 

These isoforms are:
<!-- html table generated in R 3.0.2 by xtable 1.7-3 package -->
<!-- Mon Jun 16 23:22:50 2014 -->
<TABLE border=1>
<TR> <TH>  </TH> <TH> isoAnnot$gene_short_name </TH>  </TR>
  <TR> <TD align="right"> 1 </TD> <TD> Nes </TD> </TR>
  <TR> <TD align="right"> 2 </TD> <TD> Dnajb1 </TD> </TR>
  <TR> <TD align="right"> 3 </TD> <TD> Psmb5 </TD> </TR>
  <TR> <TD align="right"> 4 </TD> <TD> Tfrc </TD> </TR>
  <TR> <TD align="right"> 5 </TD> <TD> Mut </TD> </TR>
  <TR> <TD align="right"> 6 </TD> <TD> Glo1 </TD> </TR>
  <TR> <TD align="right"> 7 </TD> <TD> Xdh </TD> </TR>
  <TR> <TD align="right"> 8 </TD> <TD> Nnt </TD> </TR>
  <TR> <TD align="right"> 9 </TD> <TD> Podxl </TD> </TR>
  <TR> <TD align="right"> 10 </TD> <TD> Cyr61 </TD> </TR>
  <TR> <TD align="right"> 11 </TD> <TD> Alad </TD> </TR>
  <TR> <TD align="right"> 12 </TD> <TD> Hddc3 </TD> </TR>
  <TR> <TD align="right"> 13 </TD> <TD> Tmem260 </TD> </TR>
  <TR> <TD align="right"> 14 </TD> <TD> Hdhd3 </TD> </TR>
  <TR> <TD align="right"> 15 </TD> <TD> Car8 </TD> </TR>
  <TR> <TD align="right"> 16 </TD> <TD> Mup4 </TD> </TR>
  <TR> <TD align="right"> 17 </TD> <TD> Enc1 </TD> </TR>
  <TR> <TD align="right"> 18 </TD> <TD> Tuba1c </TD> </TR>
  <TR> <TD align="right"> 19 </TD> <TD> 5430402E10Rik </TD> </TR>
  <TR> <TD align="right"> 20 </TD> <TD> Zfp488 </TD> </TR>
  <TR> <TD align="right"> 21 </TD> <TD> BC048546 </TD> </TR>
  <TR> <TD align="right"> 22 </TD> <TD> Myh7 </TD> </TR>
  <TR> <TD align="right"> 23 </TD> <TD> Mup5 </TD> </TR>
  <TR> <TD align="right"> 24 </TD> <TD> Cox5b </TD> </TR>
  <TR> <TD align="right"> 25 </TD> <TD> Obp2a </TD> </TR>
  <TR> <TD align="right"> 26 </TD> <TD> Obp1b </TD> </TR>
  <TR> <TD align="right"> 27 </TD> <TD> Obp1a </TD> </TR>
  <TR> <TD align="right"> 28 </TD> <TD> Bpifb9b </TD> </TR>
  <TR> <TD align="right"> 29 </TD> <TD> Ppp1r3e </TD> </TR>
  <TR> <TD align="right"> 30 </TD> <TD> Gm7292 </TD> </TR>
  <TR> <TD align="right"> 31 </TD> <TD> Obp2b </TD> </TR>
  <TR> <TD align="right"> 32 </TD> <TD> 4930412C18Rik </TD> </TR>
  <TR> <TD align="right"> 33 </TD> <TD> Apold1 </TD> </TR>
  <TR> <TD align="right"> 34 </TD> <TD> Hspa1b </TD> </TR>
  <TR> <TD align="right"> 35 </TD> <TD> Hspa1a </TD> </TR>
  <TR> <TD align="right"> 36 </TD> <TD> Malat1 </TD> </TR>
  <TR> <TD align="right"> 37 </TD> <TD> 4930480K23Rik </TD> </TR>
  <TR> <TD align="right"> 38 </TD> <TD> Gm26924 </TD> </TR>
  <TR> <TD align="right"> 39 </TD> <TD> LacZ </TD> </TR>
   </TABLE>


![plot of chunk isoform heatmap](figure/linc-Enc1/Adult/isoform heatmap.png) 

### Differential Splicing between conditions

(eval false for first pass)

Per condition differences in isoforms (Does gene have diff piechart between conditions?)



These genes are:


Splicing heatmap by isoform:


Splicing heatmap by gene


The following are significantly differentially spliced genes (relative portion of isoform per condition): 





 






# Gene/Pathway Analysis

## GSEA





![plot of chunk print GSEA biocarta](figure/linc-Enc1/Adult/print GSEA biocarta.png) 

![plot of chunk print GSEA reactome](figure/linc-Enc1/Adult/print GSEA reactome.png) 

## GO enrichment 
Cluster profiler used to call enichments of significantly differentially regulated genes that map to Entrez IDs. 




```
## [1] "ERROR: The estimated pi0 <= 0. Check that you have valid p-values or use another lambda method."
```


```
## Error: 'x' and 'units' must have length > 0
```

```
## Error: 'x' and 'units' must have length > 0
```

```
## Error: 'x' and 'units' must have length > 0
```

![plot of chunk GO figures](figure/linc-Enc1/Adult/GO figures1.png) ![plot of chunk GO figures](figure/linc-Enc1/Adult/GO figures2.png) 

# Cis vs Trans (locally)



# Notes

## Samples used are:
<!-- html table generated in R 3.0.2 by xtable 1.7-3 package -->
<!-- Mon Jun 16 23:25:08 2014 -->
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
  <TR> <TD align="right"> 16 </TD> <TD> JR736 </TD> </TR>
  <TR> <TD align="right"> 17 </TD> <TD> JR779 </TD> </TR>
  <TR> <TD align="right"> 18 </TD> <TD> JR825 </TD> </TR>
   </TABLE>

## Replicates
<!-- html table generated in R 3.0.2 by xtable 1.7-3 package -->
<!-- Mon Jun 16 23:25:08 2014 -->
<TABLE border=1>
<TR> <TH>  </TH> <TH> file </TH> <TH> sample_name </TH> <TH> replicate </TH> <TH> rep_name </TH> <TH> total_mass </TH> <TH> norm_mass </TH> <TH> internal_scale </TH> <TH> external_scale </TH>  </TR>
  <TR> <TD align="right"> 1 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR729/abundances.cxb </TD> <TD> WT </TD> <TD align="right">   0 </TD> <TD> WT_0 </TD> <TD align="right"> 26338300.00 </TD> <TD align="right"> 33923600.00 </TD> <TD align="right"> 0.78 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 2 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR728/abundances.cxb </TD> <TD> WT </TD> <TD align="right">   1 </TD> <TD> WT_1 </TD> <TD align="right"> 20332100.00 </TD> <TD align="right"> 33923600.00 </TD> <TD align="right"> 0.60 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 3 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR796/abundances.cxb </TD> <TD> WT </TD> <TD align="right">   2 </TD> <TD> WT_2 </TD> <TD align="right"> 34093300.00 </TD> <TD align="right"> 33923600.00 </TD> <TD align="right"> 1.00 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 4 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR797/abundances.cxb </TD> <TD> WT </TD> <TD align="right">   3 </TD> <TD> WT_3 </TD> <TD align="right"> 28111900.00 </TD> <TD align="right"> 33923600.00 </TD> <TD align="right"> 0.82 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 5 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR740/abundances.cxb </TD> <TD> WT </TD> <TD align="right">   4 </TD> <TD> WT_4 </TD> <TD align="right"> 35813300.00 </TD> <TD align="right"> 33923600.00 </TD> <TD align="right"> 1.06 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 6 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR800/abundances.cxb </TD> <TD> WT </TD> <TD align="right">   5 </TD> <TD> WT_5 </TD> <TD align="right"> 37017800.00 </TD> <TD align="right"> 33923600.00 </TD> <TD align="right"> 1.09 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 7 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR827/abundances.cxb </TD> <TD> WT </TD> <TD align="right">   6 </TD> <TD> WT_6 </TD> <TD align="right"> 27790600.00 </TD> <TD align="right"> 33923600.00 </TD> <TD align="right"> 0.82 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 8 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR778/abundances.cxb </TD> <TD> WT </TD> <TD align="right">   7 </TD> <TD> WT_7 </TD> <TD align="right"> 39549100.00 </TD> <TD align="right"> 33923600.00 </TD> <TD align="right"> 1.18 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 9 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR734/abundances.cxb </TD> <TD> WT </TD> <TD align="right">   8 </TD> <TD> WT_8 </TD> <TD align="right"> 34485000.00 </TD> <TD align="right"> 33923600.00 </TD> <TD align="right"> 1.03 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 10 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR802/abundances.cxb </TD> <TD> WT </TD> <TD align="right">   9 </TD> <TD> WT_9 </TD> <TD align="right"> 45472800.00 </TD> <TD align="right"> 33923600.00 </TD> <TD align="right"> 1.33 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 11 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR803/abundances.cxb </TD> <TD> WT </TD> <TD align="right">  10 </TD> <TD> WT_10 </TD> <TD align="right"> 52136700.00 </TD> <TD align="right"> 33923600.00 </TD> <TD align="right"> 1.54 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 12 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR735/abundances.cxb </TD> <TD> WT </TD> <TD align="right">  11 </TD> <TD> WT_11 </TD> <TD align="right"> 34999600.00 </TD> <TD align="right"> 33923600.00 </TD> <TD align="right"> 1.04 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 13 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR817/abundances.cxb </TD> <TD> WT </TD> <TD align="right">  12 </TD> <TD> WT_12 </TD> <TD align="right"> 30811500.00 </TD> <TD align="right"> 33923600.00 </TD> <TD align="right"> 0.92 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 14 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR785/abundances.cxb </TD> <TD> WT </TD> <TD align="right">  13 </TD> <TD> WT_13 </TD> <TD align="right"> 34180700.00 </TD> <TD align="right"> 33923600.00 </TD> <TD align="right"> 0.99 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 15 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR781/abundances.cxb </TD> <TD> WT </TD> <TD align="right">  14 </TD> <TD> WT_14 </TD> <TD align="right"> 41544600.00 </TD> <TD align="right"> 33923600.00 </TD> <TD align="right"> 1.23 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 16 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR736/abundances.cxb </TD> <TD> linc_Enc1 </TD> <TD align="right">   0 </TD> <TD> linc_Enc1_0 </TD> <TD align="right"> 30105800.00 </TD> <TD align="right"> 33923600.00 </TD> <TD align="right"> 0.89 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 17 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR779/abundances.cxb </TD> <TD> linc_Enc1 </TD> <TD align="right">   1 </TD> <TD> linc_Enc1_1 </TD> <TD align="right"> 38944300.00 </TD> <TD align="right"> 33923600.00 </TD> <TD align="right"> 1.15 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 18 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR825/abundances.cxb </TD> <TD> linc_Enc1 </TD> <TD align="right">   2 </TD> <TD> linc_Enc1_2 </TD> <TD align="right"> 33179500.00 </TD> <TD align="right"> 33923600.00 </TD> <TD align="right"> 0.96 </TD> <TD align="right"> 1.00 </TD> </TR>
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
##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      value
## 1 cuffdiff -p 10 -L WT,linc-Enc1 -o /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/diffs/linc-Enc1_vs_WT_Adult /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/annotation/mm10_gencode_vM2_with_lncRNAs_and_LacZ.gtf /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR729/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR728/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR796/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR797/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR740/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR800/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR827/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR778/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR734/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR802/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR803/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR735/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR817/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR785/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR781/abundances.cxb /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR736/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR779/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR825/abundances.cxb 
## 2                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    2.2.1
## 3                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     4237
## 4                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   104700
## 5                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     mm10
```
