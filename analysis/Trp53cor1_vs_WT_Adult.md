Trp53cor1 KO vs WT (Adult)
======================================


- add labels, descriptions
- turn off all caching ! 
- other heatmap labels (csHeatmap)
- overlap figure
- tracks 
- should import litter info






# Intialize


# Design Overview

This file shows the wt-v-ko comparison for Trp53cor1. 

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
![plot of chunk CV genes](figure/Trp53cor1/Adult/CV genes.png) 


Isoforms: 
![plot of chunk cv iso](figure/Trp53cor1/Adult/cv iso.png) 

## Volcano

```
## Error: One or more values of 'x' or 'y' are not valid sample names!
```

### Volcano matrix (replicates)

![plot of chunk volcano matrix](figure/Trp53cor1/Adult/volcano matrix.png) 

## MvA plot

```
## Error: non-numeric argument to binary operator
```
   
### MvA plot counts

```
## Error: non-numeric argument to binary operator
```

## Scatterplot
![plot of chunk scatterplot](figure/Trp53cor1/Adult/scatterplot.png) 

### Scatter matrix (replicates) -- SKIP FOR NOW CAUSING PROBLEMS 




## Distributions

### Boxplots

Boxplot (genes)

![plot of chunk boxplot genes](figure/Trp53cor1/Adult/boxplot genes.png) 

Boxplot (genes, replicates)

![plot of chunk boxplot genes replicates](figure/Trp53cor1/Adult/boxplot genes replicates.png) 

Boxplot (isoforms)

![plot of chunk boxplot isoforms](figure/Trp53cor1/Adult/boxplot isoforms.png) 

Boxplot (isoforms, replicates)

![plot of chunk boxplot isoforms replicates](figure/Trp53cor1/Adult/boxplot isoforms replicates.png) 

### Density

Density (genes)

![plot of chunk density](figure/Trp53cor1/Adult/density.png) 

Density (genes, replicates)

![plot of chunk density w replicates](figure/Trp53cor1/Adult/density w replicates.png) 


## Clustering

### Replicate Clusters
![plot of chunk replicate clusters](figure/Trp53cor1/Adult/replicate clusters.png) 

```
## 'dendrogram' with 2 branches and 18 members total, at height 0.07546
```

### PCA (genes)
![plot of chunk PCA](figure/Trp53cor1/Adult/PCA.png) 

### MDS (genes)
![plot of chunk MDS](figure/Trp53cor1/Adult/MDS.png) 





# KO assessment

## Endogenous lncRNA expression

![plot of chunk Enodenous lncRNA tables](figure/Trp53cor1/Adult/Enodenous lncRNA tables.png) 

Endogenous expression of Trp53cor1 isoforms:

![plot of chunk endogenous iso](figure/Trp53cor1/Adult/endogenous iso.png) 

Barplot of gene expression:

![plot of chunk endogenous barplot](figure/Trp53cor1/Adult/endogenous barplot.png) 

Barplot of isoform expression:

![plot of chunk endogenous iso barplot](figure/Trp53cor1/Adult/endogenous iso barplot.png) 


## LacZ expression

![plot of chunk LacZ expression](figure/Trp53cor1/Adult/LacZ expression1.png) ![plot of chunk LacZ expression](figure/Trp53cor1/Adult/LacZ expression2.png) 


## Digital Genotyping (LacZ vs Endogenous lncRNA and Sex)
Expression plot (endogenous linc, lacZ, Y-expressed gene):

![plot of chunk Digital Genotyping](figure/Trp53cor1/Adult/Digital Genotyping.png) 

Expression heatmap:
![plot of chunk digital geno heatmap](figure/Trp53cor1/Adult/digital geno heatmap.png) 

# Differential Analysis

## Differential Genes 



There are 71 significantly differentially expressed genes. They are:

