Crnde KO vs WT (Adult)
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

```
## Scale for 'x' is already present. Adding another scale for 'x', which will replace the existing scale.
## geom_smooth: method="auto" and size of largest group is >=1000, so using gam with formula: y ~ s(x, bs = "cs"). Use 'method = x' to change the smoothing method.
```

![plot of chunk CV genes](figure/Crnde/CV genes.png) 


Isoforms: 

```
## Scale for 'x' is already present. Adding another scale for 'x', which will replace the existing scale.
## geom_smooth: method="auto" and size of largest group is >=1000, so using gam with formula: y ~ s(x, bs = "cs"). Use 'method = x' to change the smoothing method.
```

![plot of chunk cv iso](figure/Crnde/cv iso.png) 

## Volcano

```
## Error: One or more values of 'x' or 'y' are not valid sample names!
```

### Volcano matrix (replicates)

![plot of chunk volcano matrix](figure/Crnde/volcano matrix.png) 

## MvA plot

```
## Error: non-numeric argument to binary operator
```
   
### MvA plot counts

```
## Error: non-numeric argument to binary operator
```

## Scatterplot
![plot of chunk scatterplot](figure/Crnde/scatterplot.png) 

### Scatter matrix (replicates) -- SKIP FOR NOW CAUSING PROBLEMS 




## Distributions

### Boxplots

Boxplot (genes)

![plot of chunk boxplot genes](figure/Crnde/boxplot genes.png) 

Boxplot (genes, replicates)

![plot of chunk boxplot genes replicates](figure/Crnde/boxplot genes replicates.png) 

Boxplot (isoforms)

![plot of chunk boxplot isoforms](figure/Crnde/boxplot isoforms.png) 

Boxplot (isoforms, replicates)

![plot of chunk boxplot isoforms replicates](figure/Crnde/boxplot isoforms replicates.png) 

### Density

Density (genes)

![plot of chunk density](figure/Crnde/density.png) 

Density (genes, replicates)

![plot of chunk density w replicates](figure/Crnde/density w replicates.png) 


## Clustering

### Replicate Clusters
![plot of chunk replicate clusters](figure/Crnde/replicate clusters.png) 

```
## 'dendrogram' with 2 branches and 18 members total, at height 0.07545
```

### PCA (genes)
![plot of chunk PCA](figure/Crnde/PCA.png) 

### MDS (genes)
![plot of chunk MDS](figure/Crnde/MDS.png) 

### Distance Heat Map (genes)
![plot of chunk R distance heatmap](figure/Crnde/R distance heatmap.png) 


# KO assessment

## Endogenous lncRNA expression

<!-- html table generated in R 3.0.2 by xtable 1.7-3 package -->
<!-- Mon Jun 16 16:58:36 2014 -->
<TABLE border=1>
<TR> <TH>  </TH> <TH> gene_id </TH> <TH> sample_name </TH> <TH> fpkm </TH> <TH> conf_hi </TH> <TH> conf_lo </TH> <TH> quant_status </TH>  </TR>
  <TR> <TD align="right"> 1 </TD> <TD> ENSMUSG00000031736.4 </TD> <TD> Crnde </TD> <TD align="right"> 0.87 </TD> <TD align="right"> 2.42 </TD> <TD align="right"> 0.00 </TD> <TD> OK </TD> </TR>
  <TR> <TD align="right"> 2 </TD> <TD> ENSMUSG00000031736.4 </TD> <TD> WT </TD> <TD align="right"> 1.73 </TD> <TD align="right"> 3.34 </TD> <TD align="right"> 0.12 </TD> <TD> OK </TD> </TR>
   </TABLE>
