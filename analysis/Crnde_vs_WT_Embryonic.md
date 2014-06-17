Crnde KO vs WT (Embryonic)
======================================


- add labels, descriptions
- turn off all caching ! 
- other heatmap labels (csHeatmap)
- overlap figure
- tracks 
- should import litter info






# Intialize


# Design Overview

This file shows the wt-v-ko comparison for Crnde. 

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
![plot of chunk CV genes](figure/Crnde/Embryonic/CV genes.png) 


Isoforms: 
![plot of chunk cv iso](figure/Crnde/Embryonic/cv iso.png) 

## Volcano

```
## Error: One or more values of 'x' or 'y' are not valid sample names!
```

### Volcano matrix (replicates)

![plot of chunk volcano matrix](figure/Crnde/Embryonic/volcano matrix.png) 

## MvA plot

```
## Error: non-numeric argument to binary operator
```
   
### MvA plot counts

```
## Error: non-numeric argument to binary operator
```

## Scatterplot
![plot of chunk scatterplot](figure/Crnde/Embryonic/scatterplot.png) 

### Scatter matrix (replicates) -- SKIP FOR NOW CAUSING PROBLEMS 




## Distributions

### Boxplots

Boxplot (genes)

![plot of chunk boxplot genes](figure/Crnde/Embryonic/boxplot genes.png) 

Boxplot (genes, replicates)

![plot of chunk boxplot genes replicates](figure/Crnde/Embryonic/boxplot genes replicates.png) 

Boxplot (isoforms)

![plot of chunk boxplot isoforms](figure/Crnde/Embryonic/boxplot isoforms.png) 

Boxplot (isoforms, replicates)

![plot of chunk boxplot isoforms replicates](figure/Crnde/Embryonic/boxplot isoforms replicates.png) 

### Density

Density (genes)

![plot of chunk density](figure/Crnde/Embryonic/density.png) 

Density (genes, replicates)

![plot of chunk density w replicates](figure/Crnde/Embryonic/density w replicates.png) 


## Clustering

### Replicate Clusters
![plot of chunk replicate clusters](figure/Crnde/Embryonic/replicate clusters.png) 

```
## 'dendrogram' with 2 branches and 18 members total, at height 0.08401
```

### PCA (genes)
![plot of chunk PCA](figure/Crnde/Embryonic/PCA.png) 

### MDS (genes)
![plot of chunk MDS](figure/Crnde/Embryonic/MDS.png) 





# KO assessment

## Endogenous lncRNA expression

![plot of chunk Enodenous lncRNA tables](figure/Crnde/Embryonic/Enodenous lncRNA tables.png) 

Endogenous expression of Crnde isoforms:

![plot of chunk endogenous iso](figure/Crnde/Embryonic/endogenous iso.png) 

Barplot of gene expression:

![plot of chunk endogenous barplot](figure/Crnde/Embryonic/endogenous barplot.png) 

Barplot of isoform expression:

![plot of chunk endogenous iso barplot](figure/Crnde/Embryonic/endogenous iso barplot.png) 


## LacZ expression

![plot of chunk LacZ expression](figure/Crnde/Embryonic/LacZ expression1.png) ![plot of chunk LacZ expression](figure/Crnde/Embryonic/LacZ expression2.png) 


## Digital Genotyping (LacZ vs Endogenous lncRNA and Sex)
Expression plot (endogenous linc, lacZ, Y-expressed gene):

![plot of chunk Digital Genotyping](figure/Crnde/Embryonic/Digital Genotyping.png) 

Expression heatmap:
![plot of chunk digital geno heatmap](figure/Crnde/Embryonic/digital geno heatmap.png) 

# Differential Analysis

## Differential Genes 



There are 90 significantly differentially expressed genes. They are:

<!-- html table generated in R 3.0.2 by xtable 1.7-3 package -->
<!-- Tue Jun 17 01:07:37 2014 -->
<TABLE border=1>
<TR> <TH>  </TH> <TH> geneAnnot$gene_short_name </TH>  </TR>
  <TR> <TD align="right"> 1 </TD> <TD> Sox9 </TD> </TR>
  <TR> <TD align="right"> 2 </TD> <TD> Col6a1 </TD> </TR>
  <TR> <TD align="right"> 3 </TD> <TD> Col18a1 </TD> </TR>
  <TR> <TD align="right"> 4 </TD> <TD> Col1a1 </TD> </TR>
  <TR> <TD align="right"> 5 </TD> <TD> Lamb1 </TD> </TR>
  <TR> <TD align="right"> 6 </TD> <TD> Nes </TD> </TR>
  <TR> <TD align="right"> 7 </TD> <TD> Polr2a </TD> </TR>
  <TR> <TD align="right"> 8 </TD> <TD> Nid1 </TD> </TR>
  <TR> <TD align="right"> 9 </TD> <TD> Rplp1 </TD> </TR>
  <TR> <TD align="right"> 10 </TD> <TD> Cad </TD> </TR>
  <TR> <TD align="right"> 11 </TD> <TD> Hspa8 </TD> </TR>
  <TR> <TD align="right"> 12 </TD> <TD> Sulf1 </TD> </TR>
  <TR> <TD align="right"> 13 </TD> <TD> Dync1h1 </TD> </TR>
  <TR> <TD align="right"> 14 </TD> <TD> Lama2 </TD> </TR>
  <TR> <TD align="right"> 15 </TD> <TD> Col6a2 </TD> </TR>
  <TR> <TD align="right"> 16 </TD> <TD> Aebp1 </TD> </TR>
  <TR> <TD align="right"> 17 </TD> <TD> Prpf8 </TD> </TR>
  <TR> <TD align="right"> 18 </TD> <TD> Ntn1 </TD> </TR>
  <TR> <TD align="right"> 19 </TD> <TD> Iqgap2 </TD> </TR>
  <TR> <TD align="right"> 20 </TD> <TD> Nid2 </TD> </TR>
  <TR> <TD align="right"> 21 </TD> <TD> Sla </TD> </TR>
  <TR> <TD align="right"> 22 </TD> <TD> Myh9 </TD> </TR>
  <TR> <TD align="right"> 23 </TD> <TD> Prkdc </TD> </TR>
  <TR> <TD align="right"> 24 </TD> <TD> Tiam2 </TD> </TR>
  <TR> <TD align="right"> 25 </TD> <TD> Igf2r </TD> </TR>
  <TR> <TD align="right"> 26 </TD> <TD> Lox </TD> </TR>
  <TR> <TD align="right"> 27 </TD> <TD> Megf10 </TD> </TR>
  <TR> <TD align="right"> 28 </TD> <TD> Fbn2 </TD> </TR>
  <TR> <TD align="right"> 29 </TD> <TD> Rps14 </TD> </TR>
  <TR> <TD align="right"> 30 </TD> <TD> Pdgfrb </TD> </TR>
  <TR> <TD align="right"> 31 </TD> <TD> Flnb </TD> </TR>
  <TR> <TD align="right"> 32 </TD> <TD> Rps26 </TD> </TR>
  <TR> <TD align="right"> 33 </TD> <TD> Col5a2 </TD> </TR>
  <TR> <TD align="right"> 34 </TD> <TD> Col3a1 </TD> </TR>
  <TR> <TD align="right"> 35 </TD> <TD> Fn1 </TD> </TR>
  <TR> <TD align="right"> 36 </TD> <TD> Lamc1 </TD> </TR>
  <TR> <TD align="right"> 37 </TD> <TD> Col5a1 </TD> </TR>
  <TR> <TD align="right"> 38 </TD> <TD> Lamc3 </TD> </TR>
  <TR> <TD align="right"> 39 </TD> <TD> Notch1 </TD> </TR>
  <TR> <TD align="right"> 40 </TD> <TD> Lrp2 </TD> </TR>
  <TR> <TD align="right"> 41 </TD> <TD> Fbn1 </TD> </TR>
  <TR> <TD align="right"> 42 </TD> <TD> Lrp4 </TD> </TR>
  <TR> <TD align="right"> 43 </TD> <TD> Notch2 </TD> </TR>
  <TR> <TD align="right"> 44 </TD> <TD> Tnc </TD> </TR>
  <TR> <TD align="right"> 45 </TD> <TD> Svep1 </TD> </TR>
  <TR> <TD align="right"> 46 </TD> <TD> Sorcs2 </TD> </TR>
  <TR> <TD align="right"> 47 </TD> <TD> Col1a2 </TD> </TR>
  <TR> <TD align="right"> 48 </TD> <TD> Aldh1l1 </TD> </TR>
  <TR> <TD align="right"> 49 </TD> <TD> Emp1 </TD> </TR>
  <TR> <TD align="right"> 50 </TD> <TD> Dera </TD> </TR>
  <TR> <TD align="right"> 51 </TD> <TD> Hddc3 </TD> </TR>
  <TR> <TD align="right"> 52 </TD> <TD> Col4a5 </TD> </TR>
  <TR> <TD align="right"> 53 </TD> <TD> Col4a1 </TD> </TR>
  <TR> <TD align="right"> 54 </TD> <TD> Crnde </TD> </TR>
  <TR> <TD align="right"> 55 </TD> <TD> Itga11 </TD> </TR>
  <TR> <TD align="right"> 56 </TD> <TD> Rpsa </TD> </TR>
  <TR> <TD align="right"> 57 </TD> <TD> Lama1 </TD> </TR>
  <TR> <TD align="right"> 58 </TD> <TD> Fras1 </TD> </TR>
  <TR> <TD align="right"> 59 </TD> <TD> Lum </TD> </TR>
  <TR> <TD align="right"> 60 </TD> <TD> Wnt8b </TD> </TR>
  <TR> <TD align="right"> 61 </TD> <TD> Frem2 </TD> </TR>
  <TR> <TD align="right"> 62 </TD> <TD> Notch3 </TD> </TR>
  <TR> <TD align="right"> 63 </TD> <TD> Spon1 </TD> </TR>
  <TR> <TD align="right"> 64 </TD> <TD> Neurod2 </TD> </TR>
  <TR> <TD align="right"> 65 </TD> <TD> Satb2 </TD> </TR>
  <TR> <TD align="right"> 66 </TD> <TD> Atp5l </TD> </TR>
  <TR> <TD align="right"> 67 </TD> <TD> Mpped1 </TD> </TR>
  <TR> <TD align="right"> 68 </TD> <TD> Bend6 </TD> </TR>
  <TR> <TD align="right"> 69 </TD> <TD> Tuba1c </TD> </TR>
  <TR> <TD align="right"> 70 </TD> <TD> Gm9493 </TD> </TR>
  <TR> <TD align="right"> 71 </TD> <TD> Acp1 </TD> </TR>
  <TR> <TD align="right"> 72 </TD> <TD> Mc4r </TD> </TR>
  <TR> <TD align="right"> 73 </TD> <TD> Gm9846 </TD> </TR>
  <TR> <TD align="right"> 74 </TD> <TD> Hbb-y </TD> </TR>
  <TR> <TD align="right"> 75 </TD> <TD> Hbb-bh1 </TD> </TR>
  <TR> <TD align="right"> 76 </TD> <TD> Lamb2 </TD> </TR>
  <TR> <TD align="right"> 77 </TD> <TD> Hba-x </TD> </TR>
  <TR> <TD align="right"> 78 </TD> <TD> Kdm5d </TD> </TR>
  <TR> <TD align="right"> 79 </TD> <TD> Alox5ap </TD> </TR>
  <TR> <TD align="right"> 80 </TD> <TD> Dcc </TD> </TR>
  <TR> <TD align="right"> 81 </TD> <TD> Rpl17 </TD> </TR>
  <TR> <TD align="right"> 82 </TD> <TD> Kdr </TD> </TR>
  <TR> <TD align="right"> 83 </TD> <TD> Rpl35 </TD> </TR>
  <TR> <TD align="right"> 84 </TD> <TD> Scoc </TD> </TR>
  <TR> <TD align="right"> 85 </TD> <TD> Rpl36-ps3 </TD> </TR>
  <TR> <TD align="right"> 86 </TD> <TD> 3110035E14Rik </TD> </TR>
  <TR> <TD align="right"> 87 </TD> <TD> Flnc </TD> </TR>
  <TR> <TD align="right"> 88 </TD> <TD> Fat1 </TD> </TR>
  <TR> <TD align="right"> 89 </TD> <TD> Gm26924 </TD> </TR>
  <TR> <TD align="right"> 90 </TD> <TD> Gm19980 </TD> </TR>
   </TABLE>

