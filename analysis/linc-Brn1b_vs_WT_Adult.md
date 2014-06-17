linc-Brn1b KO vs WT (Adult)
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
![plot of chunk CV genes](figure/linc-Brn1b/Adult/CV genes.png) 


Isoforms: 
![plot of chunk cv iso](figure/linc-Brn1b/Adult/cv iso.png) 

## Volcano

```
## Error: One or more values of 'x' or 'y' are not valid sample names!
```

### Volcano matrix (replicates)

![plot of chunk volcano matrix](figure/linc-Brn1b/Adult/volcano matrix.png) 

## MvA plot

```
## Error: non-numeric argument to binary operator
```
   
### MvA plot counts

```
## Error: non-numeric argument to binary operator
```

## Scatterplot
![plot of chunk scatterplot](figure/linc-Brn1b/Adult/scatterplot.png) 

### Scatter matrix (replicates) -- SKIP FOR NOW CAUSING PROBLEMS 




## Distributions

### Boxplots

Boxplot (genes)

![plot of chunk boxplot genes](figure/linc-Brn1b/Adult/boxplot genes.png) 

Boxplot (genes, replicates)

![plot of chunk boxplot genes replicates](figure/linc-Brn1b/Adult/boxplot genes replicates.png) 

Boxplot (isoforms)

![plot of chunk boxplot isoforms](figure/linc-Brn1b/Adult/boxplot isoforms.png) 

Boxplot (isoforms, replicates)

![plot of chunk boxplot isoforms replicates](figure/linc-Brn1b/Adult/boxplot isoforms replicates.png) 

### Density

Density (genes)

![plot of chunk density](figure/linc-Brn1b/Adult/density.png) 

Density (genes, replicates)

![plot of chunk density w replicates](figure/linc-Brn1b/Adult/density w replicates.png) 


## Clustering

### Replicate Clusters
![plot of chunk replicate clusters](figure/linc-Brn1b/Adult/replicate clusters.png) 

```
## 'dendrogram' with 2 branches and 18 members total, at height 0.07546
```

### PCA (genes)
![plot of chunk PCA](figure/linc-Brn1b/Adult/PCA.png) 

### MDS (genes)
![plot of chunk MDS](figure/linc-Brn1b/Adult/MDS.png) 





# KO assessment

## Endogenous lncRNA expression

![plot of chunk Enodenous lncRNA tables](figure/linc-Brn1b/Adult/Enodenous lncRNA tables.png) 

Endogenous expression of linc-Brn1b isoforms:

![plot of chunk endogenous iso](figure/linc-Brn1b/Adult/endogenous iso.png) 

Barplot of gene expression:

![plot of chunk endogenous barplot](figure/linc-Brn1b/Adult/endogenous barplot.png) 

Barplot of isoform expression:

![plot of chunk endogenous iso barplot](figure/linc-Brn1b/Adult/endogenous iso barplot.png) 


## LacZ expression

![plot of chunk LacZ expression](figure/linc-Brn1b/Adult/LacZ expression1.png) ![plot of chunk LacZ expression](figure/linc-Brn1b/Adult/LacZ expression2.png) 


## Digital Genotyping (LacZ vs Endogenous lncRNA and Sex)
Expression plot (endogenous linc, lacZ, Y-expressed gene):

![plot of chunk Digital Genotyping](figure/linc-Brn1b/Adult/Digital Genotyping.png) 

Expression heatmap:
![plot of chunk digital geno heatmap](figure/linc-Brn1b/Adult/digital geno heatmap.png) 

# Differential Analysis

## Differential Genes 



There are 198 significantly differentially expressed genes. They are:

<!-- html table generated in R 3.0.2 by xtable 1.7-3 package -->
<!-- Mon Jun 16 23:12:04 2014 -->
<TABLE border=1>
<TR> <TH>  </TH> <TH> geneAnnot$gene_short_name </TH>  </TR>
  <TR> <TD align="right"> 1 </TD> <TD> Gabra2 </TD> </TR>
  <TR> <TD align="right"> 2 </TD> <TD> Sox9 </TD> </TR>
  <TR> <TD align="right"> 3 </TD> <TD> Folh1 </TD> </TR>
  <TR> <TD align="right"> 4 </TD> <TD> Kmt2a </TD> </TR>
  <TR> <TD align="right"> 5 </TD> <TD> Rec8 </TD> </TR>
  <TR> <TD align="right"> 6 </TD> <TD> Arrdc2 </TD> </TR>
  <TR> <TD align="right"> 7 </TD> <TD> Klf4 </TD> </TR>
  <TR> <TD align="right"> 8 </TD> <TD> Calr </TD> </TR>
  <TR> <TD align="right"> 9 </TD> <TD> Pde1c </TD> </TR>
  <TR> <TD align="right"> 10 </TD> <TD> Nes </TD> </TR>
  <TR> <TD align="right"> 11 </TD> <TD> Epha2 </TD> </TR>
  <TR> <TD align="right"> 12 </TD> <TD> Dio2 </TD> </TR>
  <TR> <TD align="right"> 13 </TD> <TD> Hnrnpa0 </TD> </TR>
  <TR> <TD align="right"> 14 </TD> <TD> Ttc9b </TD> </TR>
  <TR> <TD align="right"> 15 </TD> <TD> Carhsp1 </TD> </TR>
  <TR> <TD align="right"> 16 </TD> <TD> Tppp3 </TD> </TR>
  <TR> <TD align="right"> 17 </TD> <TD> Sdc4 </TD> </TR>
  <TR> <TD align="right"> 18 </TD> <TD> Etnppl </TD> </TR>
  <TR> <TD align="right"> 19 </TD> <TD> Pdk4 </TD> </TR>
  <TR> <TD align="right"> 20 </TD> <TD> P4ha1 </TD> </TR>
  <TR> <TD align="right"> 21 </TD> <TD> Sgk1 </TD> </TR>
  <TR> <TD align="right"> 22 </TD> <TD> Timp3 </TD> </TR>
  <TR> <TD align="right"> 23 </TD> <TD> Ddit4 </TD> </TR>
  <TR> <TD align="right"> 24 </TD> <TD> Btg2 </TD> </TR>
  <TR> <TD align="right"> 25 </TD> <TD> Xbp1 </TD> </TR>
  <TR> <TD align="right"> 26 </TD> <TD> Pdia6 </TD> </TR>
  <TR> <TD align="right"> 27 </TD> <TD> Pxdn </TD> </TR>
  <TR> <TD align="right"> 28 </TD> <TD> Nfkbia </TD> </TR>
  <TR> <TD align="right"> 29 </TD> <TD> Serpina3n </TD> </TR>
  <TR> <TD align="right"> 30 </TD> <TD> Fos </TD> </TR>
  <TR> <TD align="right"> 31 </TD> <TD> Gpr137b </TD> </TR>
  <TR> <TD align="right"> 32 </TD> <TD> Zkscan3 </TD> </TR>
  <TR> <TD align="right"> 33 </TD> <TD> Esd </TD> </TR>
  <TR> <TD align="right"> 34 </TD> <TD> Dnajc3 </TD> </TR>
  <TR> <TD align="right"> 35 </TD> <TD> Kcnv1 </TD> </TR>
  <TR> <TD align="right"> 36 </TD> <TD> Myh9 </TD> </TR>
  <TR> <TD align="right"> 37 </TD> <TD> Slc38a2 </TD> </TR>
  <TR> <TD align="right"> 38 </TD> <TD> Bcl6 </TD> </TR>
  <TR> <TD align="right"> 39 </TD> <TD> Sdf2l1 </TD> </TR>
  <TR> <TD align="right"> 40 </TD> <TD> Cdkn1a </TD> </TR>
  <TR> <TD align="right"> 41 </TD> <TD> Creld2 </TD> </TR>
  <TR> <TD align="right"> 42 </TD> <TD> Xdh </TD> </TR>
  <TR> <TD align="right"> 43 </TD> <TD> Atp6v0c </TD> </TR>
  <TR> <TD align="right"> 44 </TD> <TD> Dusp1 </TD> </TR>
  <TR> <TD align="right"> 45 </TD> <TD> Fkbp5 </TD> </TR>
  <TR> <TD align="right"> 46 </TD> <TD> Syt4 </TD> </TR>
  <TR> <TD align="right"> 47 </TD> <TD> Rps24 </TD> </TR>
  <TR> <TD align="right"> 48 </TD> <TD> Pdia4 </TD> </TR>
  <TR> <TD align="right"> 49 </TD> <TD> Paqr8 </TD> </TR>
  <TR> <TD align="right"> 50 </TD> <TD> Slc40a1 </TD> </TR>
  <TR> <TD align="right"> 51 </TD> <TD> Clk1 </TD> </TR>
  <TR> <TD align="right"> 52 </TD> <TD> 2810459M11Rik </TD> </TR>
  <TR> <TD align="right"> 53 </TD> <TD> Bok </TD> </TR>
  <TR> <TD align="right"> 54 </TD> <TD> Mlph </TD> </TR>
  <TR> <TD align="right"> 55 </TD> <TD> Serpinb8 </TD> </TR>
  <TR> <TD align="right"> 56 </TD> <TD> Dbi </TD> </TR>
  <TR> <TD align="right"> 57 </TD> <TD> Hspa5 </TD> </TR>
  <TR> <TD align="right"> 58 </TD> <TD> Spred1 </TD> </TR>
  <TR> <TD align="right"> 59 </TD> <TD> F3 </TD> </TR>
  <TR> <TD align="right"> 60 </TD> <TD> Trp53inp1 </TD> </TR>
  <TR> <TD align="right"> 61 </TD> <TD> Nr4a3 </TD> </TR>
  <TR> <TD align="right"> 62 </TD> <TD> Slc2a1 </TD> </TR>
  <TR> <TD align="right"> 63 </TD> <TD> Mfsd2a </TD> </TR>
  <TR> <TD align="right"> 64 </TD> <TD> Tinagl1 </TD> </TR>
  <TR> <TD align="right"> 65 </TD> <TD> Errfi1 </TD> </TR>
  <TR> <TD align="right"> 66 </TD> <TD> Ccnl2 </TD> </TR>
  <TR> <TD align="right"> 67 </TD> <TD> Fosl2 </TD> </TR>
  <TR> <TD align="right"> 68 </TD> <TD> Uncx </TD> </TR>
  <TR> <TD align="right"> 69 </TD> <TD> Tra2a </TD> </TR>
  <TR> <TD align="right"> 70 </TD> <TD> Klf15 </TD> </TR>
  <TR> <TD align="right"> 71 </TD> <TD> Adipor2 </TD> </TR>
  <TR> <TD align="right"> 72 </TD> <TD> Pglyrp1 </TD> </TR>
  <TR> <TD align="right"> 73 </TD> <TD> Tmem238 </TD> </TR>
  <TR> <TD align="right"> 74 </TD> <TD> Hddc3 </TD> </TR>
  <TR> <TD align="right"> 75 </TD> <TD> Polr3e </TD> </TR>
  <TR> <TD align="right"> 76 </TD> <TD> Tsc22d3 </TD> </TR>
  <TR> <TD align="right"> 77 </TD> <TD> Col4a1 </TD> </TR>
  <TR> <TD align="right"> 78 </TD> <TD> Plat </TD> </TR>
  <TR> <TD align="right"> 79 </TD> <TD> Mt2 </TD> </TR>
  <TR> <TD align="right"> 80 </TD> <TD> Tdgf1 </TD> </TR>
  <TR> <TD align="right"> 81 </TD> <TD> Mlh1 </TD> </TR>
  <TR> <TD align="right"> 82 </TD> <TD> Mobp </TD> </TR>
  <TR> <TD align="right"> 83 </TD> <TD> Cck </TD> </TR>
  <TR> <TD align="right"> 84 </TD> <TD> Trf </TD> </TR>
  <TR> <TD align="right"> 85 </TD> <TD> Ugt8a </TD> </TR>
  <TR> <TD align="right"> 86 </TD> <TD> Tbc1d4 </TD> </TR>
  <TR> <TD align="right"> 87 </TD> <TD> Egr3 </TD> </TR>
  <TR> <TD align="right"> 88 </TD> <TD> Tlr13 </TD> </TR>
  <TR> <TD align="right"> 89 </TD> <TD> Slc25a37 </TD> </TR>
  <TR> <TD align="right"> 90 </TD> <TD> Arhgap27 </TD> </TR>
  <TR> <TD align="right"> 91 </TD> <TD> Pla2g3 </TD> </TR>
  <TR> <TD align="right"> 92 </TD> <TD> Tiparp </TD> </TR>
  <TR> <TD align="right"> 93 </TD> <TD> Prr7 </TD> </TR>
  <TR> <TD align="right"> 94 </TD> <TD> Nostrin </TD> </TR>
  <TR> <TD align="right"> 95 </TD> <TD> Filip1 </TD> </TR>
  <TR> <TD align="right"> 96 </TD> <TD> Arl4d </TD> </TR>
  <TR> <TD align="right"> 97 </TD> <TD> Cox8a </TD> </TR>
  <TR> <TD align="right"> 98 </TD> <TD> Anln </TD> </TR>
  <TR> <TD align="right"> 99 </TD> <TD> Clic4 </TD> </TR>
  <TR> <TD align="right"> 100 </TD> <TD> Tob1 </TD> </TR>
  <TR> <TD align="right"> 101 </TD> <TD> Cldn11 </TD> </TR>
  <TR> <TD align="right"> 102 </TD> <TD> Avp </TD> </TR>
  <TR> <TD align="right"> 103 </TD> <TD> Vstm2l </TD> </TR>
  <TR> <TD align="right"> 104 </TD> <TD> Smim3 </TD> </TR>
  <TR> <TD align="right"> 105 </TD> <TD> Camk4 </TD> </TR>
  <TR> <TD align="right"> 106 </TD> <TD> Plcl1 </TD> </TR>
  <TR> <TD align="right"> 107 </TD> <TD> Txnip </TD> </TR>
  <TR> <TD align="right"> 108 </TD> <TD> Egr1 </TD> </TR>
  <TR> <TD align="right"> 109 </TD> <TD> Akap12 </TD> </TR>
  <TR> <TD align="right"> 110 </TD> <TD> Irs2 </TD> </TR>
  <TR> <TD align="right"> 111 </TD> <TD> Tbce </TD> </TR>
  <TR> <TD align="right"> 112 </TD> <TD> Pcsk1n </TD> </TR>
  <TR> <TD align="right"> 113 </TD> <TD> Tnfsf10 </TD> </TR>
  <TR> <TD align="right"> 114 </TD> <TD> Zfp189 </TD> </TR>
  <TR> <TD align="right"> 115 </TD> <TD> Slc6a5 </TD> </TR>
  <TR> <TD align="right"> 116 </TD> <TD> Daam2 </TD> </TR>
  <TR> <TD align="right"> 117 </TD> <TD> Gbp5 </TD> </TR>
  <TR> <TD align="right"> 118 </TD> <TD> C1qtnf4 </TD> </TR>
  <TR> <TD align="right"> 119 </TD> <TD> Nkx6-2 </TD> </TR>
  <TR> <TD align="right"> 120 </TD> <TD> Cldn5 </TD> </TR>
  <TR> <TD align="right"> 121 </TD> <TD> Kcnj2 </TD> </TR>
  <TR> <TD align="right"> 122 </TD> <TD> Maff </TD> </TR>
  <TR> <TD align="right"> 123 </TD> <TD> Tuba1c </TD> </TR>
  <TR> <TD align="right"> 124 </TD> <TD> Nxpe4 </TD> </TR>
  <TR> <TD align="right"> 125 </TD> <TD> Ctla2a </TD> </TR>
  <TR> <TD align="right"> 126 </TD> <TD> Snhg11 </TD> </TR>
  <TR> <TD align="right"> 127 </TD> <TD> Rps2 </TD> </TR>
  <TR> <TD align="right"> 128 </TD> <TD> Hjurp </TD> </TR>
  <TR> <TD align="right"> 129 </TD> <TD> Pcdhb7 </TD> </TR>
  <TR> <TD align="right"> 130 </TD> <TD> Cirbp </TD> </TR>
  <TR> <TD align="right"> 131 </TD> <TD> Nudt18 </TD> </TR>
  <TR> <TD align="right"> 132 </TD> <TD> Pcdhb3 </TD> </TR>
  <TR> <TD align="right"> 133 </TD> <TD> Zfp36l2 </TD> </TR>
  <TR> <TD align="right"> 134 </TD> <TD> Npas4 </TD> </TR>
  <TR> <TD align="right"> 135 </TD> <TD> Clec14a </TD> </TR>
  <TR> <TD align="right"> 136 </TD> <TD> Plaur </TD> </TR>
  <TR> <TD align="right"> 137 </TD> <TD> Mpeg1 </TD> </TR>
  <TR> <TD align="right"> 138 </TD> <TD> Cdh19 </TD> </TR>
  <TR> <TD align="right"> 139 </TD> <TD> Gimap6 </TD> </TR>
  <TR> <TD align="right"> 140 </TD> <TD> Hes5 </TD> </TR>
  <TR> <TD align="right"> 141 </TD> <TD> Ctxn1 </TD> </TR>
  <TR> <TD align="right"> 142 </TD> <TD> Dact2 </TD> </TR>
  <TR> <TD align="right"> 143 </TD> <TD> Chchd10 </TD> </TR>
  <TR> <TD align="right"> 144 </TD> <TD> Rasd1 </TD> </TR>
  <TR> <TD align="right"> 145 </TD> <TD> Rasl11b </TD> </TR>
  <TR> <TD align="right"> 146 </TD> <TD> Klk6 </TD> </TR>
  <TR> <TD align="right"> 147 </TD> <TD> Kcnk12 </TD> </TR>
  <TR> <TD align="right"> 148 </TD> <TD> Plekho2 </TD> </TR>
  <TR> <TD align="right"> 149 </TD> <TD> Pcdhb6 </TD> </TR>
  <TR> <TD align="right"> 150 </TD> <TD> Hbb-bs </TD> </TR>
  <TR> <TD align="right"> 151 </TD> <TD> Junb </TD> </TR>
  <TR> <TD align="right"> 152 </TD> <TD> Ier2 </TD> </TR>
  <TR> <TD align="right"> 153 </TD> <TD> Mat2a </TD> </TR>
  <TR> <TD align="right"> 154 </TD> <TD> Iigp1 </TD> </TR>
  <TR> <TD align="right"> 155 </TD> <TD> Tmem158 </TD> </TR>
  <TR> <TD align="right"> 156 </TD> <TD> 5033411D12Rik </TD> </TR>
  <TR> <TD align="right"> 157 </TD> <TD> Zcchc24 </TD> </TR>
  <TR> <TD align="right"> 158 </TD> <TD> Pign </TD> </TR>
  <TR> <TD align="right"> 159 </TD> <TD> Kdm5d </TD> </TR>
  <TR> <TD align="right"> 160 </TD> <TD> Ero1lb </TD> </TR>
  <TR> <TD align="right"> 161 </TD> <TD> Mex3b </TD> </TR>
  <TR> <TD align="right"> 162 </TD> <TD> Rpl30 </TD> </TR>
  <TR> <TD align="right"> 163 </TD> <TD> C030014I23Rik </TD> </TR>
  <TR> <TD align="right"> 164 </TD> <TD> Kdr </TD> </TR>
  <TR> <TD align="right"> 165 </TD> <TD> Scoc </TD> </TR>
  <TR> <TD align="right"> 166 </TD> <TD> BC048507 </TD> </TR>
  <TR> <TD align="right"> 167 </TD> <TD> Zbtb16 </TD> </TR>
  <TR> <TD align="right"> 168 </TD> <TD> Bpifb9b </TD> </TR>
  <TR> <TD align="right"> 169 </TD> <TD> Bpifb3 </TD> </TR>
  <TR> <TD align="right"> 170 </TD> <TD> Ddx3y </TD> </TR>
  <TR> <TD align="right"> 171 </TD> <TD> Gm1673 </TD> </TR>
  <TR> <TD align="right"> 172 </TD> <TD> Jund </TD> </TR>
  <TR> <TD align="right"> 173 </TD> <TD> Egr4 </TD> </TR>
  <TR> <TD align="right"> 174 </TD> <TD> Ppia </TD> </TR>
  <TR> <TD align="right"> 175 </TD> <TD> Gm7292 </TD> </TR>
  <TR> <TD align="right"> 176 </TD> <TD> Gpr27 </TD> </TR>
  <TR> <TD align="right"> 177 </TD> <TD> H2-Bl </TD> </TR>
  <TR> <TD align="right"> 178 </TD> <TD> Wdfy1 </TD> </TR>
  <TR> <TD align="right"> 179 </TD> <TD> Plekhf1 </TD> </TR>
  <TR> <TD align="right"> 180 </TD> <TD> Ccl28 </TD> </TR>
  <TR> <TD align="right"> 181 </TD> <TD> Arrdc3 </TD> </TR>
  <TR> <TD align="right"> 182 </TD> <TD> Fjx1 </TD> </TR>
  <TR> <TD align="right"> 183 </TD> <TD> Rprm </TD> </TR>
  <TR> <TD align="right"> 184 </TD> <TD> Nrarp </TD> </TR>
  <TR> <TD align="right"> 185 </TD> <TD> Gbp4 </TD> </TR>
  <TR> <TD align="right"> 186 </TD> <TD> Gm11273 </TD> </TR>
  <TR> <TD align="right"> 187 </TD> <TD> Slc5a3 </TD> </TR>
  <TR> <TD align="right"> 188 </TD> <TD> Cdr1 </TD> </TR>
  <TR> <TD align="right"> 189 </TD> <TD> Apold1 </TD> </TR>
  <TR> <TD align="right"> 190 </TD> <TD> Hspa1b </TD> </TR>
  <TR> <TD align="right"> 191 </TD> <TD> AA465934 </TD> </TR>
  <TR> <TD align="right"> 192 </TD> <TD> Gm21967 </TD> </TR>
  <TR> <TD align="right"> 193 </TD> <TD> Ccdc85b </TD> </TR>
  <TR> <TD align="right"> 194 </TD> <TD> Gm6472 </TD> </TR>
  <TR> <TD align="right"> 195 </TD> <TD> AI848285 </TD> </TR>
  <TR> <TD align="right"> 196 </TD> <TD> 4930480K23Rik </TD> </TR>
  <TR> <TD align="right"> 197 </TD> <TD> Gpr137b-ps </TD> </TR>
  <TR> <TD align="right"> 198 </TD> <TD> LacZ </TD> </TR>
   </TABLE>