<!-- html table generated in R 3.0.2 by xtable 1.7-3 package -->
<!-- Tue Jun 17 00:52:22 2014 -->
<TABLE border=1>
<TR> <TH>  </TH> <TH> geneAnnot$gene_short_name </TH>  </TR>
  <TR> <TD align="right"> 1 </TD> <TD> Gabra2 </TD> </TR>
  <TR> <TD align="right"> 2 </TD> <TD> Arrdc2 </TD> </TR>
  <TR> <TD align="right"> 3 </TD> <TD> Klf4 </TD> </TR>
  <TR> <TD align="right"> 4 </TD> <TD> Nes </TD> </TR>
  <TR> <TD align="right"> 5 </TD> <TD> Epha2 </TD> </TR>
  <TR> <TD align="right"> 6 </TD> <TD> Khsrp </TD> </TR>
  <TR> <TD align="right"> 7 </TD> <TD> Odc1 </TD> </TR>
  <TR> <TD align="right"> 8 </TD> <TD> Tjap1 </TD> </TR>
  <TR> <TD align="right"> 9 </TD> <TD> Etnppl </TD> </TR>
  <TR> <TD align="right"> 10 </TD> <TD> Fabp7 </TD> </TR>
  <TR> <TD align="right"> 11 </TD> <TD> Sgk1 </TD> </TR>
  <TR> <TD align="right"> 12 </TD> <TD> Adi1 </TD> </TR>
  <TR> <TD align="right"> 13 </TD> <TD> Serpina3n </TD> </TR>
  <TR> <TD align="right"> 14 </TD> <TD> Kcnv1 </TD> </TR>
  <TR> <TD align="right"> 15 </TD> <TD> Cdkn1a </TD> </TR>
  <TR> <TD align="right"> 16 </TD> <TD> Park2 </TD> </TR>
  <TR> <TD align="right"> 17 </TD> <TD> Flywch2 </TD> </TR>
  <TR> <TD align="right"> 18 </TD> <TD> Mut </TD> </TR>
  <TR> <TD align="right"> 19 </TD> <TD> Enpp4 </TD> </TR>
  <TR> <TD align="right"> 20 </TD> <TD> Ppil1 </TD> </TR>
  <TR> <TD align="right"> 21 </TD> <TD> Cpne5 </TD> </TR>
  <TR> <TD align="right"> 22 </TD> <TD> Pi16 </TD> </TR>
  <TR> <TD align="right"> 23 </TD> <TD> Glo1 </TD> </TR>
  <TR> <TD align="right"> 24 </TD> <TD> Prss41 </TD> </TR>
  <TR> <TD align="right"> 25 </TD> <TD> Atp6v0c </TD> </TR>
  <TR> <TD align="right"> 26 </TD> <TD> Spsb3 </TD> </TR>
  <TR> <TD align="right"> 27 </TD> <TD> Adamts10 </TD> </TR>
  <TR> <TD align="right"> 28 </TD> <TD> Rps24 </TD> </TR>
  <TR> <TD align="right"> 29 </TD> <TD> Slc2a1 </TD> </TR>
  <TR> <TD align="right"> 30 </TD> <TD> Adamts9 </TD> </TR>
  <TR> <TD align="right"> 31 </TD> <TD> Gkn3 </TD> </TR>
  <TR> <TD align="right"> 32 </TD> <TD> A2m </TD> </TR>
  <TR> <TD align="right"> 33 </TD> <TD> Hddc3 </TD> </TR>
  <TR> <TD align="right"> 34 </TD> <TD> Plat </TD> </TR>
  <TR> <TD align="right"> 35 </TD> <TD> Tlr13 </TD> </TR>
  <TR> <TD align="right"> 36 </TD> <TD> Arhgap27 </TD> </TR>
  <TR> <TD align="right"> 37 </TD> <TD> Rnps1 </TD> </TR>
  <TR> <TD align="right"> 38 </TD> <TD> Lars2 </TD> </TR>
  <TR> <TD align="right"> 39 </TD> <TD> 3110052M02Rik </TD> </TR>
  <TR> <TD align="right"> 40 </TD> <TD> Decr2 </TD> </TR>
  <TR> <TD align="right"> 41 </TD> <TD> Cramp1l </TD> </TR>
  <TR> <TD align="right"> 42 </TD> <TD> Gm129 </TD> </TR>
  <TR> <TD align="right"> 43 </TD> <TD> Akap12 </TD> </TR>
  <TR> <TD align="right"> 44 </TD> <TD> Itpkb </TD> </TR>
  <TR> <TD align="right"> 45 </TD> <TD> Lyplal1 </TD> </TR>
  <TR> <TD align="right"> 46 </TD> <TD> Fmo2 </TD> </TR>
  <TR> <TD align="right"> 47 </TD> <TD> Maff </TD> </TR>
  <TR> <TD align="right"> 48 </TD> <TD> Gm9493 </TD> </TR>
  <TR> <TD align="right"> 49 </TD> <TD> Zfp758 </TD> </TR>
  <TR> <TD align="right"> 50 </TD> <TD> Acp1 </TD> </TR>
  <TR> <TD align="right"> 51 </TD> <TD> Hmga1 </TD> </TR>
  <TR> <TD align="right"> 52 </TD> <TD> Tmem252 </TD> </TR>
  <TR> <TD align="right"> 53 </TD> <TD> Pla2g4e </TD> </TR>
  <TR> <TD align="right"> 54 </TD> <TD> Tagap1 </TD> </TR>
  <TR> <TD align="right"> 55 </TD> <TD> Arntl </TD> </TR>
  <TR> <TD align="right"> 56 </TD> <TD> Klf2 </TD> </TR>
  <TR> <TD align="right"> 57 </TD> <TD> Per2 </TD> </TR>
  <TR> <TD align="right"> 58 </TD> <TD> H2-T22 </TD> </TR>
  <TR> <TD align="right"> 59 </TD> <TD> Ide </TD> </TR>
  <TR> <TD align="right"> 60 </TD> <TD> Gm10123 </TD> </TR>
  <TR> <TD align="right"> 61 </TD> <TD> H2-T23 </TD> </TR>
  <TR> <TD align="right"> 62 </TD> <TD> Zfp760 </TD> </TR>
  <TR> <TD align="right"> 63 </TD> <TD> Ddx3y </TD> </TR>
  <TR> <TD align="right"> 64 </TD> <TD> Gm7292 </TD> </TR>
  <TR> <TD align="right"> 65 </TD> <TD> H2-Bl </TD> </TR>
  <TR> <TD align="right"> 66 </TD> <TD> 9030025P20Rik </TD> </TR>
  <TR> <TD align="right"> 67 </TD> <TD> Mog </TD> </TR>
  <TR> <TD align="right"> 68 </TD> <TD> Apold1 </TD> </TR>
  <TR> <TD align="right"> 69 </TD> <TD> AA465934 </TD> </TR>
  <TR> <TD align="right"> 70 </TD> <TD> Gm9825 </TD> </TR>
  <TR> <TD align="right"> 71 </TD> <TD> Tmem181b-ps </TD> </TR>
   </TABLE>