<!-- html table generated in R 3.0.2 by xtable 1.7-3 package -->
<!-- Mon Jun 16 16:58:36 2014 -->
<TABLE border=1>
<TR> <TH>  </TH> <TH> isoform_id </TH> <TH> sample_name </TH> <TH> fpkm </TH> <TH> conf_hi </TH> <TH> conf_lo </TH> <TH> quant_status </TH>  </TR>
  <TR> <TD align="right"> 1 </TD> <TD> ENSMUST00000034183.3 </TD> <TD> Crnde </TD> <TD align="right"> 0.05 </TD> <TD align="right"> 0.18 </TD> <TD align="right"> 0.00 </TD> <TD> OK </TD> </TR>
  <TR> <TD align="right"> 2 </TD> <TD> ENSMUST00000178064.1 </TD> <TD> Crnde </TD> <TD align="right"> 0.24 </TD> <TD align="right"> 0.54 </TD> <TD align="right"> 0.00 </TD> <TD> OK </TD> </TR>
  <TR> <TD align="right"> 3 </TD> <TD> ENSMUST00000179029.1 </TD> <TD> Crnde </TD> <TD align="right"> 0.30 </TD> <TD align="right"> 1.84 </TD> <TD align="right"> 0.00 </TD> <TD> OK </TD> </TR>
  <TR> <TD align="right"> 4 </TD> <TD> ENSMUST00000179222.1 </TD> <TD> Crnde </TD> <TD align="right"> 0.17 </TD> <TD align="right"> 0.76 </TD> <TD align="right"> 0.00 </TD> <TD> OK </TD> </TR>
  <TR> <TD align="right"> 5 </TD> <TD> ENSMUST00000179400.1 </TD> <TD> Crnde </TD> <TD align="right"> 0.00 </TD> <TD align="right"> 0.10 </TD> <TD align="right"> 0.00 </TD> <TD> OK </TD> </TR>
  <TR> <TD align="right"> 6 </TD> <TD> ENSMUST00000179421.1 </TD> <TD> Crnde </TD> <TD align="right"> 0.10 </TD> <TD align="right"> 0.34 </TD> <TD align="right"> 0.00 </TD> <TD> OK </TD> </TR>
  <TR> <TD align="right"> 7 </TD> <TD> ENSMUST00000180102.1 </TD> <TD> Crnde </TD> <TD align="right"> 0.00 </TD> <TD align="right"> 0.09 </TD> <TD align="right"> 0.00 </TD> <TD> OK </TD> </TR>
  <TR> <TD align="right"> 8 </TD> <TD> ENSMUST00000034183.3 </TD> <TD> WT </TD> <TD align="right"> 0.15 </TD> <TD align="right"> 0.45 </TD> <TD align="right"> 0.00 </TD> <TD> OK </TD> </TR>
  <TR> <TD align="right"> 9 </TD> <TD> ENSMUST00000178064.1 </TD> <TD> WT </TD> <TD align="right"> 0.70 </TD> <TD align="right"> 1.51 </TD> <TD align="right"> 0.00 </TD> <TD> OK </TD> </TR>
  <TR> <TD align="right"> 10 </TD> <TD> ENSMUST00000179029.1 </TD> <TD> WT </TD> <TD align="right"> 0.24 </TD> <TD align="right"> 2.02 </TD> <TD align="right"> 0.00 </TD> <TD> OK </TD> </TR>
  <TR> <TD align="right"> 11 </TD> <TD> ENSMUST00000179222.1 </TD> <TD> WT </TD> <TD align="right"> 0.19 </TD> <TD align="right"> 0.85 </TD> <TD align="right"> 0.00 </TD> <TD> OK </TD> </TR>
  <TR> <TD align="right"> 12 </TD> <TD> ENSMUST00000179400.1 </TD> <TD> WT </TD> <TD align="right"> 0.09 </TD> <TD align="right"> 0.37 </TD> <TD align="right"> 0.00 </TD> <TD> OK </TD> </TR>
  <TR> <TD align="right"> 13 </TD> <TD> ENSMUST00000179421.1 </TD> <TD> WT </TD> <TD align="right"> 0.17 </TD> <TD align="right"> 0.75 </TD> <TD align="right"> 0.00 </TD> <TD> OK </TD> </TR>
  <TR> <TD align="right"> 14 </TD> <TD> ENSMUST00000180102.1 </TD> <TD> WT </TD> <TD align="right"> 0.20 </TD> <TD align="right"> 0.76 </TD> <TD align="right"> 0.00 </TD> <TD> OK </TD> </TR>
   </TABLE>