### Matrix of gene significant differences between conditions

(skip for Brainmap wt-v-ko comparisons)

![plot of chunk sigMatrix](figure/linc-Brn1b/Adult/sigMatrix.png) 

### Significant gene expression differences between conditions

Expression plot (genes):
![plot of chunk sigExpression](figure/linc-Brn1b/Adult/sigExpression1.png) ![plot of chunk sigExpression](figure/linc-Brn1b/Adult/sigExpression2.png) 

Significant genes with expression >50fpkm (any condition):
![plot of chunk highly expressed sig](figure/linc-Brn1b/Adult/highly expressed sig.png) 

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
![plot of chunk diff.iso](figure/linc-Brn1b/Adult/diff.iso.png) 

These isoforms are:
<!-- html table generated in R 3.0.2 by xtable 1.7-3 package -->
<!-- Mon Jun 16 23:12:28 2014 -->
<TABLE border=1>
<TR> <TH>  </TH> <TH> isoAnnot$gene_short_name </TH>  </TR>
  <TR> <TD align="right"> 1 </TD> <TD> Gabra2 </TD> </TR>
  <TR> <TD align="right"> 2 </TD> <TD> Sox9 </TD> </TR>
  <TR> <TD align="right"> 3 </TD> <TD> Rec8 </TD> </TR>
  <TR> <TD align="right"> 4 </TD> <TD> Arrdc2 </TD> </TR>
  <TR> <TD align="right"> 5 </TD> <TD> Klf4 </TD> </TR>
  <TR> <TD align="right"> 6 </TD> <TD> Calr </TD> </TR>
  <TR> <TD align="right"> 7 </TD> <TD> Hif3a </TD> </TR>
  <TR> <TD align="right"> 8 </TD> <TD> Nes </TD> </TR>
  <TR> <TD align="right"> 9 </TD> <TD> Dio2 </TD> </TR>
  <TR> <TD align="right"> 10 </TD> <TD> Ttc9b </TD> </TR>
  <TR> <TD align="right"> 11 </TD> <TD> Pdk4 </TD> </TR>
  <TR> <TD align="right"> 12 </TD> <TD> Sgk1 </TD> </TR>
  <TR> <TD align="right"> 13 </TD> <TD> Tmcc3 </TD> </TR>
  <TR> <TD align="right"> 14 </TD> <TD> Timp3 </TD> </TR>
  <TR> <TD align="right"> 15 </TD> <TD> Ddit4 </TD> </TR>
  <TR> <TD align="right"> 16 </TD> <TD> Cpm </TD> </TR>
  <TR> <TD align="right"> 17 </TD> <TD> Tns3 </TD> </TR>
  <TR> <TD align="right"> 18 </TD> <TD> Btg2 </TD> </TR>
  <TR> <TD align="right"> 19 </TD> <TD> Xbp1 </TD> </TR>
  <TR> <TD align="right"> 20 </TD> <TD> Pxdn </TD> </TR>
  <TR> <TD align="right"> 21 </TD> <TD> Nfkbia </TD> </TR>
  <TR> <TD align="right"> 22 </TD> <TD> Serpina3n </TD> </TR>
  <TR> <TD align="right"> 23 </TD> <TD> Fos </TD> </TR>
  <TR> <TD align="right"> 24 </TD> <TD> Gpr137b </TD> </TR>
  <TR> <TD align="right"> 25 </TD> <TD> Thbs4 </TD> </TR>
  <TR> <TD align="right"> 26 </TD> <TD> Kat6b </TD> </TR>
  <TR> <TD align="right"> 27 </TD> <TD> Dnajc3 </TD> </TR>
  <TR> <TD align="right"> 28 </TD> <TD> Slc38a2 </TD> </TR>
  <TR> <TD align="right"> 29 </TD> <TD> Bcl6 </TD> </TR>
  <TR> <TD align="right"> 30 </TD> <TD> Sdf2l1 </TD> </TR>
  <TR> <TD align="right"> 31 </TD> <TD> Tfrc </TD> </TR>
  <TR> <TD align="right"> 32 </TD> <TD> Cdkn1a </TD> </TR>
  <TR> <TD align="right"> 33 </TD> <TD> Creld2 </TD> </TR>
  <TR> <TD align="right"> 34 </TD> <TD> Xdh </TD> </TR>
  <TR> <TD align="right"> 35 </TD> <TD> Atp6v0c </TD> </TR>
  <TR> <TD align="right"> 36 </TD> <TD> Dusp1 </TD> </TR>
  <TR> <TD align="right"> 37 </TD> <TD> Fkbp5 </TD> </TR>
  <TR> <TD align="right"> 38 </TD> <TD> Syt4 </TD> </TR>
  <TR> <TD align="right"> 39 </TD> <TD> Rps24 </TD> </TR>
  <TR> <TD align="right"> 40 </TD> <TD> Pdia4 </TD> </TR>
  <TR> <TD align="right"> 41 </TD> <TD> Slc40a1 </TD> </TR>
  <TR> <TD align="right"> 42 </TD> <TD> Clk1 </TD> </TR>
  <TR> <TD align="right"> 43 </TD> <TD> Bok </TD> </TR>
  <TR> <TD align="right"> 44 </TD> <TD> Mlph </TD> </TR>
  <TR> <TD align="right"> 45 </TD> <TD> Hspa5 </TD> </TR>
  <TR> <TD align="right"> 46 </TD> <TD> Spred1 </TD> </TR>
  <TR> <TD align="right"> 47 </TD> <TD> F3 </TD> </TR>
  <TR> <TD align="right"> 48 </TD> <TD> Slc2a1 </TD> </TR>
  <TR> <TD align="right"> 49 </TD> <TD> Mfsd2a </TD> </TR>
  <TR> <TD align="right"> 50 </TD> <TD> Tinagl1 </TD> </TR>
  <TR> <TD align="right"> 51 </TD> <TD> Ago3 </TD> </TR>
  <TR> <TD align="right"> 52 </TD> <TD> Map3k6 </TD> </TR>
  <TR> <TD align="right"> 53 </TD> <TD> Errfi1 </TD> </TR>
  <TR> <TD align="right"> 54 </TD> <TD> Ccnl2 </TD> </TR>
  <TR> <TD align="right"> 55 </TD> <TD> Fosl2 </TD> </TR>
  <TR> <TD align="right"> 56 </TD> <TD> Adipor2 </TD> </TR>
  <TR> <TD align="right"> 57 </TD> <TD> Pglyrp1 </TD> </TR>
  <TR> <TD align="right"> 58 </TD> <TD> Hddc3 </TD> </TR>
  <TR> <TD align="right"> 59 </TD> <TD> Tsc22d3 </TD> </TR>
  <TR> <TD align="right"> 60 </TD> <TD> Gpt2 </TD> </TR>
  <TR> <TD align="right"> 61 </TD> <TD> Mt2 </TD> </TR>
  <TR> <TD align="right"> 62 </TD> <TD> Mlh1 </TD> </TR>
  <TR> <TD align="right"> 63 </TD> <TD> Nktr </TD> </TR>
  <TR> <TD align="right"> 64 </TD> <TD> Cck </TD> </TR>
  <TR> <TD align="right"> 65 </TD> <TD> Ugt8a </TD> </TR>
  <TR> <TD align="right"> 66 </TD> <TD> Fndc3a </TD> </TR>
  <TR> <TD align="right"> 67 </TD> <TD> Akr1c14 </TD> </TR>
  <TR> <TD align="right"> 68 </TD> <TD> Egr3 </TD> </TR>
  <TR> <TD align="right"> 69 </TD> <TD> Slc25a37 </TD> </TR>
  <TR> <TD align="right"> 70 </TD> <TD> Tiparp </TD> </TR>
  <TR> <TD align="right"> 71 </TD> <TD> Prr7 </TD> </TR>
  <TR> <TD align="right"> 72 </TD> <TD> Nostrin </TD> </TR>
  <TR> <TD align="right"> 73 </TD> <TD> Arl4d </TD> </TR>
  <TR> <TD align="right"> 74 </TD> <TD> Cox8a </TD> </TR>
  <TR> <TD align="right"> 75 </TD> <TD> Anln </TD> </TR>
  <TR> <TD align="right"> 76 </TD> <TD> Tob1 </TD> </TR>
  <TR> <TD align="right"> 77 </TD> <TD> Cldn11 </TD> </TR>
  <TR> <TD align="right"> 78 </TD> <TD> Avp </TD> </TR>
  <TR> <TD align="right"> 79 </TD> <TD> Vstm2l </TD> </TR>
  <TR> <TD align="right"> 80 </TD> <TD> Smim3 </TD> </TR>
  <TR> <TD align="right"> 81 </TD> <TD> Camk4 </TD> </TR>
  <TR> <TD align="right"> 82 </TD> <TD> Aox4 </TD> </TR>
  <TR> <TD align="right"> 83 </TD> <TD> Akap12 </TD> </TR>
  <TR> <TD align="right"> 84 </TD> <TD> Irs2 </TD> </TR>
  <TR> <TD align="right"> 85 </TD> <TD> Pcsk1n </TD> </TR>
  <TR> <TD align="right"> 86 </TD> <TD> Tnfsf10 </TD> </TR>
  <TR> <TD align="right"> 87 </TD> <TD> Slc6a5 </TD> </TR>
  <TR> <TD align="right"> 88 </TD> <TD> Gjb6 </TD> </TR>
  <TR> <TD align="right"> 89 </TD> <TD> C1qtnf4 </TD> </TR>
  <TR> <TD align="right"> 90 </TD> <TD> Nkx6-2 </TD> </TR>
  <TR> <TD align="right"> 91 </TD> <TD> Cldn5 </TD> </TR>
  <TR> <TD align="right"> 92 </TD> <TD> Kcnj2 </TD> </TR>
  <TR> <TD align="right"> 93 </TD> <TD> Ctla2a </TD> </TR>
  <TR> <TD align="right"> 94 </TD> <TD> Snhg11 </TD> </TR>
  <TR> <TD align="right"> 95 </TD> <TD> Acp1 </TD> </TR>
  <TR> <TD align="right"> 96 </TD> <TD> Hjurp </TD> </TR>
  <TR> <TD align="right"> 97 </TD> <TD> Cirbp </TD> </TR>
  <TR> <TD align="right"> 98 </TD> <TD> Nudt18 </TD> </TR>
  <TR> <TD align="right"> 99 </TD> <TD> Zfp36l2 </TD> </TR>
  <TR> <TD align="right"> 100 </TD> <TD> Npas4 </TD> </TR>
  <TR> <TD align="right"> 101 </TD> <TD> Cdh19 </TD> </TR>
  <TR> <TD align="right"> 102 </TD> <TD> Hes5 </TD> </TR>
  <TR> <TD align="right"> 103 </TD> <TD> Dact2 </TD> </TR>
  <TR> <TD align="right"> 104 </TD> <TD> Pcdhb6 </TD> </TR>
  <TR> <TD align="right"> 105 </TD> <TD> Adarb2 </TD> </TR>
  <TR> <TD align="right"> 106 </TD> <TD> Junb </TD> </TR>
  <TR> <TD align="right"> 107 </TD> <TD> Ier2 </TD> </TR>
  <TR> <TD align="right"> 108 </TD> <TD> Mat2a </TD> </TR>
  <TR> <TD align="right"> 109 </TD> <TD> Zfp771 </TD> </TR>
  <TR> <TD align="right"> 110 </TD> <TD> 5033411D12Rik </TD> </TR>
  <TR> <TD align="right"> 111 </TD> <TD> Pign </TD> </TR>
  <TR> <TD align="right"> 112 </TD> <TD> Kdm5d </TD> </TR>
  <TR> <TD align="right"> 113 </TD> <TD> Ero1lb </TD> </TR>
  <TR> <TD align="right"> 114 </TD> <TD> Mex3b </TD> </TR>
  <TR> <TD align="right"> 115 </TD> <TD> Zbtb16 </TD> </TR>
  <TR> <TD align="right"> 116 </TD> <TD> Bpifb9b </TD> </TR>
  <TR> <TD align="right"> 117 </TD> <TD> Ddx3y </TD> </TR>
  <TR> <TD align="right"> 118 </TD> <TD> Ahnak </TD> </TR>
  <TR> <TD align="right"> 119 </TD> <TD> Jund </TD> </TR>
  <TR> <TD align="right"> 120 </TD> <TD> Egr4 </TD> </TR>
  <TR> <TD align="right"> 121 </TD> <TD> Gm7292 </TD> </TR>
  <TR> <TD align="right"> 122 </TD> <TD> Gpr27 </TD> </TR>
  <TR> <TD align="right"> 123 </TD> <TD> Wdfy1 </TD> </TR>
  <TR> <TD align="right"> 124 </TD> <TD> Plekhf1 </TD> </TR>
  <TR> <TD align="right"> 125 </TD> <TD> Arrdc3 </TD> </TR>
  <TR> <TD align="right"> 126 </TD> <TD> B3galt5 </TD> </TR>
  <TR> <TD align="right"> 127 </TD> <TD> Fjx1 </TD> </TR>
  <TR> <TD align="right"> 128 </TD> <TD> Nrarp </TD> </TR>
  <TR> <TD align="right"> 129 </TD> <TD> Gbp4 </TD> </TR>
  <TR> <TD align="right"> 130 </TD> <TD> Gm11273 </TD> </TR>
  <TR> <TD align="right"> 131 </TD> <TD> Cdr1 </TD> </TR>
  <TR> <TD align="right"> 132 </TD> <TD> Apold1 </TD> </TR>
  <TR> <TD align="right"> 133 </TD> <TD> Malat1 </TD> </TR>
  <TR> <TD align="right"> 134 </TD> <TD> Gm21967 </TD> </TR>
  <TR> <TD align="right"> 135 </TD> <TD> Gm6472 </TD> </TR>
  <TR> <TD align="right"> 136 </TD> <TD> 4930480K23Rik </TD> </TR>
  <TR> <TD align="right"> 137 </TD> <TD> Gpr137b-ps </TD> </TR>
  <TR> <TD align="right"> 138 </TD> <TD> LacZ </TD> </TR>
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





