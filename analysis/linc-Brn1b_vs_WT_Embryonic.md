linc-Brn1b KO vs WT (Embryonic)
======================================


- add labels, descriptions
- turn off all caching ! 
- other heatmap labels (csHeatmap)
- overlap figure
- tracks 
- should import litter info






# Intialize


# Design Overview

This file shows the wt-v-ko comparison for linc-Brn1b. 

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

![plot of chunk CV genes](figure/linc-Brn1b/CV genes.png) 


Isoforms: 

```
## Scale for 'x' is already present. Adding another scale for 'x', which will replace the existing scale.
## geom_smooth: method="auto" and size of largest group is >=1000, so using gam with formula: y ~ s(x, bs = "cs"). Use 'method = x' to change the smoothing method.
```

![plot of chunk cv iso](figure/linc-Brn1b/cv iso.png) 

## Volcano

```
## Error: One or more values of 'x' or 'y' are not valid sample names!
```

### Volcano matrix (replicates)

![plot of chunk volcano matrix](figure/linc-Brn1b/volcano matrix.png) 

## MvA plot

```
## Error: non-numeric argument to binary operator
```
   
### MvA plot counts

```
## Error: non-numeric argument to binary operator
```

## Scatterplot
![plot of chunk scatterplot](figure/linc-Brn1b/scatterplot.png) 

### Scatter matrix (replicates) -- SKIP FOR NOW CAUSING PROBLEMS 




## Distributions

### Boxplots

Boxplot (genes)

![plot of chunk boxplot genes](figure/linc-Brn1b/boxplot genes.png) 

Boxplot (genes, replicates)

![plot of chunk boxplot genes replicates](figure/linc-Brn1b/boxplot genes replicates.png) 

Boxplot (isoforms)

![plot of chunk boxplot isoforms](figure/linc-Brn1b/boxplot isoforms.png) 

Boxplot (isoforms, replicates)

![plot of chunk boxplot isoforms replicates](figure/linc-Brn1b/boxplot isoforms replicates.png) 

### Density

Density (genes)

![plot of chunk density](figure/linc-Brn1b/density.png) 

Density (genes, replicates)

![plot of chunk density w replicates](figure/linc-Brn1b/density w replicates.png) 


## Clustering

### Replicate Clusters
![plot of chunk replicate clusters](figure/linc-Brn1b/replicate clusters.png) 

```
## 'dendrogram' with 2 branches and 18 members total, at height 0.08408
```

### PCA (genes)
![plot of chunk PCA](figure/linc-Brn1b/PCA.png) 

### MDS (genes)
![plot of chunk MDS](figure/linc-Brn1b/MDS.png) 

### Distance Heat Map (genes)
![plot of chunk R distance heatmap](figure/linc-Brn1b/R distance heatmap.png) 


# KO assessment

## Endogenous lncRNA expression

<!-- html table generated in R 3.0.2 by xtable 1.7-3 package -->
<!-- Mon Jun 16 15:33:38 2014 -->
<TABLE border=1>
<TR> <TH>  </TH> <TH> gene_id </TH> <TH> sample_name </TH> <TH> fpkm </TH> <TH> conf_hi </TH> <TH> conf_lo </TH> <TH> quant_status </TH>  </TR>
  <TR> <TD align="right"> 1 </TD> <TD> ENSMUSG00000097063.2 </TD> <TD> WT </TD> <TD align="right"> 2.32 </TD> <TD align="right"> 10.15 </TD> <TD align="right"> 0.00 </TD> <TD> OK </TD> </TR>
  <TR> <TD align="right"> 2 </TD> <TD> ENSMUSG00000097063.2 </TD> <TD> linc_Brn1b </TD> <TD align="right"> 0.00 </TD> <TD align="right"> 0.00 </TD> <TD align="right"> 0.00 </TD> <TD> OK </TD> </TR>
   </TABLE>