![plot of chunk Enodenous lncRNA tables](figure/Crnde/Enodenous lncRNA tables1.png) ![plot of chunk Enodenous lncRNA tables](figure/Crnde/Enodenous lncRNA tables2.png) 

Endogenous expression of Crnde isoforms:

![plot of chunk endogenous iso](figure/Crnde/endogenous iso1.png) ![plot of chunk endogenous iso](figure/Crnde/endogenous iso2.png) 

Barplot of gene expression:

![plot of chunk endogenous barplot](figure/Crnde/endogenous barplot1.png) ![plot of chunk endogenous barplot](figure/Crnde/endogenous barplot2.png) 

Barplot of isoform expression:

![plot of chunk endogenous iso barplot](figure/Crnde/endogenous iso barplot.png) 


## LacZ expression

<!-- html table generated in R 3.0.2 by xtable 1.7-3 package -->
<!-- Mon Jun 16 16:58:50 2014 -->
<TABLE border=1>
<TR> <TH>  </TH> <TH> gene_id </TH> <TH> sample_name </TH> <TH> fpkm </TH> <TH> conf_hi </TH> <TH> conf_lo </TH> <TH> quant_status </TH>  </TR>
  <TR> <TD align="right"> 1 </TD> <TD> Velocigene_LacZ </TD> <TD> Crnde </TD> <TD align="right"> 1.20 </TD> <TD align="right"> 1.64 </TD> <TD align="right"> 0.77 </TD> <TD> OK </TD> </TR>
  <TR> <TD align="right"> 2 </TD> <TD> Velocigene_LacZ </TD> <TD> WT </TD> <TD align="right"> 0.12 </TD> <TD align="right"> 0.26 </TD> <TD align="right"> 0.00 </TD> <TD> OK </TD> </TR>
   </TABLE>
![plot of chunk LacZ expression](figure/Crnde/LacZ expression1.png) ![plot of chunk LacZ expression](figure/Crnde/LacZ expression2.png) ![plot of chunk LacZ expression](figure/Crnde/LacZ expression3.png) ![plot of chunk LacZ expression](figure/Crnde/LacZ expression4.png) 


## Digital Genotyping (LacZ vs Endogenous lncRNA and Sex)
Expression plot (endogenous linc, lacZ, Y-expressed gene):


```
## Scale for 'colour' is already present. Adding another scale for 'colour', which will replace the existing scale.
## ymax not defined: adjusting position using y instead
```

![plot of chunk Digital Genotyping](figure/Crnde/Digital Genotyping.png) 

Expression heatmap:

```
## Using tracking_id, rep_name as id variables
## No id variables; using all as measure variables
```

![plot of chunk digital geno heatmap](figure/Crnde/digital geno heatmap.png) 

# Differential Analysis

## Differential Genes 



There are 80 significantly differentially expressed genes. They are:

<!-- html table generated in R 3.0.2 by xtable 1.7-3 package -->
<!-- Mon Jun 16 16:58:57 2014 -->
<TABLE border=1>
<TR> <TH>  </TH> <TH> geneAnnot$gene_short_name </TH>  </TR>
  <TR> <TD align="right"> 1 </TD> <TD> Sox9 </TD> </TR>
  <TR> <TD align="right"> 2 </TD> <TD> Arrdc2 </TD> </TR>
  <TR> <TD align="right"> 3 </TD> <TD> Klf4 </TD> </TR>
  <TR> <TD align="right"> 4 </TD> <TD> Fosb </TD> </TR>
  <TR> <TD align="right"> 5 </TD> <TD> Nes </TD> </TR>
  <TR> <TD align="right"> 6 </TD> <TD> Id3 </TD> </TR>
  <TR> <TD align="right"> 7 </TD> <TD> Carhsp1 </TD> </TR>
  <TR> <TD align="right"> 8 </TD> <TD> Mertk </TD> </TR>
  <TR> <TD align="right"> 9 </TD> <TD> Wsb1 </TD> </TR>
  <TR> <TD align="right"> 10 </TD> <TD> Erbb3 </TD> </TR>
  <TR> <TD align="right"> 11 </TD> <TD> Sgk1 </TD> </TR>
  <TR> <TD align="right"> 12 </TD> <TD> Timp3 </TD> </TR>
  <TR> <TD align="right"> 13 </TD> <TD> Adi1 </TD> </TR>
  <TR> <TD align="right"> 14 </TD> <TD> Nfkbia </TD> </TR>
  <TR> <TD align="right"> 15 </TD> <TD> Serpina3n </TD> </TR>
  <TR> <TD align="right"> 16 </TD> <TD> Net1 </TD> </TR>
  <TR> <TD align="right"> 17 </TD> <TD> Fos </TD> </TR>
  <TR> <TD align="right"> 18 </TD> <TD> Edn1 </TD> </TR>
  <TR> <TD align="right"> 19 </TD> <TD> Arc </TD> </TR>
  <TR> <TD align="right"> 20 </TD> <TD> Nr4a1 </TD> </TR>
  <TR> <TD align="right"> 21 </TD> <TD> Cdkn1a </TD> </TR>
  <TR> <TD align="right"> 22 </TD> <TD> Wfdc1 </TD> </TR>
  <TR> <TD align="right"> 23 </TD> <TD> Clic5 </TD> </TR>
  <TR> <TD align="right"> 24 </TD> <TD> Atp6v0c </TD> </TR>
  <TR> <TD align="right"> 25 </TD> <TD> Fkbp5 </TD> </TR>
  <TR> <TD align="right"> 26 </TD> <TD> Tma16 </TD> </TR>
  <TR> <TD align="right"> 27 </TD> <TD> Clk1 </TD> </TR>
  <TR> <TD align="right"> 28 </TD> <TD> Mall </TD> </TR>
  <TR> <TD align="right"> 29 </TD> <TD> Slc7a11 </TD> </TR>
  <TR> <TD align="right"> 30 </TD> <TD> Cyr61 </TD> </TR>
  <TR> <TD align="right"> 31 </TD> <TD> Nr4a3 </TD> </TR>
  <TR> <TD align="right"> 32 </TD> <TD> Slc2a1 </TD> </TR>
  <TR> <TD align="right"> 33 </TD> <TD> Mfsd2a </TD> </TR>
  <TR> <TD align="right"> 34 </TD> <TD> Tinagl1 </TD> </TR>
  <TR> <TD align="right"> 35 </TD> <TD> Fosl2 </TD> </TR>
  <TR> <TD align="right"> 36 </TD> <TD> Emp1 </TD> </TR>
  <TR> <TD align="right"> 37 </TD> <TD> Pglyrp1 </TD> </TR>
  <TR> <TD align="right"> 38 </TD> <TD> Hddc3 </TD> </TR>
  <TR> <TD align="right"> 39 </TD> <TD> Mt2 </TD> </TR>
  <TR> <TD align="right"> 40 </TD> <TD> Mt1 </TD> </TR>
  <TR> <TD align="right"> 41 </TD> <TD> Sox10 </TD> </TR>
  <TR> <TD align="right"> 42 </TD> <TD> Arhgap27 </TD> </TR>
  <TR> <TD align="right"> 43 </TD> <TD> Trim59 </TD> </TR>
  <TR> <TD align="right"> 44 </TD> <TD> Psenen </TD> </TR>
  <TR> <TD align="right"> 45 </TD> <TD> Bcorl1 </TD> </TR>
  <TR> <TD align="right"> 46 </TD> <TD> Clic4 </TD> </TR>
  <TR> <TD align="right"> 47 </TD> <TD> Klf10 </TD> </TR>
  <TR> <TD align="right"> 48 </TD> <TD> Egr2 </TD> </TR>
  <TR> <TD align="right"> 49 </TD> <TD> Smim3 </TD> </TR>
  <TR> <TD align="right"> 50 </TD> <TD> Egr1 </TD> </TR>
  <TR> <TD align="right"> 51 </TD> <TD> Cdc42ep4 </TD> </TR>
  <TR> <TD align="right"> 52 </TD> <TD> Maff </TD> </TR>
  <TR> <TD align="right"> 53 </TD> <TD> Id1 </TD> </TR>
  <TR> <TD align="right"> 54 </TD> <TD> Ctla2a </TD> </TR>
  <TR> <TD align="right"> 55 </TD> <TD> Gm9493 </TD> </TR>
  <TR> <TD align="right"> 56 </TD> <TD> Acp1 </TD> </TR>
  <TR> <TD align="right"> 57 </TD> <TD> Npas4 </TD> </TR>
  <TR> <TD align="right"> 58 </TD> <TD> Rasd1 </TD> </TR>
  <TR> <TD align="right"> 59 </TD> <TD> Plekho2 </TD> </TR>
  <TR> <TD align="right"> 60 </TD> <TD> Junb </TD> </TR>
  <TR> <TD align="right"> 61 </TD> <TD> Klf2 </TD> </TR>
  <TR> <TD align="right"> 62 </TD> <TD> Fat2 </TD> </TR>
  <TR> <TD align="right"> 63 </TD> <TD> Rpl30 </TD> </TR>
  <TR> <TD align="right"> 64 </TD> <TD> Gm5506 </TD> </TR>
  <TR> <TD align="right"> 65 </TD> <TD> linc-Brn1a </TD> </TR>
  <TR> <TD align="right"> 66 </TD> <TD> Plekhh1 </TD> </TR>
  <TR> <TD align="right"> 67 </TD> <TD> Rps7 </TD> </TR>
  <TR> <TD align="right"> 68 </TD> <TD> Sox21 </TD> </TR>
  <TR> <TD align="right"> 69 </TD> <TD> Cox5b </TD> </TR>
  <TR> <TD align="right"> 70 </TD> <TD> Zbtb16 </TD> </TR>
  <TR> <TD align="right"> 71 </TD> <TD> Bpifb3 </TD> </TR>
  <TR> <TD align="right"> 72 </TD> <TD> Ddx3y </TD> </TR>
  <TR> <TD align="right"> 73 </TD> <TD> Fat1 </TD> </TR>
  <TR> <TD align="right"> 74 </TD> <TD> Egr4 </TD> </TR>
  <TR> <TD align="right"> 75 </TD> <TD> Ppia </TD> </TR>
  <TR> <TD align="right"> 76 </TD> <TD> Gm7292 </TD> </TR>
  <TR> <TD align="right"> 77 </TD> <TD> A830036E02Rik </TD> </TR>
  <TR> <TD align="right"> 78 </TD> <TD> Apold1 </TD> </TR>
  <TR> <TD align="right"> 79 </TD> <TD> AA465934 </TD> </TR>
  <TR> <TD align="right"> 80 </TD> <TD> LacZ </TD> </TR>
   </TABLE>