### Matrix of gene significant differences between conditions

(skip for Brainmap wt-v-ko comparisons)

![plot of chunk sigMatrix](figure/Crnde/Embryonic/sigMatrix.png) 

### Significant gene expression differences between conditions

Expression plot (genes):
![plot of chunk sigExpression](figure/Crnde/Embryonic/sigExpression1.png) ![plot of chunk sigExpression](figure/Crnde/Embryonic/sigExpression2.png) 

Significant genes with expression >50fpkm (any condition):
![plot of chunk highly expressed sig](figure/Crnde/Embryonic/highly expressed sig.png) 

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
![plot of chunk diff.iso](figure/Crnde/Embryonic/diff.iso.png) 

These isoforms are:
<!-- html table generated in R 3.0.2 by xtable 1.7-3 package -->
<!-- Tue Jun 17 01:07:52 2014 -->
<TABLE border=1>
<TR> <TH>  </TH> <TH> isoAnnot$gene_short_name </TH>  </TR>
  <TR> <TD align="right"> 1 </TD> <TD> Col6a1 </TD> </TR>
  <TR> <TD align="right"> 2 </TD> <TD> Col1a1 </TD> </TR>
  <TR> <TD align="right"> 3 </TD> <TD> Lamb1 </TD> </TR>
  <TR> <TD align="right"> 4 </TD> <TD> Nes </TD> </TR>
  <TR> <TD align="right"> 5 </TD> <TD> Nid1 </TD> </TR>
  <TR> <TD align="right"> 6 </TD> <TD> Rplp1 </TD> </TR>
  <TR> <TD align="right"> 7 </TD> <TD> Cad </TD> </TR>
  <TR> <TD align="right"> 8 </TD> <TD> Dync1h1 </TD> </TR>
  <TR> <TD align="right"> 9 </TD> <TD> Lama4 </TD> </TR>
  <TR> <TD align="right"> 10 </TD> <TD> Lama2 </TD> </TR>
  <TR> <TD align="right"> 11 </TD> <TD> Col6a2 </TD> </TR>
  <TR> <TD align="right"> 12 </TD> <TD> Mrc2 </TD> </TR>
  <TR> <TD align="right"> 13 </TD> <TD> Nid2 </TD> </TR>
  <TR> <TD align="right"> 14 </TD> <TD> Myh9 </TD> </TR>
  <TR> <TD align="right"> 15 </TD> <TD> Col2a1 </TD> </TR>
  <TR> <TD align="right"> 16 </TD> <TD> Tiam2 </TD> </TR>
  <TR> <TD align="right"> 17 </TD> <TD> Igf2r </TD> </TR>
  <TR> <TD align="right"> 18 </TD> <TD> Fbn2 </TD> </TR>
  <TR> <TD align="right"> 19 </TD> <TD> Pdgfrb </TD> </TR>
  <TR> <TD align="right"> 20 </TD> <TD> Rps26 </TD> </TR>
  <TR> <TD align="right"> 21 </TD> <TD> Col5a2 </TD> </TR>
  <TR> <TD align="right"> 22 </TD> <TD> Col3a1 </TD> </TR>
  <TR> <TD align="right"> 23 </TD> <TD> Fn1 </TD> </TR>
  <TR> <TD align="right"> 24 </TD> <TD> Lamc1 </TD> </TR>
  <TR> <TD align="right"> 25 </TD> <TD> Col5a1 </TD> </TR>
  <TR> <TD align="right"> 26 </TD> <TD> Lamc3 </TD> </TR>
  <TR> <TD align="right"> 27 </TD> <TD> Notch1 </TD> </TR>
  <TR> <TD align="right"> 28 </TD> <TD> Lrp2 </TD> </TR>
  <TR> <TD align="right"> 29 </TD> <TD> Fbn1 </TD> </TR>
  <TR> <TD align="right"> 30 </TD> <TD> Rrbp1 </TD> </TR>
  <TR> <TD align="right"> 31 </TD> <TD> Notch2 </TD> </TR>
  <TR> <TD align="right"> 32 </TD> <TD> Tnc </TD> </TR>
  <TR> <TD align="right"> 33 </TD> <TD> Svep1 </TD> </TR>
  <TR> <TD align="right"> 34 </TD> <TD> Col1a2 </TD> </TR>
  <TR> <TD align="right"> 35 </TD> <TD> Emp1 </TD> </TR>
  <TR> <TD align="right"> 36 </TD> <TD> Hddc3 </TD> </TR>
  <TR> <TD align="right"> 37 </TD> <TD> Col4a1 </TD> </TR>
  <TR> <TD align="right"> 38 </TD> <TD> Rpsa </TD> </TR>
  <TR> <TD align="right"> 39 </TD> <TD> Lama1 </TD> </TR>
  <TR> <TD align="right"> 40 </TD> <TD> Fras1 </TD> </TR>
  <TR> <TD align="right"> 41 </TD> <TD> Wnt8b </TD> </TR>
  <TR> <TD align="right"> 42 </TD> <TD> Frem2 </TD> </TR>
  <TR> <TD align="right"> 43 </TD> <TD> Notch3 </TD> </TR>
  <TR> <TD align="right"> 44 </TD> <TD> Spon1 </TD> </TR>
  <TR> <TD align="right"> 45 </TD> <TD> Neurod2 </TD> </TR>
  <TR> <TD align="right"> 46 </TD> <TD> Lrp1 </TD> </TR>
  <TR> <TD align="right"> 47 </TD> <TD> Bend6 </TD> </TR>
  <TR> <TD align="right"> 48 </TD> <TD> Reln </TD> </TR>
  <TR> <TD align="right"> 49 </TD> <TD> Tuba1c </TD> </TR>
  <TR> <TD align="right"> 50 </TD> <TD> Gm9493 </TD> </TR>
  <TR> <TD align="right"> 51 </TD> <TD> Hjurp </TD> </TR>
  <TR> <TD align="right"> 52 </TD> <TD> Mc4r </TD> </TR>
  <TR> <TD align="right"> 53 </TD> <TD> Col6a3 </TD> </TR>
  <TR> <TD align="right"> 54 </TD> <TD> Gm9846 </TD> </TR>
  <TR> <TD align="right"> 55 </TD> <TD> Hbb-y </TD> </TR>
  <TR> <TD align="right"> 56 </TD> <TD> Lamb2 </TD> </TR>
  <TR> <TD align="right"> 57 </TD> <TD> Fgfr3 </TD> </TR>
  <TR> <TD align="right"> 58 </TD> <TD> Hba-x </TD> </TR>
  <TR> <TD align="right"> 59 </TD> <TD> Kdm5d </TD> </TR>
  <TR> <TD align="right"> 60 </TD> <TD> Ide </TD> </TR>
  <TR> <TD align="right"> 61 </TD> <TD> Rpl17 </TD> </TR>
  <TR> <TD align="right"> 62 </TD> <TD> Rpl36-ps3 </TD> </TR>
  <TR> <TD align="right"> 63 </TD> <TD> 3110035E14Rik </TD> </TR>
  <TR> <TD align="right"> 64 </TD> <TD> Gpr98 </TD> </TR>
  <TR> <TD align="right"> 65 </TD> <TD> Fat1 </TD> </TR>
  <TR> <TD align="right"> 66 </TD> <TD> Col22a1 </TD> </TR>
  <TR> <TD align="right"> 67 </TD> <TD> Gm26924 </TD> </TR>
  <TR> <TD align="right"> 68 </TD> <TD> Gm19980 </TD> </TR>
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