<!-- html table generated in R 3.0.2 by xtable 1.7-3 package -->
<!-- Mon Jun 16 15:33:38 2014 -->
<TABLE border=1>
<TR> <TH>  </TH> <TH> isoform_id </TH> <TH> sample_name </TH> <TH> fpkm </TH> <TH> conf_hi </TH> <TH> conf_lo </TH> <TH> quant_status </TH>  </TR>
  <TR> <TD align="right"> 1 </TD> <TD> ENSMUST00000180589.1 </TD> <TD> WT </TD> <TD align="right"> 2.32 </TD> <TD align="right"> 10.15 </TD> <TD align="right"> 0.00 </TD> <TD> OK </TD> </TR>
  <TR> <TD align="right"> 2 </TD> <TD> ENSMUST00000180589.1 </TD> <TD> linc_Brn1b </TD> <TD align="right"> 0.00 </TD> <TD align="right"> 0.14 </TD> <TD align="right"> 0.00 </TD> <TD> OK </TD> </TR>
   </TABLE>
![plot of chunk Enodenous lncRNA tables](figure/linc-Brn1b/Enodenous lncRNA tables1.png) ![plot of chunk Enodenous lncRNA tables](figure/linc-Brn1b/Enodenous lncRNA tables2.png) 

Endogenous expression of linc-Brn1b isoforms:

![plot of chunk endogenous iso](figure/linc-Brn1b/endogenous iso1.png) ![plot of chunk endogenous iso](figure/linc-Brn1b/endogenous iso2.png) 

Barplot of gene expression:

![plot of chunk endogenous barplot](figure/linc-Brn1b/endogenous barplot1.png) ![plot of chunk endogenous barplot](figure/linc-Brn1b/endogenous barplot2.png) 

Barplot of isoform expression:

![plot of chunk endogenous iso barplot](figure/linc-Brn1b/endogenous iso barplot.png) 


## LacZ expression

<!-- html table generated in R 3.0.2 by xtable 1.7-3 package -->
<!-- Mon Jun 16 15:33:49 2014 -->
<TABLE border=1>
<TR> <TH>  </TH> <TH> gene_id </TH> <TH> sample_name </TH> <TH> fpkm </TH> <TH> conf_hi </TH> <TH> conf_lo </TH> <TH> quant_status </TH>  </TR>
  <TR> <TD align="right"> 1 </TD> <TD> Velocigene_LacZ </TD> <TD> WT </TD> <TD align="right"> 0.02 </TD> <TD align="right"> 0.06 </TD> <TD align="right"> 0.00 </TD> <TD> OK </TD> </TR>
  <TR> <TD align="right"> 2 </TD> <TD> Velocigene_LacZ </TD> <TD> linc_Brn1b </TD> <TD align="right"> 9.26 </TD> <TD align="right"> 11.68 </TD> <TD align="right"> 6.85 </TD> <TD> OK </TD> </TR>
   </TABLE>
![plot of chunk LacZ expression](figure/linc-Brn1b/LacZ expression1.png) ![plot of chunk LacZ expression](figure/linc-Brn1b/LacZ expression2.png) ![plot of chunk LacZ expression](figure/linc-Brn1b/LacZ expression3.png) ![plot of chunk LacZ expression](figure/linc-Brn1b/LacZ expression4.png) 


## Digital Genotyping (LacZ vs Endogenous lncRNA and Sex)
Expression plot (endogenous linc, lacZ, Y-expressed gene):


```
## Scale for 'colour' is already present. Adding another scale for 'colour', which will replace the existing scale.
## ymax not defined: adjusting position using y instead
```

![plot of chunk Digital Genotyping](figure/linc-Brn1b/Digital Genotyping.png) 

Expression heatmap:

```
## Using tracking_id, rep_name as id variables
## No id variables; using all as measure variables
```

![plot of chunk digital geno heatmap](figure/linc-Brn1b/digital geno heatmap.png) 

# Differential Analysis

## Differential Genes 



There are 143 significantly differentially expressed genes. They are:

<!-- html table generated in R 3.0.2 by xtable 1.7-3 package -->
<!-- Mon Jun 16 15:34:02 2014 -->
<TABLE border=1>
<TR> <TH>  </TH> <TH> geneAnnot$gene_short_name </TH>  </TR>
  <TR> <TD align="right"> 1 </TD> <TD> Sez6 </TD> </TR>
  <TR> <TD align="right"> 2 </TD> <TD> Nfix </TD> </TR>
  <TR> <TD align="right"> 3 </TD> <TD> Grik3 </TD> </TR>
  <TR> <TD align="right"> 4 </TD> <TD> Dlgap1 </TD> </TR>
  <TR> <TD align="right"> 5 </TD> <TD> Brinp2 </TD> </TR>
  <TR> <TD align="right"> 6 </TD> <TD> Cacna1e </TD> </TR>
  <TR> <TD align="right"> 7 </TD> <TD> Sst </TD> </TR>
  <TR> <TD align="right"> 8 </TD> <TD> Pax3 </TD> </TR>
  <TR> <TD align="right"> 9 </TD> <TD> Crabp2 </TD> </TR>
  <TR> <TD align="right"> 10 </TD> <TD> Ndrg1 </TD> </TR>
  <TR> <TD align="right"> 11 </TD> <TD> Mef2c </TD> </TR>
  <TR> <TD align="right"> 12 </TD> <TD> Syngr3 </TD> </TR>
  <TR> <TD align="right"> 13 </TD> <TD> Syn2 </TD> </TR>
  <TR> <TD align="right"> 14 </TD> <TD> Prox1 </TD> </TR>
  <TR> <TD align="right"> 15 </TD> <TD> Ebf3 </TD> </TR>
  <TR> <TD align="right"> 16 </TD> <TD> Phox2b </TD> </TR>
  <TR> <TD align="right"> 17 </TD> <TD> Ptgds </TD> </TR>
  <TR> <TD align="right"> 18 </TD> <TD> Hivep2 </TD> </TR>
  <TR> <TD align="right"> 19 </TD> <TD> Rxrg </TD> </TR>
  <TR> <TD align="right"> 20 </TD> <TD> Celsr1 </TD> </TR>
  <TR> <TD align="right"> 21 </TD> <TD> Lhx1 </TD> </TR>
  <TR> <TD align="right"> 22 </TD> <TD> Kitl </TD> </TR>
  <TR> <TD align="right"> 23 </TD> <TD> Gria1 </TD> </TR>
  <TR> <TD align="right"> 24 </TD> <TD> Fam49a </TD> </TR>
  <TR> <TD align="right"> 25 </TD> <TD> Foxg1 </TD> </TR>
  <TR> <TD align="right"> 26 </TD> <TD> Tfap2a </TD> </TR>
  <TR> <TD align="right"> 27 </TD> <TD> Drd1a </TD> </TR>
  <TR> <TD align="right"> 28 </TD> <TD> Fezf2 </TD> </TR>
  <TR> <TD align="right"> 29 </TD> <TD> Clu </TD> </TR>
  <TR> <TD align="right"> 30 </TD> <TD> Skor1 </TD> </TR>
  <TR> <TD align="right"> 31 </TD> <TD> Sla </TD> </TR>
  <TR> <TD align="right"> 32 </TD> <TD> Sncg </TD> </TR>
  <TR> <TD align="right"> 33 </TD> <TD> Dlx2 </TD> </TR>
  <TR> <TD align="right"> 34 </TD> <TD> Prph </TD> </TR>
  <TR> <TD align="right"> 35 </TD> <TD> Tiam2 </TD> </TR>
  <TR> <TD align="right"> 36 </TD> <TD> Lbx1 </TD> </TR>
  <TR> <TD align="right"> 37 </TD> <TD> Nnt </TD> </TR>
  <TR> <TD align="right"> 38 </TD> <TD> Msx3 </TD> </TR>
  <TR> <TD align="right"> 39 </TD> <TD> Asb1 </TD> </TR>
  <TR> <TD align="right"> 40 </TD> <TD> Dbi </TD> </TR>
  <TR> <TD align="right"> 41 </TD> <TD> Plxna2 </TD> </TR>
  <TR> <TD align="right"> 42 </TD> <TD> Lhx6 </TD> </TR>
  <TR> <TD align="right"> 43 </TD> <TD> Syt13 </TD> </TR>
  <TR> <TD align="right"> 44 </TD> <TD> Chst1 </TD> </TR>
  <TR> <TD align="right"> 45 </TD> <TD> Lamp5 </TD> </TR>
  <TR> <TD align="right"> 46 </TD> <TD> Ntsr1 </TD> </TR>
  <TR> <TD align="right"> 47 </TD> <TD> Hsd3b6 </TD> </TR>
  <TR> <TD align="right"> 48 </TD> <TD> Nr4a3 </TD> </TR>
  <TR> <TD align="right"> 49 </TD> <TD> Tnc </TD> </TR>
  <TR> <TD align="right"> 50 </TD> <TD> Tal2 </TD> </TR>
  <TR> <TD align="right"> 51 </TD> <TD> Ppp2r2c </TD> </TR>
  <TR> <TD align="right"> 52 </TD> <TD> Fosl2 </TD> </TR>
  <TR> <TD align="right"> 53 </TD> <TD> Nos1 </TD> </TR>
  <TR> <TD align="right"> 54 </TD> <TD> Uncx </TD> </TR>
  <TR> <TD align="right"> 55 </TD> <TD> Rph3a </TD> </TR>
  <TR> <TD align="right"> 56 </TD> <TD> Dlx5 </TD> </TR>
  <TR> <TD align="right"> 57 </TD> <TD> Dync1i1 </TD> </TR>
  <TR> <TD align="right"> 58 </TD> <TD> Plxna4 </TD> </TR>
  <TR> <TD align="right"> 59 </TD> <TD> Rasgef1a </TD> </TR>
  <TR> <TD align="right"> 60 </TD> <TD> Hddc3 </TD> </TR>
  <TR> <TD align="right"> 61 </TD> <TD> Mfge8 </TD> </TR>
  <TR> <TD align="right"> 62 </TD> <TD> Tbx20 </TD> </TR>
  <TR> <TD align="right"> 63 </TD> <TD> Thy1 </TD> </TR>
  <TR> <TD align="right"> 64 </TD> <TD> Kirrel3 </TD> </TR>
  <TR> <TD align="right"> 65 </TD> <TD> Dscaml1 </TD> </TR>
  <TR> <TD align="right"> 66 </TD> <TD> Robo3 </TD> </TR>
  <TR> <TD align="right"> 67 </TD> <TD> Camkv </TD> </TR>
  <TR> <TD align="right"> 68 </TD> <TD> Gas7 </TD> </TR>
  <TR> <TD align="right"> 69 </TD> <TD> Tbc1d4 </TD> </TR>
  <TR> <TD align="right"> 70 </TD> <TD> Ttc28 </TD> </TR>
  <TR> <TD align="right"> 71 </TD> <TD> 4833424O15Rik </TD> </TR>
  <TR> <TD align="right"> 72 </TD> <TD> Gucy1a3 </TD> </TR>
  <TR> <TD align="right"> 73 </TD> <TD> Sncb </TD> </TR>
  <TR> <TD align="right"> 74 </TD> <TD> Arl4d </TD> </TR>
  <TR> <TD align="right"> 75 </TD> <TD> Tbr1 </TD> </TR>
  <TR> <TD align="right"> 76 </TD> <TD> Lars2 </TD> </TR>
  <TR> <TD align="right"> 77 </TD> <TD> Arx </TD> </TR>
  <TR> <TD align="right"> 78 </TD> <TD> Lum </TD> </TR>
  <TR> <TD align="right"> 79 </TD> <TD> Vgf </TD> </TR>
  <TR> <TD align="right"> 80 </TD> <TD> Kcnh3 </TD> </TR>
  <TR> <TD align="right"> 81 </TD> <TD> Neurod6 </TD> </TR>
  <TR> <TD align="right"> 82 </TD> <TD> Camk4 </TD> </TR>
  <TR> <TD align="right"> 83 </TD> <TD> Neurod2 </TD> </TR>
  <TR> <TD align="right"> 84 </TD> <TD> Satb2 </TD> </TR>
  <TR> <TD align="right"> 85 </TD> <TD> Ttk </TD> </TR>
  <TR> <TD align="right"> 86 </TD> <TD> Hoxb4 </TD> </TR>
  <TR> <TD align="right"> 87 </TD> <TD> Ldb2 </TD> </TR>
  <TR> <TD align="right"> 88 </TD> <TD> Slc6a5 </TD> </TR>
  <TR> <TD align="right"> 89 </TD> <TD> Abcc8 </TD> </TR>
  <TR> <TD align="right"> 90 </TD> <TD> Zfp704 </TD> </TR>
  <TR> <TD align="right"> 91 </TD> <TD> Tlx3 </TD> </TR>
  <TR> <TD align="right"> 92 </TD> <TD> Mpped1 </TD> </TR>
  <TR> <TD align="right"> 93 </TD> <TD> Dlx1 </TD> </TR>
  <TR> <TD align="right"> 94 </TD> <TD> Adamts3 </TD> </TR>
  <TR> <TD align="right"> 95 </TD> <TD> Gm9493 </TD> </TR>
  <TR> <TD align="right"> 96 </TD> <TD> Rps2 </TD> </TR>
  <TR> <TD align="right"> 97 </TD> <TD> D3Bwg0562e </TD> </TR>
  <TR> <TD align="right"> 98 </TD> <TD> Cnpy1 </TD> </TR>
  <TR> <TD align="right"> 99 </TD> <TD> Prkce </TD> </TR>
  <TR> <TD align="right"> 100 </TD> <TD> Hpcal4 </TD> </TR>
  <TR> <TD align="right"> 101 </TD> <TD> Olig1 </TD> </TR>
  <TR> <TD align="right"> 102 </TD> <TD> Gm7729 </TD> </TR>
  <TR> <TD align="right"> 103 </TD> <TD> Nxph3 </TD> </TR>
  <TR> <TD align="right"> 104 </TD> <TD> Fat4 </TD> </TR>
  <TR> <TD align="right"> 105 </TD> <TD> Mc4r </TD> </TR>
  <TR> <TD align="right"> 106 </TD> <TD> Pirt </TD> </TR>
  <TR> <TD align="right"> 107 </TD> <TD> Bcl11b </TD> </TR>
  <TR> <TD align="right"> 108 </TD> <TD> Pou4f1 </TD> </TR>
  <TR> <TD align="right"> 109 </TD> <TD> Nhlh2 </TD> </TR>
  <TR> <TD align="right"> 110 </TD> <TD> Rpl29 </TD> </TR>
  <TR> <TD align="right"> 111 </TD> <TD> Pla2g4e </TD> </TR>
  <TR> <TD align="right"> 112 </TD> <TD> Slc6a7 </TD> </TR>
  <TR> <TD align="right"> 113 </TD> <TD> Hbb-y </TD> </TR>
  <TR> <TD align="right"> 114 </TD> <TD> Hbb-bh1 </TD> </TR>
  <TR> <TD align="right"> 115 </TD> <TD> Adamts18 </TD> </TR>
  <TR> <TD align="right"> 116 </TD> <TD> Hba-x </TD> </TR>
  <TR> <TD align="right"> 117 </TD> <TD> Pign </TD> </TR>
  <TR> <TD align="right"> 118 </TD> <TD> Kdm5d </TD> </TR>
  <TR> <TD align="right"> 119 </TD> <TD> Hmga2 </TD> </TR>
  <TR> <TD align="right"> 120 </TD> <TD> Camk2b </TD> </TR>
  <TR> <TD align="right"> 121 </TD> <TD> Sez6l </TD> </TR>
  <TR> <TD align="right"> 122 </TD> <TD> Gda </TD> </TR>
  <TR> <TD align="right"> 123 </TD> <TD> Ppp1r1b </TD> </TR>
  <TR> <TD align="right"> 124 </TD> <TD> Rps12 </TD> </TR>
  <TR> <TD align="right"> 125 </TD> <TD> Trank1 </TD> </TR>
  <TR> <TD align="right"> 126 </TD> <TD> Zbtb18 </TD> </TR>
  <TR> <TD align="right"> 127 </TD> <TD> D430041D05Rik </TD> </TR>
  <TR> <TD align="right"> 128 </TD> <TD> Gpr88 </TD> </TR>
  <TR> <TD align="right"> 129 </TD> <TD> Ptprz1 </TD> </TR>
  <TR> <TD align="right"> 130 </TD> <TD> Ddx3y </TD> </TR>
  <TR> <TD align="right"> 131 </TD> <TD> Tmem132b </TD> </TR>
  <TR> <TD align="right"> 132 </TD> <TD> Slc17a7 </TD> </TR>
  <TR> <TD align="right"> 133 </TD> <TD> Gm9008 </TD> </TR>
  <TR> <TD align="right"> 134 </TD> <TD> Wdfy1 </TD> </TR>
  <TR> <TD align="right"> 135 </TD> <TD> Gm10709 </TD> </TR>
  <TR> <TD align="right"> 136 </TD> <TD> Commd6 </TD> </TR>
  <TR> <TD align="right"> 137 </TD> <TD> Hs3st4 </TD> </TR>
  <TR> <TD align="right"> 138 </TD> <TD> Dlx6os1 </TD> </TR>
  <TR> <TD align="right"> 139 </TD> <TD> Myl6 </TD> </TR>
  <TR> <TD align="right"> 140 </TD> <TD> Skor2 </TD> </TR>
  <TR> <TD align="right"> 141 </TD> <TD> Lhx8 </TD> </TR>
  <TR> <TD align="right"> 142 </TD> <TD> Gm26924 </TD> </TR>
  <TR> <TD align="right"> 143 </TD> <TD> RP24-312G4.2 </TD> </TR>
   </TABLE>