### Matrix of gene significant differences between conditions

(skip for Brainmap wt-v-ko comparisons)

![plot of chunk sigMatrix](figure/Trp53cor1/Adult/sigMatrix.png) 

### Significant gene expression differences between conditions

Expression plot (genes):
![plot of chunk sigExpression](figure/Trp53cor1/Adult/sigExpression1.png) ![plot of chunk sigExpression](figure/Trp53cor1/Adult/sigExpression2.png) 

Significant genes with expression >50fpkm (any condition):
![plot of chunk highly expressed sig](figure/Trp53cor1/Adult/highly expressed sig.png) 

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
![plot of chunk diff.iso](figure/Trp53cor1/Adult/diff.iso.png) 

These isoforms are:
<!-- html table generated in R 3.0.2 by xtable 1.7-3 package -->
<!-- Tue Jun 17 00:52:34 2014 -->
<TABLE border=1>
<TR> <TH>  </TH> <TH> isoAnnot$gene_short_name </TH>  </TR>
  <TR> <TD align="right"> 1 </TD> <TD> Gabra2 </TD> </TR>
  <TR> <TD align="right"> 2 </TD> <TD> Rec8 </TD> </TR>
  <TR> <TD align="right"> 3 </TD> <TD> Arrdc2 </TD> </TR>
  <TR> <TD align="right"> 4 </TD> <TD> Klf4 </TD> </TR>
  <TR> <TD align="right"> 5 </TD> <TD> Nes </TD> </TR>
  <TR> <TD align="right"> 6 </TD> <TD> Prlr </TD> </TR>
  <TR> <TD align="right"> 7 </TD> <TD> Epha2 </TD> </TR>
  <TR> <TD align="right"> 8 </TD> <TD> Khsrp </TD> </TR>
  <TR> <TD align="right"> 9 </TD> <TD> Etnppl </TD> </TR>
  <TR> <TD align="right"> 10 </TD> <TD> Fabp7 </TD> </TR>
  <TR> <TD align="right"> 11 </TD> <TD> Serpina3n </TD> </TR>
  <TR> <TD align="right"> 12 </TD> <TD> Kcnv1 </TD> </TR>
  <TR> <TD align="right"> 13 </TD> <TD> Tfrc </TD> </TR>
  <TR> <TD align="right"> 14 </TD> <TD> Cdkn1a </TD> </TR>
  <TR> <TD align="right"> 15 </TD> <TD> Hcfc1r1 </TD> </TR>
  <TR> <TD align="right"> 16 </TD> <TD> Flywch2 </TD> </TR>
  <TR> <TD align="right"> 17 </TD> <TD> Mut </TD> </TR>
  <TR> <TD align="right"> 18 </TD> <TD> Ppil1 </TD> </TR>
  <TR> <TD align="right"> 19 </TD> <TD> Cpne5 </TD> </TR>
  <TR> <TD align="right"> 20 </TD> <TD> Glo1 </TD> </TR>
  <TR> <TD align="right"> 21 </TD> <TD> Atp6v0c </TD> </TR>
  <TR> <TD align="right"> 22 </TD> <TD> Adamts10 </TD> </TR>
  <TR> <TD align="right"> 23 </TD> <TD> Rps24 </TD> </TR>
  <TR> <TD align="right"> 24 </TD> <TD> Gng13 </TD> </TR>
  <TR> <TD align="right"> 25 </TD> <TD> Edn3 </TD> </TR>
  <TR> <TD align="right"> 26 </TD> <TD> Gkn3 </TD> </TR>
  <TR> <TD align="right"> 27 </TD> <TD> A2m </TD> </TR>
  <TR> <TD align="right"> 28 </TD> <TD> Hddc3 </TD> </TR>
  <TR> <TD align="right"> 29 </TD> <TD> Rnps1 </TD> </TR>
  <TR> <TD align="right"> 30 </TD> <TD> Lars2 </TD> </TR>
  <TR> <TD align="right"> 31 </TD> <TD> 3110052M02Rik </TD> </TR>
  <TR> <TD align="right"> 32 </TD> <TD> Decr2 </TD> </TR>
  <TR> <TD align="right"> 33 </TD> <TD> Cramp1l </TD> </TR>
  <TR> <TD align="right"> 34 </TD> <TD> Ano2 </TD> </TR>
  <TR> <TD align="right"> 35 </TD> <TD> Akap12 </TD> </TR>
  <TR> <TD align="right"> 36 </TD> <TD> Lyplal1 </TD> </TR>
  <TR> <TD align="right"> 37 </TD> <TD> Bub1b </TD> </TR>
  <TR> <TD align="right"> 38 </TD> <TD> Fmo2 </TD> </TR>
  <TR> <TD align="right"> 39 </TD> <TD> Amot </TD> </TR>
  <TR> <TD align="right"> 40 </TD> <TD> Gm9493 </TD> </TR>
  <TR> <TD align="right"> 41 </TD> <TD> Tmem252 </TD> </TR>
  <TR> <TD align="right"> 42 </TD> <TD> Pla2g4e </TD> </TR>
  <TR> <TD align="right"> 43 </TD> <TD> Tagap1 </TD> </TR>
  <TR> <TD align="right"> 44 </TD> <TD> Arntl </TD> </TR>
  <TR> <TD align="right"> 45 </TD> <TD> Per2 </TD> </TR>
  <TR> <TD align="right"> 46 </TD> <TD> Ide </TD> </TR>
  <TR> <TD align="right"> 47 </TD> <TD> Zfp945 </TD> </TR>
  <TR> <TD align="right"> 48 </TD> <TD> Zfp760 </TD> </TR>
  <TR> <TD align="right"> 49 </TD> <TD> Ddx3y </TD> </TR>
  <TR> <TD align="right"> 50 </TD> <TD> Fndc1 </TD> </TR>
  <TR> <TD align="right"> 51 </TD> <TD> H2-Bl </TD> </TR>
  <TR> <TD align="right"> 52 </TD> <TD> Mog </TD> </TR>
  <TR> <TD align="right"> 53 </TD> <TD> Apold1 </TD> </TR>
  <TR> <TD align="right"> 54 </TD> <TD> Gm9825 </TD> </TR>
   </TABLE>