### Matrix of gene significant differences between conditions

(skip for Brainmap wt-v-ko comparisons)

![plot of chunk sigMatrix](figure/Crnde/sigMatrix.png) 

### Significant gene expression differences between conditions

Expression plot (genes):
![plot of chunk sigExpression](figure/Crnde/sigExpression1.png) 

```
## Using tracking_id, rep_name as id variables
## No id variables; using all as measure variables
```

![plot of chunk sigExpression](figure/Crnde/sigExpression2.png) 

Significant genes with expression >50fpkm (any condition):

```
## Using tracking_id, sample_name as id variables
```

![plot of chunk highly expressed sig](figure/Crnde/highly expressed sig.png) 

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
![plot of chunk diff.iso](figure/Crnde/diff.iso.png) 

These isoforms are:
<!-- html table generated in R 3.0.2 by xtable 1.7-3 package -->
<!-- Mon Jun 16 16:59:09 2014 -->
<TABLE border=1>
<TR> <TH>  </TH> <TH> isoAnnot$gene_short_name </TH>  </TR>
  <TR> <TD align="right"> 1 </TD> <TD> Sox9 </TD> </TR>
  <TR> <TD align="right"> 2 </TD> <TD> Arrdc2 </TD> </TR>
  <TR> <TD align="right"> 3 </TD> <TD> Klf4 </TD> </TR>
  <TR> <TD align="right"> 4 </TD> <TD> Fosb </TD> </TR>
  <TR> <TD align="right"> 5 </TD> <TD> Hif3a </TD> </TR>
  <TR> <TD align="right"> 6 </TD> <TD> Nes </TD> </TR>
  <TR> <TD align="right"> 7 </TD> <TD> Carhsp1 </TD> </TR>
  <TR> <TD align="right"> 8 </TD> <TD> Mertk </TD> </TR>
  <TR> <TD align="right"> 9 </TD> <TD> Erbb3 </TD> </TR>
  <TR> <TD align="right"> 10 </TD> <TD> Timp3 </TD> </TR>
  <TR> <TD align="right"> 11 </TD> <TD> Serpina3n </TD> </TR>
  <TR> <TD align="right"> 12 </TD> <TD> Fos </TD> </TR>
  <TR> <TD align="right"> 13 </TD> <TD> Edn1 </TD> </TR>
  <TR> <TD align="right"> 14 </TD> <TD> Hmgcr </TD> </TR>
  <TR> <TD align="right"> 15 </TD> <TD> Arc </TD> </TR>
  <TR> <TD align="right"> 16 </TD> <TD> Nr4a1 </TD> </TR>
  <TR> <TD align="right"> 17 </TD> <TD> Cdkn1a </TD> </TR>
  <TR> <TD align="right"> 18 </TD> <TD> Atp6v0c </TD> </TR>
  <TR> <TD align="right"> 19 </TD> <TD> Fkbp5 </TD> </TR>
  <TR> <TD align="right"> 20 </TD> <TD> Tma16 </TD> </TR>
  <TR> <TD align="right"> 21 </TD> <TD> Cyr61 </TD> </TR>
  <TR> <TD align="right"> 22 </TD> <TD> Slc2a1 </TD> </TR>
  <TR> <TD align="right"> 23 </TD> <TD> Mfsd2a </TD> </TR>
  <TR> <TD align="right"> 24 </TD> <TD> Tinagl1 </TD> </TR>
  <TR> <TD align="right"> 25 </TD> <TD> Fosl2 </TD> </TR>
  <TR> <TD align="right"> 26 </TD> <TD> Emp1 </TD> </TR>
  <TR> <TD align="right"> 27 </TD> <TD> Pglyrp1 </TD> </TR>
  <TR> <TD align="right"> 28 </TD> <TD> Hddc3 </TD> </TR>
  <TR> <TD align="right"> 29 </TD> <TD> Mt2 </TD> </TR>
  <TR> <TD align="right"> 30 </TD> <TD> Mt1 </TD> </TR>
  <TR> <TD align="right"> 31 </TD> <TD> Sox10 </TD> </TR>
  <TR> <TD align="right"> 32 </TD> <TD> Ucp2 </TD> </TR>
  <TR> <TD align="right"> 33 </TD> <TD> Trim59 </TD> </TR>
  <TR> <TD align="right"> 34 </TD> <TD> Midn </TD> </TR>
  <TR> <TD align="right"> 35 </TD> <TD> Psenen </TD> </TR>
  <TR> <TD align="right"> 36 </TD> <TD> Klf10 </TD> </TR>
  <TR> <TD align="right"> 37 </TD> <TD> Egr2 </TD> </TR>
  <TR> <TD align="right"> 38 </TD> <TD> Smim3 </TD> </TR>
  <TR> <TD align="right"> 39 </TD> <TD> Egr1 </TD> </TR>
  <TR> <TD align="right"> 40 </TD> <TD> Tnfsf10 </TD> </TR>
  <TR> <TD align="right"> 41 </TD> <TD> Id1 </TD> </TR>
  <TR> <TD align="right"> 42 </TD> <TD> Ctla2a </TD> </TR>
  <TR> <TD align="right"> 43 </TD> <TD> Gm9493 </TD> </TR>
  <TR> <TD align="right"> 44 </TD> <TD> Rasd1 </TD> </TR>
  <TR> <TD align="right"> 45 </TD> <TD> Plekho2 </TD> </TR>
  <TR> <TD align="right"> 46 </TD> <TD> Junb </TD> </TR>
  <TR> <TD align="right"> 47 </TD> <TD> Klf2 </TD> </TR>
  <TR> <TD align="right"> 48 </TD> <TD> Fat2 </TD> </TR>
  <TR> <TD align="right"> 49 </TD> <TD> Gm5506 </TD> </TR>
  <TR> <TD align="right"> 50 </TD> <TD> Rps7 </TD> </TR>
  <TR> <TD align="right"> 51 </TD> <TD> Cox5b </TD> </TR>
  <TR> <TD align="right"> 52 </TD> <TD> Egr4 </TD> </TR>
  <TR> <TD align="right"> 53 </TD> <TD> Gm7292 </TD> </TR>
  <TR> <TD align="right"> 54 </TD> <TD> A830036E02Rik </TD> </TR>
  <TR> <TD align="right"> 55 </TD> <TD> Apold1 </TD> </TR>
  <TR> <TD align="right"> 56 </TD> <TD> LacZ </TD> </TR>
   </TABLE>