### Matrix of gene significant differences between conditions

(skip for Brainmap wt-v-ko comparisons)

![plot of chunk sigMatrix](figure/linc-Brn1b/sigMatrix.png) 

### Significant gene expression differences between conditions

Expression plot (genes):
![plot of chunk sigExpression](figure/linc-Brn1b/sigExpression1.png) 

```
## Using tracking_id, rep_name as id variables
## No id variables; using all as measure variables
```

![plot of chunk sigExpression](figure/linc-Brn1b/sigExpression2.png) 

Significant genes with expression >50fpkm (any condition):

```
## Using tracking_id, sample_name as id variables
```

![plot of chunk highly expressed sig](figure/linc-Brn1b/highly expressed sig.png) 

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
![plot of chunk diff.iso](figure/linc-Brn1b/diff.iso.png) 

These isoforms are:

```
## Error: no applicable method for 'xtable' applied to an object of class
## "character"
```



```
## Using tracking_id, rep_name as id variables
```

![plot of chunk isoform heatmap](figure/linc-Brn1b/isoform heatmap.png) 

### Differential Splicing between conditions

(eval false for first pass)

Per condition differences in isoforms (Does gene have diff piechart between conditions?)



These genes are:


Splicing heatmap by isoform:


Splicing heatmap by gene