```
## Error: NaN dissimilarity value.
```

### Differential Splicing between conditions

(eval false for first pass)

Per condition differences in isoforms (Does gene have diff piechart between conditions?)



These genes are:


Splicing heatmap by isoform:


Splicing heatmap by gene


The following are significantly differentially spliced genes (relative portion of isoform per condition): 





 






# Gene/Pathway Analysis

## GSEA





![plot of chunk print GSEA biocarta](figure/Trp53cor1/Adult/print GSEA biocarta.png) 

![plot of chunk print GSEA reactome](figure/Trp53cor1/Adult/print GSEA reactome.png) 

## GO enrichment 
Cluster profiler used to call enichments of significantly differentially regulated genes that map to Entrez IDs. 






```
## Error: 'x' and 'units' must have length > 0
```

![plot of chunk GO figures](figure/Trp53cor1/Adult/GO figures1.png) 

```
## Error: 'x' and 'units' must have length > 0
```

![plot of chunk GO figures](figure/Trp53cor1/Adult/GO figures2.png) 

```
## Error: need finite 'xlim' values
```

![plot of chunk GO figures](figure/Trp53cor1/Adult/GO figures3.png) 

# Cis vs Trans (locally)



# Notes

## Samples used are:
<!-- html table generated in R 3.0.2 by xtable 1.7-3 package -->
<!-- Tue Jun 17 00:54:59 2014 -->
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
  <TR> <TD align="right"> 16 </TD> <TD> JR743 </TD> </TR>
  <TR> <TD align="right"> 17 </TD> <TD> JR786 </TD> </TR>
  <TR> <TD align="right"> 18 </TD> <TD> JR805 </TD> </TR>
   </TABLE>