![plot of chunk print GSEA biocarta](figure/linc-Brn1b/Adult/print GSEA biocarta.png) 

![plot of chunk print GSEA reactome](figure/linc-Brn1b/Adult/print GSEA reactome.png) 

## GO enrichment 
Cluster profiler used to call enichments of significantly differentially regulated genes that map to Entrez IDs. 





![plot of chunk GO figures](figure/linc-Brn1b/Adult/GO figures1.png) ![plot of chunk GO figures](figure/linc-Brn1b/Adult/GO figures2.png) ![plot of chunk GO figures](figure/linc-Brn1b/Adult/GO figures3.png) ![plot of chunk GO figures](figure/linc-Brn1b/Adult/GO figures4.png) 

```
## Error: 'x' and 'units' must have length > 0
```

# Cis vs Trans (locally)



# Notes

## Samples used are:
<!-- html table generated in R 3.0.2 by xtable 1.7-3 package -->
<!-- Mon Jun 16 23:15:09 2014 -->
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
  <TR> <TD align="right"> 16 </TD> <TD> JR731 </TD> </TR>
  <TR> <TD align="right"> 17 </TD> <TD> JR835 </TD> </TR>
  <TR> <TD align="right"> 18 </TD> <TD> JR836 </TD> </TR>
   </TABLE>