![plot of chunk print GSEA biocarta](figure/Crnde/Embryonic/print GSEA biocarta.png) 

![plot of chunk print GSEA reactome](figure/Crnde/Embryonic/print GSEA reactome.png) 

## GO enrichment 
Cluster profiler used to call enichments of significantly differentially regulated genes that map to Entrez IDs. 




```
## [1] "ERROR: The estimated pi0 <= 0. Check that you have valid p-values or use another lambda method."
```

![plot of chunk GO figures](figure/Crnde/Embryonic/GO figures1.png) ![plot of chunk GO figures](figure/Crnde/Embryonic/GO figures2.png) ![plot of chunk GO figures](figure/Crnde/Embryonic/GO figures3.png) ![plot of chunk GO figures](figure/Crnde/Embryonic/GO figures4.png) ![plot of chunk GO figures](figure/Crnde/Embryonic/GO figures5.png) 

# Cis vs Trans (locally)



# Notes

## Samples used are:
<!-- html table generated in R 3.0.2 by xtable 1.7-3 package -->
<!-- Tue Jun 17 01:10:19 2014 -->
<TABLE border=1>
<TR> <TH>  </TH> <TH> 10 </TH>  </TR>
  <TR> <TD align="right"> 1 </TD> <TD> JR753 </TD> </TR>
  <TR> <TD align="right"> 2 </TD> <TD> JR750 </TD> </TR>
  <TR> <TD align="right"> 3 </TD> <TD> JR771 </TD> </TR>
  <TR> <TD align="right"> 4 </TD> <TD> JR755 </TD> </TR>
  <TR> <TD align="right"> 5 </TD> <TD> JR811 </TD> </TR>
  <TR> <TD align="right"> 6 </TD> <TD> JR768 </TD> </TR>
  <TR> <TD align="right"> 7 </TD> <TD> JR761 </TD> </TR>
  <TR> <TD align="right"> 8 </TD> <TD> JR815 </TD> </TR>
  <TR> <TD align="right"> 9 </TD> <TD> JR789 </TD> </TR>
  <TR> <TD align="right"> 10 </TD> <TD> JR748 </TD> </TR>
  <TR> <TD align="right"> 11 </TD> <TD> JR716 </TD> </TR>
  <TR> <TD align="right"> 12 </TD> <TD> JR717 </TD> </TR>
  <TR> <TD align="right"> 13 </TD> <TD> JR719 </TD> </TR>
  <TR> <TD align="right"> 14 </TD> <TD> JR791 </TD> </TR>
  <TR> <TD align="right"> 15 </TD> <TD> JR756 </TD> </TR>
  <TR> <TD align="right"> 16 </TD> <TD> JR793 </TD> </TR>
  <TR> <TD align="right"> 17 </TD> <TD> JR790 </TD> </TR>
  <TR> <TD align="right"> 18 </TD> <TD> JR830 </TD> </TR>
   </TABLE>