The following are significantly differentially spliced genes (relative portion of isoform per condition): 





 






# Gene/Pathway Analysis

## GSEA





![plot of chunk print GSEA biocarta](figure/linc-Brn1b/print GSEA biocarta.png) 

![plot of chunk print GSEA reactome](figure/linc-Brn1b/print GSEA reactome.png) 

## GO enrichment 
Cluster profiler used to call enichments of significantly differentially regulated genes that map to Entrez IDs. 

Description/explanation of what's here, and justify all choices. 


```
## Loading required package: AnnotationDbi
## Loading required package: Biobase
## Welcome to Bioconductor
## 
##     Vignettes contain introductory material; view with
##     'browseVignettes()'. To cite Bioconductor, see
##     'citation("Biobase")', and for packages 'citation("pkgname")'.
## 
## 
## Attaching package: 'Biobase'
## 
## The following object is masked from 'package:cummeRbund':
## 
##     samples
```

```
## Warning: Can't find a usable tk.tcl in the following directories: 
##     /n/sw/centos6/tcl8.5.14/lib/tcl8.5/tk8.5 /n/sw/centos6/tcl8.5.14/lib/tk8.5 ./lib/tk8.5 ./library
## 
## 
## 
## This probably means that tk wasn't installed properly.
```

```
## 
## 
## Attaching package: 'DOSE'
## 
## The following object is masked from 'package:ReactomePA':
## 
##     gseAnalyzer
```