```
## Using tracking_id, rep_name as id variables
```

![plot of chunk isoform heatmap](figure/Crnde/isoform heatmap.png) 

### Differential Splicing between conditions

(eval false for first pass)

Per condition differences in isoforms (Does gene have diff piechart between conditions?)



These genes are:


Splicing heatmap by isoform:


Splicing heatmap by gene


The following are significantly differentially spliced genes (relative portion of isoform per condition): 





 






# Gene/Pathway Analysis

## GSEA





![plot of chunk print GSEA biocarta](figure/Crnde/print GSEA biocarta.png) 

![plot of chunk print GSEA reactome](figure/Crnde/print GSEA reactome.png) 

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

![plot of chunk GO figures](figure/Crnde/GO figures1.png) ![plot of chunk GO figures](figure/Crnde/GO figures2.png) ![plot of chunk GO figures](figure/Crnde/GO figures3.png) ![plot of chunk GO figures](figure/Crnde/GO figures4.png) ![plot of chunk GO figures](figure/Crnde/GO figures5.png) 

# Cis vs Trans (locally)



# Notes

## Samples used are:
<!-- html table generated in R 3.0.2 by xtable 1.7-3 package -->
<!-- Mon Jun 16 17:01:31 2014 -->
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
  <TR> <TD align="right"> 16 </TD> <TD> JR741 </TD> </TR>
  <TR> <TD align="right"> 17 </TD> <TD> JR784 </TD> </TR>
  <TR> <TD align="right"> 18 </TD> <TD> JR818 </TD> </TR>
   </TABLE>