## Replicates
<!-- html table generated in R 3.0.2 by xtable 1.7-3 package -->
<!-- Mon Jun 16 23:15:09 2014 -->
<TABLE border=1>
<TR> <TH>  </TH> <TH> file </TH> <TH> sample_name </TH> <TH> replicate </TH> <TH> rep_name </TH> <TH> total_mass </TH> <TH> norm_mass </TH> <TH> internal_scale </TH> <TH> external_scale </TH>  </TR>
  <TR> <TD align="right"> 1 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR729/abundances.cxb </TD> <TD> WT </TD> <TD align="right">   0 </TD> <TD> WT_0 </TD> <TD align="right"> 26338300.00 </TD> <TD align="right"> 34293100.00 </TD> <TD align="right"> 0.77 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 2 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR728/abundances.cxb </TD> <TD> WT </TD> <TD align="right">   1 </TD> <TD> WT_1 </TD> <TD align="right"> 20332100.00 </TD> <TD align="right"> 34293100.00 </TD> <TD align="right"> 0.59 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 3 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR796/abundances.cxb </TD> <TD> WT </TD> <TD align="right">   2 </TD> <TD> WT_2 </TD> <TD align="right"> 34093300.00 </TD> <TD align="right"> 34293100.00 </TD> <TD align="right"> 0.99 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 4 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR797/abundances.cxb </TD> <TD> WT </TD> <TD align="right">   3 </TD> <TD> WT_3 </TD> <TD align="right"> 28111900.00 </TD> <TD align="right"> 34293100.00 </TD> <TD align="right"> 0.81 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 5 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR740/abundances.cxb </TD> <TD> WT </TD> <TD align="right">   4 </TD> <TD> WT_4 </TD> <TD align="right"> 35813300.00 </TD> <TD align="right"> 34293100.00 </TD> <TD align="right"> 1.05 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 6 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR800/abundances.cxb </TD> <TD> WT </TD> <TD align="right">   5 </TD> <TD> WT_5 </TD> <TD align="right"> 37017800.00 </TD> <TD align="right"> 34293100.00 </TD> <TD align="right"> 1.08 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 7 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR827/abundances.cxb </TD> <TD> WT </TD> <TD align="right">   6 </TD> <TD> WT_6 </TD> <TD align="right"> 27790600.00 </TD> <TD align="right"> 34293100.00 </TD> <TD align="right"> 0.81 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 8 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR778/abundances.cxb </TD> <TD> WT </TD> <TD align="right">   7 </TD> <TD> WT_7 </TD> <TD align="right"> 39549100.00 </TD> <TD align="right"> 34293100.00 </TD> <TD align="right"> 1.17 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 9 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR734/abundances.cxb </TD> <TD> WT </TD> <TD align="right">   8 </TD> <TD> WT_8 </TD> <TD align="right"> 34485000.00 </TD> <TD align="right"> 34293100.00 </TD> <TD align="right"> 1.02 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 10 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR802/abundances.cxb </TD> <TD> WT </TD> <TD align="right">   9 </TD> <TD> WT_9 </TD> <TD align="right"> 45472800.00 </TD> <TD align="right"> 34293100.00 </TD> <TD align="right"> 1.31 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 11 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR803/abundances.cxb </TD> <TD> WT </TD> <TD align="right">  10 </TD> <TD> WT_10 </TD> <TD align="right"> 52136700.00 </TD> <TD align="right"> 34293100.00 </TD> <TD align="right"> 1.52 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 12 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR735/abundances.cxb </TD> <TD> WT </TD> <TD align="right">  11 </TD> <TD> WT_11 </TD> <TD align="right"> 34999600.00 </TD> <TD align="right"> 34293100.00 </TD> <TD align="right"> 1.02 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 13 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR817/abundances.cxb </TD> <TD> WT </TD> <TD align="right">  12 </TD> <TD> WT_12 </TD> <TD align="right"> 30811500.00 </TD> <TD align="right"> 34293100.00 </TD> <TD align="right"> 0.90 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 14 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR785/abundances.cxb </TD> <TD> WT </TD> <TD align="right">  13 </TD> <TD> WT_13 </TD> <TD align="right"> 34180700.00 </TD> <TD align="right"> 34293100.00 </TD> <TD align="right"> 0.98 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 15 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR781/abundances.cxb </TD> <TD> WT </TD> <TD align="right">  14 </TD> <TD> WT_14 </TD> <TD align="right"> 41544600.00 </TD> <TD align="right"> 34293100.00 </TD> <TD align="right"> 1.22 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 16 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR731/abundances.cxb </TD> <TD> linc_Brn1b </TD> <TD align="right">   0 </TD> <TD> linc_Brn1b_0 </TD> <TD align="right"> 24290900.00 </TD> <TD align="right"> 34293100.00 </TD> <TD align="right"> 0.71 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 17 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR835/abundances.cxb </TD> <TD> linc_Brn1b </TD> <TD align="right">   1 </TD> <TD> linc_Brn1b_1 </TD> <TD align="right"> 44570300.00 </TD> <TD align="right"> 34293100.00 </TD> <TD align="right"> 1.30 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 18 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR836/abundances.cxb </TD> <TD> linc_Brn1b </TD> <TD align="right">   2 </TD> <TD> linc_Brn1b_2 </TD> <TD align="right"> 43681600.00 </TD> <TD align="right"> 34293100.00 </TD> <TD align="right"> 1.28 </TD> <TD align="right"> 1.00 </TD> </TR>
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
##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        value
## 1 cuffdiff -p 10 -L WT,linc-Brn1b -o /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/diffs/linc-Brn1b_vs_WT_Adult /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/annotation/mm10_gencode_vM2_with_lncRNAs_and_LacZ.gtf /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR729/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR728/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR796/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR797/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR740/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR800/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR827/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR778/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR734/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR802/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR803/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR735/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR817/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR785/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR781/abundances.cxb /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR731/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR835/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR836/abundances.cxb 
## 2                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      2.2.1
## 3                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       4237
## 4                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     104700
## 5                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       mm10
```