biomart to get entrez gene IDS
clusterProfiler does GO enrichment 

BP, MF, CC
enrichKEGG
enrichPathway


```
## 
## KEGG.db contains mappings based on older data because the original
##   resource was removed from the the public domain before the most
##   recent update was produced. This package should now be
##   considered deprecated and future versions of Bioconductor may
##   not have it available.  Users who want more current data are
##   encouraged to look at the KEGGREST or reactome.db packages
## 
## Loading required package: biomaRt
## 
## Attaching package: 'biomaRt'
## 
## The following object is masked from 'package:cummeRbund':
## 
##     getGene
## 
## Loading required package: org.Mm.eg.db
## 
## Loading required package: GO.db
```

![plot of chunk GO figures](figure/linc-Brn1b/GO figures1.png) ![plot of chunk GO figures](figure/linc-Brn1b/GO figures2.png) ![plot of chunk GO figures](figure/linc-Brn1b/GO figures3.png) ![plot of chunk GO figures](figure/linc-Brn1b/GO figures4.png) ![plot of chunk GO figures](figure/linc-Brn1b/GO figures5.png) 

# Cis vs Trans (locally)



# Notes

## Samples used are:
<!-- html table generated in R 3.0.2 by xtable 1.7-3 package -->
<!-- Mon Jun 16 15:37:21 2014 -->
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
  <TR> <TD align="right"> 16 </TD> <TD> JR758 </TD> </TR>
  <TR> <TD align="right"> 17 </TD> <TD> JR764 </TD> </TR>
  <TR> <TD align="right"> 18 </TD> <TD> JR808 </TD> </TR>
   </TABLE>