## Replicates
<!-- html table generated in R 3.0.2 by xtable 1.7-3 package -->
<!-- Tue Jun 17 00:54:59 2014 -->
<TABLE border=1>
<TR> <TH>  </TH> <TH> file </TH> <TH> sample_name </TH> <TH> replicate </TH> <TH> rep_name </TH> <TH> total_mass </TH> <TH> norm_mass </TH> <TH> internal_scale </TH> <TH> external_scale </TH>  </TR>
  <TR> <TD align="right"> 1 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR729/abundances.cxb </TD> <TD> WT </TD> <TD align="right">   0 </TD> <TD> WT_0 </TD> <TD align="right"> 26338300.00 </TD> <TD align="right"> 34451500.00 </TD> <TD align="right"> 0.76 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 2 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR728/abundances.cxb </TD> <TD> WT </TD> <TD align="right">   1 </TD> <TD> WT_1 </TD> <TD align="right"> 20332100.00 </TD> <TD align="right"> 34451500.00 </TD> <TD align="right"> 0.59 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 3 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR796/abundances.cxb </TD> <TD> WT </TD> <TD align="right">   2 </TD> <TD> WT_2 </TD> <TD align="right"> 34093300.00 </TD> <TD align="right"> 34451500.00 </TD> <TD align="right"> 0.99 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 4 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR797/abundances.cxb </TD> <TD> WT </TD> <TD align="right">   3 </TD> <TD> WT_3 </TD> <TD align="right"> 28111900.00 </TD> <TD align="right"> 34451500.00 </TD> <TD align="right"> 0.81 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 5 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR740/abundances.cxb </TD> <TD> WT </TD> <TD align="right">   4 </TD> <TD> WT_4 </TD> <TD align="right"> 35813300.00 </TD> <TD align="right"> 34451500.00 </TD> <TD align="right"> 1.04 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 6 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR800/abundances.cxb </TD> <TD> WT </TD> <TD align="right">   5 </TD> <TD> WT_5 </TD> <TD align="right"> 37017800.00 </TD> <TD align="right"> 34451500.00 </TD> <TD align="right"> 1.08 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 7 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR827/abundances.cxb </TD> <TD> WT </TD> <TD align="right">   6 </TD> <TD> WT_6 </TD> <TD align="right"> 27790600.00 </TD> <TD align="right"> 34451500.00 </TD> <TD align="right"> 0.81 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 8 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR778/abundances.cxb </TD> <TD> WT </TD> <TD align="right">   7 </TD> <TD> WT_7 </TD> <TD align="right"> 39549100.00 </TD> <TD align="right"> 34451500.00 </TD> <TD align="right"> 1.16 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 9 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR734/abundances.cxb </TD> <TD> WT </TD> <TD align="right">   8 </TD> <TD> WT_8 </TD> <TD align="right"> 34485000.00 </TD> <TD align="right"> 34451500.00 </TD> <TD align="right"> 1.02 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 10 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR802/abundances.cxb </TD> <TD> WT </TD> <TD align="right">   9 </TD> <TD> WT_9 </TD> <TD align="right"> 45472800.00 </TD> <TD align="right"> 34451500.00 </TD> <TD align="right"> 1.31 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 11 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR803/abundances.cxb </TD> <TD> WT </TD> <TD align="right">  10 </TD> <TD> WT_10 </TD> <TD align="right"> 52136700.00 </TD> <TD align="right"> 34451500.00 </TD> <TD align="right"> 1.51 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 12 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR735/abundances.cxb </TD> <TD> WT </TD> <TD align="right">  11 </TD> <TD> WT_11 </TD> <TD align="right"> 34999600.00 </TD> <TD align="right"> 34451500.00 </TD> <TD align="right"> 1.02 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 13 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR817/abundances.cxb </TD> <TD> WT </TD> <TD align="right">  12 </TD> <TD> WT_12 </TD> <TD align="right"> 30811500.00 </TD> <TD align="right"> 34451500.00 </TD> <TD align="right"> 0.90 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 14 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR785/abundances.cxb </TD> <TD> WT </TD> <TD align="right">  13 </TD> <TD> WT_13 </TD> <TD align="right"> 34180700.00 </TD> <TD align="right"> 34451500.00 </TD> <TD align="right"> 0.98 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 15 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR781/abundances.cxb </TD> <TD> WT </TD> <TD align="right">  14 </TD> <TD> WT_14 </TD> <TD align="right"> 41544600.00 </TD> <TD align="right"> 34451500.00 </TD> <TD align="right"> 1.21 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 16 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR743/abundances.cxb </TD> <TD> Trp53cor </TD> <TD align="right">   0 </TD> <TD> Trp53cor_0 </TD> <TD align="right"> 32364300.00 </TD> <TD align="right"> 34451500.00 </TD> <TD align="right"> 0.94 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 17 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR786/abundances.cxb </TD> <TD> Trp53cor </TD> <TD align="right">   1 </TD> <TD> Trp53cor_1 </TD> <TD align="right"> 38190800.00 </TD> <TD align="right"> 34451500.00 </TD> <TD align="right"> 1.10 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 18 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR805/abundances.cxb </TD> <TD> Trp53cor </TD> <TD align="right">   2 </TD> <TD> Trp53cor_2 </TD> <TD align="right"> 41361600.00 </TD> <TD align="right"> 34451500.00 </TD> <TD align="right"> 1.20 </TD> <TD align="right"> 1.00 </TD> </TR>
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
##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    value
## 1 cuffdiff -p 10 -L WT,Trp53cor -o /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/diffs/Trp53cor_vs_WT_Adult /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/annotation/mm10_gencode_vM2_with_lncRNAs_and_LacZ.gtf /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR729/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR728/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR796/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR797/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR740/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR800/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR827/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR778/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR734/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR802/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR803/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR735/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR817/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR785/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR781/abundances.cxb /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR743/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR786/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR805/abundances.cxb 
## 2                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  2.2.1
## 3                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   4237
## 4                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 104700
## 5                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   mm10
```