## Replicates
<!-- html table generated in R 3.0.2 by xtable 1.7-3 package -->
<!-- Tue Jun 17 01:10:19 2014 -->
<TABLE border=1>
<TR> <TH>  </TH> <TH> file </TH> <TH> sample_name </TH> <TH> replicate </TH> <TH> rep_name </TH> <TH> total_mass </TH> <TH> norm_mass </TH> <TH> internal_scale </TH> <TH> external_scale </TH>  </TR>
  <TR> <TD align="right"> 1 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR753/abundances.cxb </TD> <TD> WT </TD> <TD align="right">   0 </TD> <TD> WT_0 </TD> <TD align="right"> 39343800.00 </TD> <TD align="right"> 30233400.00 </TD> <TD align="right"> 1.35 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 2 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR750/abundances.cxb </TD> <TD> WT </TD> <TD align="right">   1 </TD> <TD> WT_1 </TD> <TD align="right"> 36041100.00 </TD> <TD align="right"> 30233400.00 </TD> <TD align="right"> 1.17 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 3 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR771/abundances.cxb </TD> <TD> WT </TD> <TD align="right">   2 </TD> <TD> WT_2 </TD> <TD align="right"> 38877000.00 </TD> <TD align="right"> 30233400.00 </TD> <TD align="right"> 1.31 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 4 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR755/abundances.cxb </TD> <TD> WT </TD> <TD align="right">   3 </TD> <TD> WT_3 </TD> <TD align="right"> 41822800.00 </TD> <TD align="right"> 30233400.00 </TD> <TD align="right"> 1.37 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 5 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR811/abundances.cxb </TD> <TD> WT </TD> <TD align="right">   4 </TD> <TD> WT_4 </TD> <TD align="right"> 38186700.00 </TD> <TD align="right"> 30233400.00 </TD> <TD align="right"> 1.28 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 6 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR768/abundances.cxb </TD> <TD> WT </TD> <TD align="right">   5 </TD> <TD> WT_5 </TD> <TD align="right"> 28382500.00 </TD> <TD align="right"> 30233400.00 </TD> <TD align="right"> 0.95 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 7 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR761/abundances.cxb </TD> <TD> WT </TD> <TD align="right">   6 </TD> <TD> WT_6 </TD> <TD align="right"> 31711800.00 </TD> <TD align="right"> 30233400.00 </TD> <TD align="right"> 1.04 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 8 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR815/abundances.cxb </TD> <TD> WT </TD> <TD align="right">   7 </TD> <TD> WT_7 </TD> <TD align="right"> 29744300.00 </TD> <TD align="right"> 30233400.00 </TD> <TD align="right"> 0.98 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 9 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR789/abundances.cxb </TD> <TD> WT </TD> <TD align="right">   8 </TD> <TD> WT_8 </TD> <TD align="right"> 27686600.00 </TD> <TD align="right"> 30233400.00 </TD> <TD align="right"> 0.92 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 10 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR748/abundances.cxb </TD> <TD> WT </TD> <TD align="right">   9 </TD> <TD> WT_9 </TD> <TD align="right"> 32374600.00 </TD> <TD align="right"> 30233400.00 </TD> <TD align="right"> 1.02 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 11 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR716/abundances.cxb </TD> <TD> WT </TD> <TD align="right">  10 </TD> <TD> WT_10 </TD> <TD align="right"> 26148700.00 </TD> <TD align="right"> 30233400.00 </TD> <TD align="right"> 0.86 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 12 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR717/abundances.cxb </TD> <TD> WT </TD> <TD align="right">  11 </TD> <TD> WT_11 </TD> <TD align="right"> 25571500.00 </TD> <TD align="right"> 30233400.00 </TD> <TD align="right"> 0.85 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 13 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR719/abundances.cxb </TD> <TD> WT </TD> <TD align="right">  12 </TD> <TD> WT_12 </TD> <TD align="right"> 22702200.00 </TD> <TD align="right"> 30233400.00 </TD> <TD align="right"> 0.73 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 14 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR791/abundances.cxb </TD> <TD> WT </TD> <TD align="right">  13 </TD> <TD> WT_13 </TD> <TD align="right"> 12886300.00 </TD> <TD align="right"> 30233400.00 </TD> <TD align="right"> 0.43 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 15 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR756/abundances.cxb </TD> <TD> WT </TD> <TD align="right">  14 </TD> <TD> WT_14 </TD> <TD align="right"> 38957200.00 </TD> <TD align="right"> 30233400.00 </TD> <TD align="right"> 1.29 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 16 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR793/abundances.cxb </TD> <TD> Crnde </TD> <TD align="right">   0 </TD> <TD> Crnde_0 </TD> <TD align="right"> 36530500.00 </TD> <TD align="right"> 30233400.00 </TD> <TD align="right"> 1.22 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 17 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR790/abundances.cxb </TD> <TD> Crnde </TD> <TD align="right">   1 </TD> <TD> Crnde_1 </TD> <TD align="right"> 27560000.00 </TD> <TD align="right"> 30233400.00 </TD> <TD align="right"> 0.91 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 18 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR830/abundances.cxb </TD> <TD> Crnde </TD> <TD align="right">   2 </TD> <TD> Crnde_2 </TD> <TD align="right"> 28638600.00 </TD> <TD align="right"> 30233400.00 </TD> <TD align="right"> 0.96 </TD> <TD align="right"> 1.00 </TD> </TR>
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
##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             value
## 1 cuffdiff -p 10 -L WT,Crnde -o /n/rinn_data1/seq/lgoff/Projects/BrainMap/diffs/Crnde_vs_WT_Embryonic /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/annotation/mm10_gencode_vM2_with_lncRNAs_and_LacZ.gtf /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR753/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR750/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR771/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR755/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR811/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR768/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR761/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR815/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR789/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR748/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR716/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR717/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR719/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR791/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR756/abundances.cxb /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR793/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR790/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR830/abundances.cxb 
## 2                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           2.2.1
## 3                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            4237
## 4                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          104700
## 5                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            mm10
```