## Replicates
<!-- html table generated in R 3.0.2 by xtable 1.7-3 package -->
<!-- Mon Jun 16 15:37:21 2014 -->
<TABLE border=1>
<TR> <TH>  </TH> <TH> file </TH> <TH> sample_name </TH> <TH> replicate </TH> <TH> rep_name </TH> <TH> total_mass </TH> <TH> norm_mass </TH> <TH> internal_scale </TH> <TH> external_scale </TH>  </TR>
  <TR> <TD align="right"> 1 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR753/abundances.cxb </TD> <TD> WT </TD> <TD align="right">   0 </TD> <TD> WT_0 </TD> <TD align="right"> 39343800.00 </TD> <TD align="right"> 30772700.00 </TD> <TD align="right"> 1.32 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 2 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR750/abundances.cxb </TD> <TD> WT </TD> <TD align="right">   1 </TD> <TD> WT_1 </TD> <TD align="right"> 36041100.00 </TD> <TD align="right"> 30772700.00 </TD> <TD align="right"> 1.15 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 3 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR771/abundances.cxb </TD> <TD> WT </TD> <TD align="right">   2 </TD> <TD> WT_2 </TD> <TD align="right"> 38877000.00 </TD> <TD align="right"> 30772700.00 </TD> <TD align="right"> 1.28 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 4 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR755/abundances.cxb </TD> <TD> WT </TD> <TD align="right">   3 </TD> <TD> WT_3 </TD> <TD align="right"> 41822800.00 </TD> <TD align="right"> 30772700.00 </TD> <TD align="right"> 1.35 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 5 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR811/abundances.cxb </TD> <TD> WT </TD> <TD align="right">   4 </TD> <TD> WT_4 </TD> <TD align="right"> 38186700.00 </TD> <TD align="right"> 30772700.00 </TD> <TD align="right"> 1.26 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 6 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR768/abundances.cxb </TD> <TD> WT </TD> <TD align="right">   5 </TD> <TD> WT_5 </TD> <TD align="right"> 28382500.00 </TD> <TD align="right"> 30772700.00 </TD> <TD align="right"> 0.93 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 7 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR761/abundances.cxb </TD> <TD> WT </TD> <TD align="right">   6 </TD> <TD> WT_6 </TD> <TD align="right"> 31711800.00 </TD> <TD align="right"> 30772700.00 </TD> <TD align="right"> 1.02 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 8 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR815/abundances.cxb </TD> <TD> WT </TD> <TD align="right">   7 </TD> <TD> WT_7 </TD> <TD align="right"> 29744300.00 </TD> <TD align="right"> 30772700.00 </TD> <TD align="right"> 0.96 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 9 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR789/abundances.cxb </TD> <TD> WT </TD> <TD align="right">   8 </TD> <TD> WT_8 </TD> <TD align="right"> 27686600.00 </TD> <TD align="right"> 30772700.00 </TD> <TD align="right"> 0.90 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 10 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR748/abundances.cxb </TD> <TD> WT </TD> <TD align="right">   9 </TD> <TD> WT_9 </TD> <TD align="right"> 32374600.00 </TD> <TD align="right"> 30772700.00 </TD> <TD align="right"> 1.00 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 11 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR716/abundances.cxb </TD> <TD> WT </TD> <TD align="right">  10 </TD> <TD> WT_10 </TD> <TD align="right"> 26148700.00 </TD> <TD align="right"> 30772700.00 </TD> <TD align="right"> 0.85 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 12 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR717/abundances.cxb </TD> <TD> WT </TD> <TD align="right">  11 </TD> <TD> WT_11 </TD> <TD align="right"> 25571500.00 </TD> <TD align="right"> 30772700.00 </TD> <TD align="right"> 0.83 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 13 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR719/abundances.cxb </TD> <TD> WT </TD> <TD align="right">  12 </TD> <TD> WT_12 </TD> <TD align="right"> 22702200.00 </TD> <TD align="right"> 30772700.00 </TD> <TD align="right"> 0.72 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 14 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR791/abundances.cxb </TD> <TD> WT </TD> <TD align="right">  13 </TD> <TD> WT_13 </TD> <TD align="right"> 12886300.00 </TD> <TD align="right"> 30772700.00 </TD> <TD align="right"> 0.42 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 15 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR756/abundances.cxb </TD> <TD> WT </TD> <TD align="right">  14 </TD> <TD> WT_14 </TD> <TD align="right"> 38957200.00 </TD> <TD align="right"> 30772700.00 </TD> <TD align="right"> 1.27 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 16 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR758/abundances.cxb </TD> <TD> linc_Brn1b </TD> <TD align="right">   0 </TD> <TD> linc_Brn1b_0 </TD> <TD align="right"> 41606000.00 </TD> <TD align="right"> 30772700.00 </TD> <TD align="right"> 1.38 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 17 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR764/abundances.cxb </TD> <TD> linc_Brn1b </TD> <TD align="right">   1 </TD> <TD> linc_Brn1b_1 </TD> <TD align="right"> 30304600.00 </TD> <TD align="right"> 30772700.00 </TD> <TD align="right"> 1.00 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 18 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR808/abundances.cxb </TD> <TD> linc_Brn1b </TD> <TD align="right">   2 </TD> <TD> linc_Brn1b_2 </TD> <TD align="right"> 31233900.00 </TD> <TD align="right"> 30772700.00 </TD> <TD align="right"> 1.02 </TD> <TD align="right"> 1.00 </TD> </TR>
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
## [28] MASS_7.3-33            Matrix_1.1-3           munsell_0.4.2         
## [31] org.Hs.eg.db_2.10.1    plyr_1.8.1             proto_0.3-10          
## [34] qvalue_1.36.0          RColorBrewer_1.0-5     Rcpp_0.11.1           
## [37] RCurl_1.95-4.1         reactome.db_1.46.1     Rsamtools_1.14.3      
## [40] scales_0.2.4           splines_3.0.2          stats4_3.0.2          
## [43] stringr_0.6.2          survival_2.37-7        tcltk_3.0.2           
## [46] tools_3.0.2            XML_3.98-1.1           zlibbioc_1.8.0
```

## Run Info

```
##           param
## 1      cmd_line
## 2       version
## 3  SVN_revision
## 4 boost_version
## 5        genome
##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       value
## 1 cuffdiff -p 10 -L WT,linc-Brn1b -o /n/rinn_data1/seq/lgoff/Projects/BrainMap/diffs/linc-Brn1b_vs_WT_Embryonic /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/annotation/mm10_gencode_vM2_with_lncRNAs_and_LacZ.gtf /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR753/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR750/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR771/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR755/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR811/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR768/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR761/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR815/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR789/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR748/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR716/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR717/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR719/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR791/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR756/abundances.cxb /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR758/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR764/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR808/abundances.cxb 
## 2                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     2.2.1
## 3                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      4237
## 4                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    104700
## 5                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      mm10
```