## Replicates
<!-- html table generated in R 3.0.2 by xtable 1.7-3 package -->
<!-- Mon Jun 16 17:01:31 2014 -->
<TABLE border=1>
<TR> <TH>  </TH> <TH> file </TH> <TH> sample_name </TH> <TH> replicate </TH> <TH> rep_name </TH> <TH> total_mass </TH> <TH> norm_mass </TH> <TH> internal_scale </TH> <TH> external_scale </TH>  </TR>
  <TR> <TD align="right"> 1 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR729/abundances.cxb </TD> <TD> WT </TD> <TD align="right">   0 </TD> <TD> WT_0 </TD> <TD align="right"> 26338300.00 </TD> <TD align="right"> 34536600.00 </TD> <TD align="right"> 0.76 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 2 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR728/abundances.cxb </TD> <TD> WT </TD> <TD align="right">   1 </TD> <TD> WT_1 </TD> <TD align="right"> 20332100.00 </TD> <TD align="right"> 34536600.00 </TD> <TD align="right"> 0.59 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 3 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR796/abundances.cxb </TD> <TD> WT </TD> <TD align="right">   2 </TD> <TD> WT_2 </TD> <TD align="right"> 34093300.00 </TD> <TD align="right"> 34536600.00 </TD> <TD align="right"> 0.98 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 4 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR797/abundances.cxb </TD> <TD> WT </TD> <TD align="right">   3 </TD> <TD> WT_3 </TD> <TD align="right"> 28111900.00 </TD> <TD align="right"> 34536600.00 </TD> <TD align="right"> 0.80 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 5 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR740/abundances.cxb </TD> <TD> WT </TD> <TD align="right">   4 </TD> <TD> WT_4 </TD> <TD align="right"> 35813300.00 </TD> <TD align="right"> 34536600.00 </TD> <TD align="right"> 1.04 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 6 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR800/abundances.cxb </TD> <TD> WT </TD> <TD align="right">   5 </TD> <TD> WT_5 </TD> <TD align="right"> 37017800.00 </TD> <TD align="right"> 34536600.00 </TD> <TD align="right"> 1.07 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 7 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR827/abundances.cxb </TD> <TD> WT </TD> <TD align="right">   6 </TD> <TD> WT_6 </TD> <TD align="right"> 27790600.00 </TD> <TD align="right"> 34536600.00 </TD> <TD align="right"> 0.81 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 8 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR778/abundances.cxb </TD> <TD> WT </TD> <TD align="right">   7 </TD> <TD> WT_7 </TD> <TD align="right"> 39549100.00 </TD> <TD align="right"> 34536600.00 </TD> <TD align="right"> 1.16 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 9 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR734/abundances.cxb </TD> <TD> WT </TD> <TD align="right">   8 </TD> <TD> WT_8 </TD> <TD align="right"> 34485000.00 </TD> <TD align="right"> 34536600.00 </TD> <TD align="right"> 1.01 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 10 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR802/abundances.cxb </TD> <TD> WT </TD> <TD align="right">   9 </TD> <TD> WT_9 </TD> <TD align="right"> 45472800.00 </TD> <TD align="right"> 34536600.00 </TD> <TD align="right"> 1.30 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 11 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR803/abundances.cxb </TD> <TD> WT </TD> <TD align="right">  10 </TD> <TD> WT_10 </TD> <TD align="right"> 52136700.00 </TD> <TD align="right"> 34536600.00 </TD> <TD align="right"> 1.51 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 12 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR735/abundances.cxb </TD> <TD> WT </TD> <TD align="right">  11 </TD> <TD> WT_11 </TD> <TD align="right"> 34999600.00 </TD> <TD align="right"> 34536600.00 </TD> <TD align="right"> 1.02 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 13 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR817/abundances.cxb </TD> <TD> WT </TD> <TD align="right">  12 </TD> <TD> WT_12 </TD> <TD align="right"> 30811500.00 </TD> <TD align="right"> 34536600.00 </TD> <TD align="right"> 0.90 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 14 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR785/abundances.cxb </TD> <TD> WT </TD> <TD align="right">  13 </TD> <TD> WT_13 </TD> <TD align="right"> 34180700.00 </TD> <TD align="right"> 34536600.00 </TD> <TD align="right"> 0.98 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 15 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR781/abundances.cxb </TD> <TD> WT </TD> <TD align="right">  14 </TD> <TD> WT_14 </TD> <TD align="right"> 41544600.00 </TD> <TD align="right"> 34536600.00 </TD> <TD align="right"> 1.21 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 16 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR741/abundances.cxb </TD> <TD> Crnde </TD> <TD align="right">   0 </TD> <TD> Crnde_0 </TD> <TD align="right"> 37691800.00 </TD> <TD align="right"> 34536600.00 </TD> <TD align="right"> 1.10 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 17 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR784/abundances.cxb </TD> <TD> Crnde </TD> <TD align="right">   1 </TD> <TD> Crnde_1 </TD> <TD align="right"> 37659200.00 </TD> <TD align="right"> 34536600.00 </TD> <TD align="right"> 1.09 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 18 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR818/abundances.cxb </TD> <TD> Crnde </TD> <TD align="right">   2 </TD> <TD> Crnde_2 </TD> <TD align="right"> 37868900.00 </TD> <TD align="right"> 34536600.00 </TD> <TD align="right"> 1.08 </TD> <TD align="right"> 1.00 </TD> </TR>
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
## 1 cuffdiff -p 10 -L WT,Crnde -o /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/diffs/Crnde_vs_WT_Adult /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/annotation/mm10_gencode_vM2_with_lncRNAs_and_LacZ.gtf /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR729/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR728/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR796/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR797/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR740/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR800/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR827/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR778/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR734/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR802/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR803/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR735/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR817/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR785/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR781/abundances.cxb /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR741/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR784/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR818/abundances.cxb 
## 2                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            2.2.1
## 3                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             4237
## 4                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           104700
## 5                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             mm10
```
