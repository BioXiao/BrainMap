

linc-Cox2 KO vs WT (Embryonic)
======================================





THINGS TO REMEMBER: change oldbam to bam and olddiff to diff once new set done! 





This file shows the wt-v-ko comparison for linc-Cox2. 

Cuff overview:

```
## CuffSet instance with:
## 	 2 samples
## 	 26754 genes
## 	 77524 isoforms
## 	 0 TSS
## 	 23066 CDS
## 	 0 promoters
## 	 0 splicing
## 	 19954 relCDS
```


# QC

## Dispersion

Dispersion plot for genes in cuff:
(Overdispersion can lead to innacurate quants)

![plot of chunk dispersion](figure/dispersion.png) 

## Cross-replicate variability (fpkmSCVplot)
Differences in CV 2 can result in lower numbers of differentially expressed genes due to a higher degree of variability between replicate fpkm estimates.

Genes:
![plot of chunk CV_genes](figure/CV_genes.png) 

Isoforms: 
![plot of chunk cv_iso](figure/cv_iso.png) 


## MvA plot

![plot of chunk MvA](figure/MvA.png) 
   
### MvA plot counts

![plot of chunk MvA_counts](figure/MvA_counts.png) 

## Scatterplot matrix

![plot of chunk scatterplot](figure/scatterplot.png) 

## Distributions

### Boxplots

Boxplot (genes)

![plot of chunk boxplot_genes](figure/boxplot_genes.png) 

Boxplot (genes, replicates)

![plot of chunk boxplot_genes_replicates](figure/boxplot_genes_replicates.png) 

Boxplot (isoforms)

![plot of chunk boxplot_isoforms](figure/boxplot_isoforms.png) 

Boxplot (isoforms, replicates)

![plot of chunk boxplot_isoforms_replicates](figure/boxplot_isoforms_replicates.png) 

### Density

Density (genes)

![plot of chunk density](figure/density.png) 

Density (genes, replicates)

![plot of chunk density_w_replicates](figure/density_w_replicates.png) 


## Clustering

### Replicate Clusters

![plot of chunk replicate_clusters](figure/replicate_clusters.png) 

```
## NULL
```

### PCA (genes)

![plot of chunk PCA](figure/PCA.png) 

### MDS (genes)

![plot of chunk MDS](figure/MDS.png) 





# KO assessment

## Endogenous lncRNA expression

![plot of chunk Enodenous_lncRNA_tables](figure/Enodenous_lncRNA_tables.png) 

Endogenous expression of linc-Cox2 isoforms:

![plot of chunk endogenous_iso](figure/endogenous_iso.png) 

Barplot of gene expression:

![plot of chunk endogenous_barplot](figure/endogenous_barplot.png) 

Barplot of isoform expression:

![plot of chunk endogenous_iso_barplot](figure/endogenous_iso_barplot.png) 


## LacZ expression

![plot of chunk LacZ_expression](figure/LacZ_expression1.png) ![plot of chunk LacZ_expression](figure/LacZ_expression2.png) 


## Digital Genotyping (LacZ vs Endogenous lncRNA and Sex)
Expression plot (endogenous linc, lacZ, Y-expressed gene):

![plot of chunk Digital_Genotyping](figure/Digital_Genotyping.png) 

Expression heatmap:

![plot of chunk digital_geno_heatmap](figure/digital_geno_heatmap.png) 



### Track visualization 


```
## Error: Invalid chromosome identifier 'velocigene_Zen_UB1_N3'
## Please consider setting options(ucscChromosomeNames=FALSE) to allow for arbitrary chromosome identifiers.
```

```
## Error: object 'name' not found
```

```
## Error: error in evaluating the argument 'x' in selecting a method for function 'which': Error: object 'koStrain' not found
```

```
## Error: non-character argument
```

```
## Error: object of type 'closure' is not subsettable
```

```
## Error: object of type 'closure' is not subsettable
```

```
## Error: error in evaluating the argument 'x' in selecting a method for function 'unlist': Error: object 'positions' not found
```

```
## Error: object 'positions' not found
```

```
## Error: object 'positions' not found
```

```
## Error: Invalid chromosome identifier 'velocigene_Zen_UB1_N3'
## Please consider setting options(ucscChromosomeNames=FALSE) to allow for arbitrary chromosome identifiers.
```

# Differential Analysis

## Differential Genes 



There are 96 significantly differentially expressed genes. They are:

<!-- html table generated in R 3.0.2 by xtable 1.7-3 package -->
<!-- Fri Jun 27 02:10:35 2014 -->
<TABLE border=1>
<TR> <TH>  </TH> <TH> geneAnnot$gene_short_name </TH>  </TR>
  <TR> <TD align="right"> 1 </TD> <TD> Col1a1 </TD> </TR>
  <TR> <TD align="right"> 2 </TD> <TD> Rec8 </TD> </TR>
  <TR> <TD align="right"> 3 </TD> <TD> Zfp40 </TD> </TR>
  <TR> <TD align="right"> 4 </TD> <TD> Vax1 </TD> </TR>
  <TR> <TD align="right"> 5 </TD> <TD> Ttc9b </TD> </TR>
  <TR> <TD align="right"> 6 </TD> <TD> Lama2 </TD> </TR>
  <TR> <TD align="right"> 7 </TD> <TD> Snrpf </TD> </TR>
  <TR> <TD align="right"> 8 </TD> <TD> Skor1 </TD> </TR>
  <TR> <TD align="right"> 9 </TD> <TD> Dlx2 </TD> </TR>
  <TR> <TD align="right"> 10 </TD> <TD> Park2 </TD> </TR>
  <TR> <TD align="right"> 11 </TD> <TD> Glo1 </TD> </TR>
  <TR> <TD align="right"> 12 </TD> <TD> Prss41 </TD> </TR>
  <TR> <TD align="right"> 13 </TD> <TD> Atp6v0c </TD> </TR>
  <TR> <TD align="right"> 14 </TD> <TD> Hn1l </TD> </TR>
  <TR> <TD align="right"> 15 </TD> <TD> Lox </TD> </TR>
  <TR> <TD align="right"> 16 </TD> <TD> Fbn2 </TD> </TR>
  <TR> <TD align="right"> 17 </TD> <TD> Rps14 </TD> </TR>
  <TR> <TD align="right"> 18 </TD> <TD> Lbx1 </TD> </TR>
  <TR> <TD align="right"> 19 </TD> <TD> Col3a1 </TD> </TR>
  <TR> <TD align="right"> 20 </TD> <TD> Fn1 </TD> </TR>
  <TR> <TD align="right"> 21 </TD> <TD> Bok </TD> </TR>
  <TR> <TD align="right"> 22 </TD> <TD> Mcm6 </TD> </TR>
  <TR> <TD align="right"> 23 </TD> <TD> Dbi </TD> </TR>
  <TR> <TD align="right"> 24 </TD> <TD> Syt13 </TD> </TR>
  <TR> <TD align="right"> 25 </TD> <TD> Rps3a1 </TD> </TR>
  <TR> <TD align="right"> 26 </TD> <TD> Svep1 </TD> </TR>
  <TR> <TD align="right"> 27 </TD> <TD> Uncx </TD> </TR>
  <TR> <TD align="right"> 28 </TD> <TD> Emp1 </TD> </TR>
  <TR> <TD align="right"> 29 </TD> <TD> Dera </TD> </TR>
  <TR> <TD align="right"> 30 </TD> <TD> Hddc3 </TD> </TR>
  <TR> <TD align="right"> 31 </TD> <TD> Pgls </TD> </TR>
  <TR> <TD align="right"> 32 </TD> <TD> Dnah8 </TD> </TR>
  <TR> <TD align="right"> 33 </TD> <TD> Irf2bpl </TD> </TR>
  <TR> <TD align="right"> 34 </TD> <TD> Arhgap27 </TD> </TR>
  <TR> <TD align="right"> 35 </TD> <TD> Gbx2 </TD> </TR>
  <TR> <TD align="right"> 36 </TD> <TD> Rnps1 </TD> </TR>
  <TR> <TD align="right"> 37 </TD> <TD> Prr7 </TD> </TR>
  <TR> <TD align="right"> 38 </TD> <TD> Lars2 </TD> </TR>
  <TR> <TD align="right"> 39 </TD> <TD> Arx </TD> </TR>
  <TR> <TD align="right"> 40 </TD> <TD> 3110052M02Rik </TD> </TR>
  <TR> <TD align="right"> 41 </TD> <TD> Mgat5 </TD> </TR>
  <TR> <TD align="right"> 42 </TD> <TD> Lum </TD> </TR>
  <TR> <TD align="right"> 43 </TD> <TD> Decr2 </TD> </TR>
  <TR> <TD align="right"> 44 </TD> <TD> Cldn11 </TD> </TR>
  <TR> <TD align="right"> 45 </TD> <TD> Vstm2l </TD> </TR>
  <TR> <TD align="right"> 46 </TD> <TD> Shank1 </TD> </TR>
  <TR> <TD align="right"> 47 </TD> <TD> Zfp503 </TD> </TR>
  <TR> <TD align="right"> 48 </TD> <TD> Pcsk1n </TD> </TR>
  <TR> <TD align="right"> 49 </TD> <TD> Tlx3 </TD> </TR>
  <TR> <TD align="right"> 50 </TD> <TD> C1qtnf4 </TD> </TR>
  <TR> <TD align="right"> 51 </TD> <TD> 2310036O22Rik </TD> </TR>
  <TR> <TD align="right"> 52 </TD> <TD> Fmod </TD> </TR>
  <TR> <TD align="right"> 53 </TD> <TD> Shisa4 </TD> </TR>
  <TR> <TD align="right"> 54 </TD> <TD> Hebp1 </TD> </TR>
  <TR> <TD align="right"> 55 </TD> <TD> Pgp </TD> </TR>
  <TR> <TD align="right"> 56 </TD> <TD> Gm9493 </TD> </TR>
  <TR> <TD align="right"> 57 </TD> <TD> Rps2 </TD> </TR>
  <TR> <TD align="right"> 58 </TD> <TD> Acp1 </TD> </TR>
  <TR> <TD align="right"> 59 </TD> <TD> Olfml2a </TD> </TR>
  <TR> <TD align="right"> 60 </TD> <TD> Hmga1 </TD> </TR>
  <TR> <TD align="right"> 61 </TD> <TD> Lrrc4b </TD> </TR>
  <TR> <TD align="right"> 62 </TD> <TD> Dmrta2 </TD> </TR>
  <TR> <TD align="right"> 63 </TD> <TD> Mafa </TD> </TR>
  <TR> <TD align="right"> 64 </TD> <TD> Gja1 </TD> </TR>
  <TR> <TD align="right"> 65 </TD> <TD> Tagap1 </TD> </TR>
  <TR> <TD align="right"> 66 </TD> <TD> Hbb-y </TD> </TR>
  <TR> <TD align="right"> 67 </TD> <TD> Zfp771 </TD> </TR>
  <TR> <TD align="right"> 68 </TD> <TD> Pign </TD> </TR>
  <TR> <TD align="right"> 69 </TD> <TD> Kdm5d </TD> </TR>
  <TR> <TD align="right"> 70 </TD> <TD> Capn11 </TD> </TR>
  <TR> <TD align="right"> 71 </TD> <TD> H2afj </TD> </TR>
  <TR> <TD align="right"> 72 </TD> <TD> Alox5ap </TD> </TR>
  <TR> <TD align="right"> 73 </TD> <TD> Rpl26 </TD> </TR>
  <TR> <TD align="right"> 74 </TD> <TD> Eno1 </TD> </TR>
  <TR> <TD align="right"> 75 </TD> <TD> Sox11 </TD> </TR>
  <TR> <TD align="right"> 76 </TD> <TD> Zfp428 </TD> </TR>
  <TR> <TD align="right"> 77 </TD> <TD> Sp9 </TD> </TR>
  <TR> <TD align="right"> 78 </TD> <TD> Ssbp4 </TD> </TR>
  <TR> <TD align="right"> 79 </TD> <TD> Gm1673 </TD> </TR>
  <TR> <TD align="right"> 80 </TD> <TD> Jund </TD> </TR>
  <TR> <TD align="right"> 81 </TD> <TD> Gpr27 </TD> </TR>
  <TR> <TD align="right"> 82 </TD> <TD> 9030025P20Rik </TD> </TR>
  <TR> <TD align="right"> 83 </TD> <TD> Wdfy1 </TD> </TR>
  <TR> <TD align="right"> 84 </TD> <TD> Hbb-bt </TD> </TR>
  <TR> <TD align="right"> 85 </TD> <TD> Hmga1-rs1 </TD> </TR>
  <TR> <TD align="right"> 86 </TD> <TD> Rpl39 </TD> </TR>
  <TR> <TD align="right"> 87 </TD> <TD> Gm11273 </TD> </TR>
  <TR> <TD align="right"> 88 </TD> <TD> Ccdc85c </TD> </TR>
  <TR> <TD align="right"> 89 </TD> <TD> Myl6 </TD> </TR>
  <TR> <TD align="right"> 90 </TD> <TD> Skor2 </TD> </TR>
  <TR> <TD align="right"> 91 </TD> <TD> Rnaset2b </TD> </TR>
  <TR> <TD align="right"> 92 </TD> <TD> Ccdc85b </TD> </TR>
  <TR> <TD align="right"> 93 </TD> <TD> Gm6472 </TD> </TR>
  <TR> <TD align="right"> 94 </TD> <TD> Gm9825 </TD> </TR>
  <TR> <TD align="right"> 95 </TD> <TD> Gm26917 </TD> </TR>
  <TR> <TD align="right"> 96 </TD> <TD> Gm26924 </TD> </TR>
   </TABLE>

### Matrix of gene significant differences between conditions

(skip for Brainmap wt-v-ko comparisons)

![plot of chunk sigMatrix](figure/sigMatrix.png) 

### Significant gene expression differences between conditions

Expression plot (genes):(turned off)




![plot of chunk sigExpression heatmap](figure/sigExpression heatmap.png) 

Significant genes with expression >50fpkm (any condition):(turned off)



An individual look at each of the highly expressed significantly differentially regulated genes:
(eval=false for first pass)




### Expression-level/significance relationship

Scatter plot of significant genes only:

![plot of chunk expression-sig_relationship](figure/expression-sig_relationship.png) 

Volcano Plot

![plot of chunk volcano](figure/volcano.png) 

Volcano plot with significant genes only:

![plot of chunk sig_volcano](figure/sig_volcano.png) 

FoldChange Heatmap

![plot of chunk sigGenes logfoldchange_heatmap](figure/sigGenes logfoldchange_heatmap.png) 


## Differential Splicing

### Differential Isoforms between conditions

Per isoform difference between conditions:

![plot of chunk diff_iso](figure/diff_iso.png) 

These isoforms are:

<!-- html table generated in R 3.0.2 by xtable 1.7-3 package -->
<!-- Fri Jun 27 02:10:54 2014 -->
<TABLE border=1>
<TR> <TH>  </TH> <TH> isoAnnot$gene_short_name </TH>  </TR>
  <TR> <TD align="right"> 1 </TD> <TD> Dynlt1c </TD> </TR>
  <TR> <TD align="right"> 2 </TD> <TD> Col1a1 </TD> </TR>
  <TR> <TD align="right"> 3 </TD> <TD> Rec8 </TD> </TR>
  <TR> <TD align="right"> 4 </TD> <TD> Zfp40 </TD> </TR>
  <TR> <TD align="right"> 5 </TD> <TD> Ttc9b </TD> </TR>
  <TR> <TD align="right"> 6 </TD> <TD> Lama2 </TD> </TR>
  <TR> <TD align="right"> 7 </TD> <TD> Snrpf </TD> </TR>
  <TR> <TD align="right"> 8 </TD> <TD> Prpf8 </TD> </TR>
  <TR> <TD align="right"> 9 </TD> <TD> Dlx2 </TD> </TR>
  <TR> <TD align="right"> 10 </TD> <TD> Hcfc1r1 </TD> </TR>
  <TR> <TD align="right"> 11 </TD> <TD> Glo1 </TD> </TR>
  <TR> <TD align="right"> 12 </TD> <TD> Atp6v0c </TD> </TR>
  <TR> <TD align="right"> 13 </TD> <TD> Hn1l </TD> </TR>
  <TR> <TD align="right"> 14 </TD> <TD> Lox </TD> </TR>
  <TR> <TD align="right"> 15 </TD> <TD> Fbn2 </TD> </TR>
  <TR> <TD align="right"> 16 </TD> <TD> Rps14 </TD> </TR>
  <TR> <TD align="right"> 17 </TD> <TD> Lbx1 </TD> </TR>
  <TR> <TD align="right"> 18 </TD> <TD> Fn1 </TD> </TR>
  <TR> <TD align="right"> 19 </TD> <TD> Asb1 </TD> </TR>
  <TR> <TD align="right"> 20 </TD> <TD> Mcm6 </TD> </TR>
  <TR> <TD align="right"> 21 </TD> <TD> Dbi </TD> </TR>
  <TR> <TD align="right"> 22 </TD> <TD> Lrp2 </TD> </TR>
  <TR> <TD align="right"> 23 </TD> <TD> Syt13 </TD> </TR>
  <TR> <TD align="right"> 24 </TD> <TD> Rps3a1 </TD> </TR>
  <TR> <TD align="right"> 25 </TD> <TD> Svep1 </TD> </TR>
  <TR> <TD align="right"> 26 </TD> <TD> Dera </TD> </TR>
  <TR> <TD align="right"> 27 </TD> <TD> Hddc3 </TD> </TR>
  <TR> <TD align="right"> 28 </TD> <TD> Rnf111 </TD> </TR>
  <TR> <TD align="right"> 29 </TD> <TD> Dnah8 </TD> </TR>
  <TR> <TD align="right"> 30 </TD> <TD> Gbx2 </TD> </TR>
  <TR> <TD align="right"> 31 </TD> <TD> Rnps1 </TD> </TR>
  <TR> <TD align="right"> 32 </TD> <TD> Fam171a2 </TD> </TR>
  <TR> <TD align="right"> 33 </TD> <TD> Prr7 </TD> </TR>
  <TR> <TD align="right"> 34 </TD> <TD> Lars2 </TD> </TR>
  <TR> <TD align="right"> 35 </TD> <TD> Arx </TD> </TR>
  <TR> <TD align="right"> 36 </TD> <TD> 3110052M02Rik </TD> </TR>
  <TR> <TD align="right"> 37 </TD> <TD> Decr2 </TD> </TR>
  <TR> <TD align="right"> 38 </TD> <TD> Cldn11 </TD> </TR>
  <TR> <TD align="right"> 39 </TD> <TD> Vstm2l </TD> </TR>
  <TR> <TD align="right"> 40 </TD> <TD> Pcsk1n </TD> </TR>
  <TR> <TD align="right"> 41 </TD> <TD> Dgkz </TD> </TR>
  <TR> <TD align="right"> 42 </TD> <TD> Tlx3 </TD> </TR>
  <TR> <TD align="right"> 43 </TD> <TD> C1qtnf4 </TD> </TR>
  <TR> <TD align="right"> 44 </TD> <TD> 2310036O22Rik </TD> </TR>
  <TR> <TD align="right"> 45 </TD> <TD> Fmod </TD> </TR>
  <TR> <TD align="right"> 46 </TD> <TD> Reln </TD> </TR>
  <TR> <TD align="right"> 47 </TD> <TD> Hebp1 </TD> </TR>
  <TR> <TD align="right"> 48 </TD> <TD> Pgp </TD> </TR>
  <TR> <TD align="right"> 49 </TD> <TD> Gm9493 </TD> </TR>
  <TR> <TD align="right"> 50 </TD> <TD> Zfp758 </TD> </TR>
  <TR> <TD align="right"> 51 </TD> <TD> Olfml2a </TD> </TR>
  <TR> <TD align="right"> 52 </TD> <TD> Hmga1 </TD> </TR>
  <TR> <TD align="right"> 53 </TD> <TD> Mafa </TD> </TR>
  <TR> <TD align="right"> 54 </TD> <TD> Col6a3 </TD> </TR>
  <TR> <TD align="right"> 55 </TD> <TD> Tagap1 </TD> </TR>
  <TR> <TD align="right"> 56 </TD> <TD> Hbb-y </TD> </TR>
  <TR> <TD align="right"> 57 </TD> <TD> Zfp771 </TD> </TR>
  <TR> <TD align="right"> 58 </TD> <TD> Pign </TD> </TR>
  <TR> <TD align="right"> 59 </TD> <TD> Kdm5d </TD> </TR>
  <TR> <TD align="right"> 60 </TD> <TD> Capn11 </TD> </TR>
  <TR> <TD align="right"> 61 </TD> <TD> Sox11 </TD> </TR>
  <TR> <TD align="right"> 62 </TD> <TD> Ssbp4 </TD> </TR>
  <TR> <TD align="right"> 63 </TD> <TD> Jund </TD> </TR>
  <TR> <TD align="right"> 64 </TD> <TD> Gpr27 </TD> </TR>
  <TR> <TD align="right"> 65 </TD> <TD> 9030025P20Rik </TD> </TR>
  <TR> <TD align="right"> 66 </TD> <TD> Gm11273 </TD> </TR>
  <TR> <TD align="right"> 67 </TD> <TD> Ccdc85c </TD> </TR>
  <TR> <TD align="right"> 68 </TD> <TD> Myl6 </TD> </TR>
  <TR> <TD align="right"> 69 </TD> <TD> Ccdc85b </TD> </TR>
  <TR> <TD align="right"> 70 </TD> <TD> Gm6472 </TD> </TR>
  <TR> <TD align="right"> 71 </TD> <TD> Gm9825 </TD> </TR>
  <TR> <TD align="right"> 72 </TD> <TD> Gm26917 </TD> </TR>
  <TR> <TD align="right"> 73 </TD> <TD> Gm26924 </TD> </TR>
   </TABLE>

Gene-level DE isoform heatmap

![plot of chunk isoform_heatmap](figure/isoform_heatmap.png) 

Isoform foldchange heatmap by isoform:

![plot of chunk isoform logfoldchange_heatmap](figure/isoform logfoldchange_heatmap.png) 


### Differential Splicing between conditions

(eval false for first pass)

Per condition differences in isoforms (Does gene have diff piechart between conditions?)



These genes are:



Splicing heatmap by isoform:



Splicing heatmap by gene



The following are significantly differentially spliced genes (relative portion of isoform per condition): 





 




# Gene/Pathway Analysis

## GSEA






Biocarta enrichment: 

![plot of chunk print_GSEA_biocarta](figure/print_GSEA_biocarta.png) 

Biocarta zscore: 

![plot of chunk gsea_zscore_biocarta](figure/gsea_zscore_biocarta.png) 


Reactome enrichment: 


```
## Error: no locations are finite
```

![plot of chunk print_GSEA_reactome](figure/print_GSEA_reactome.png) 


Reactome zscore: 

![plot of chunk gsea_zscore_reactome](figure/gsea_zscore_reactome.png) 


Kegg enrichment: 

![plot of chunk gsea_enrichment_kegg](figure/gsea_enrichment_kegg.png) 

Kegg zscore: 

![plot of chunk gsea_zscore_kegg](figure/gsea_zscore_kegg.png) 





## GO enrichment 
Cluster profiler used to call enichments of significantly differentially regulated genes that map to Entrez IDs. 





![plot of chunk GO_figures](figure/GO_figures1.png) ![plot of chunk GO_figures](figure/GO_figures2.png) ![plot of chunk GO_figures](figure/GO_figures3.png) ![plot of chunk GO_figures](figure/GO_figures4.png) ![plot of chunk GO_figures](figure/GO_figures5.png) 

# Cis vs Trans (locally)



The pvalue for 0 genes significantly regulated in a region this size  is: 1 


![plot of chunk cisreg_image](figure/cisreg_image.png) 

# Notes

## Samples used are:
<!-- html table generated in R 3.0.2 by xtable 1.7-3 package -->
<!-- Fri Jun 27 02:29:25 2014 -->
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
  <TR> <TD align="right"> 14 </TD> <TD> JR756 </TD> </TR>
  <TR> <TD align="right"> 15 </TD> <TD> JR809 </TD> </TR>
  <TR> <TD align="right"> 16 </TD> <TD> JR816 </TD> </TR>
  <TR> <TD align="right"> 17 </TD> <TD> JR829 </TD> </TR>
   </TABLE>

## Replicates
<!-- html table generated in R 3.0.2 by xtable 1.7-3 package -->
<!-- Fri Jun 27 02:29:25 2014 -->
<TABLE border=1>
<TR> <TH>  </TH> <TH> file </TH> <TH> sample_name </TH> <TH> replicate </TH> <TH> rep_name </TH> <TH> total_mass </TH> <TH> norm_mass </TH> <TH> internal_scale </TH> <TH> external_scale </TH>  </TR>
  <TR> <TD align="right"> 1 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR753/abundances.cxb </TD> <TD> WT </TD> <TD align="right">   0 </TD> <TD> WT_0 </TD> <TD align="right"> 39343800.00 </TD> <TD align="right"> 32204800.00 </TD> <TD align="right"> 1.27 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 2 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR750/abundances.cxb </TD> <TD> WT </TD> <TD align="right">   1 </TD> <TD> WT_1 </TD> <TD align="right"> 36041100.00 </TD> <TD align="right"> 32204800.00 </TD> <TD align="right"> 1.10 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 3 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR771/abundances.cxb </TD> <TD> WT </TD> <TD align="right">   2 </TD> <TD> WT_2 </TD> <TD align="right"> 38877000.00 </TD> <TD align="right"> 32204800.00 </TD> <TD align="right"> 1.23 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 4 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR755/abundances.cxb </TD> <TD> WT </TD> <TD align="right">   3 </TD> <TD> WT_3 </TD> <TD align="right"> 41822800.00 </TD> <TD align="right"> 32204800.00 </TD> <TD align="right"> 1.29 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 5 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR811/abundances.cxb </TD> <TD> WT </TD> <TD align="right">   4 </TD> <TD> WT_4 </TD> <TD align="right"> 38186700.00 </TD> <TD align="right"> 32204800.00 </TD> <TD align="right"> 1.21 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 6 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR768/abundances.cxb </TD> <TD> WT </TD> <TD align="right">   5 </TD> <TD> WT_5 </TD> <TD align="right"> 28382500.00 </TD> <TD align="right"> 32204800.00 </TD> <TD align="right"> 0.90 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 7 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR761/abundances.cxb </TD> <TD> WT </TD> <TD align="right">   6 </TD> <TD> WT_6 </TD> <TD align="right"> 31711800.00 </TD> <TD align="right"> 32204800.00 </TD> <TD align="right"> 0.98 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 8 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR815/abundances.cxb </TD> <TD> WT </TD> <TD align="right">   7 </TD> <TD> WT_7 </TD> <TD align="right"> 29744300.00 </TD> <TD align="right"> 32204800.00 </TD> <TD align="right"> 0.93 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 9 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR789/abundances.cxb </TD> <TD> WT </TD> <TD align="right">   8 </TD> <TD> WT_8 </TD> <TD align="right"> 27686600.00 </TD> <TD align="right"> 32204800.00 </TD> <TD align="right"> 0.86 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 10 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR748/abundances.cxb </TD> <TD> WT </TD> <TD align="right">   9 </TD> <TD> WT_9 </TD> <TD align="right"> 32374600.00 </TD> <TD align="right"> 32204800.00 </TD> <TD align="right"> 0.96 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 11 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR716/abundances.cxb </TD> <TD> WT </TD> <TD align="right">  10 </TD> <TD> WT_10 </TD> <TD align="right"> 26148700.00 </TD> <TD align="right"> 32204800.00 </TD> <TD align="right"> 0.81 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 12 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR717/abundances.cxb </TD> <TD> WT </TD> <TD align="right">  11 </TD> <TD> WT_11 </TD> <TD align="right"> 25571500.00 </TD> <TD align="right"> 32204800.00 </TD> <TD align="right"> 0.80 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 13 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR719/abundances.cxb </TD> <TD> WT </TD> <TD align="right">  12 </TD> <TD> WT_12 </TD> <TD align="right"> 22702200.00 </TD> <TD align="right"> 32204800.00 </TD> <TD align="right"> 0.69 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 14 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR756/abundances.cxb </TD> <TD> WT </TD> <TD align="right">  13 </TD> <TD> WT_13 </TD> <TD align="right"> 38957200.00 </TD> <TD align="right"> 32204800.00 </TD> <TD align="right"> 1.22 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 15 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR809/abundances.cxb </TD> <TD> linc_Cox2 </TD> <TD align="right">   0 </TD> <TD> linc_Cox2_0 </TD> <TD align="right"> 36059200.00 </TD> <TD align="right"> 32204800.00 </TD> <TD align="right"> 1.11 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 16 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR816/abundances.cxb </TD> <TD> linc_Cox2 </TD> <TD align="right">   1 </TD> <TD> linc_Cox2_1 </TD> <TD align="right"> 31838500.00 </TD> <TD align="right"> 32204800.00 </TD> <TD align="right"> 0.98 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 17 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR829/abundances.cxb </TD> <TD> linc_Cox2 </TD> <TD align="right">   2 </TD> <TD> linc_Cox2_2 </TD> <TD align="right"> 30840100.00 </TD> <TD align="right"> 32204800.00 </TD> <TD align="right"> 0.95 </TD> <TD align="right"> 1.00 </TD> </TR>
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
##  [1] plyr_1.8.1                         
##  [2] stringr_0.6.2                      
##  [3] seqbias_1.10.0                     
##  [4] BSgenome.Mmusculus.UCSC.mm10_1.3.19
##  [5] BSgenome_1.30.0                    
##  [6] Biostrings_2.30.1                  
##  [7] GO.db_2.10.1                       
##  [8] org.Mm.eg.db_2.10.1                
##  [9] clusterProfiler_1.13.1             
## [10] DOSE_2.0.0                         
## [11] ReactomePA_1.6.1                   
## [12] AnnotationDbi_1.24.0               
## [13] Biobase_2.22.0                     
## [14] mgcv_1.7-29                        
## [15] nlme_3.1-117                       
## [16] RMySQL_0.9-3                       
## [17] RColorBrewer_1.0-5                 
## [18] gridExtra_0.9.1                    
## [19] gtable_0.1.2                       
## [20] marray_1.40.0                      
## [21] gplots_2.13.0                      
## [22] GSA_1.03                           
## [23] limma_3.18.13                      
## [24] xtable_1.7-3                       
## [25] cummeRbund_2.7.2                   
## [26] Gviz_1.6.0                         
## [27] rtracklayer_1.22.7                 
## [28] GenomicRanges_1.14.4               
## [29] XVector_0.2.0                      
## [30] IRanges_1.20.7                     
## [31] fastcluster_1.1.13                 
## [32] reshape2_1.4                       
## [33] ggplot2_1.0.0                      
## [34] RSQLite_0.11.4                     
## [35] DBI_0.2-7                          
## [36] BiocGenerics_0.8.0                 
## [37] knitr_1.6                          
## 
## loaded via a namespace (and not attached):
##  [1] biomaRt_2.18.0         biovizBase_1.10.8      bitops_1.0-6          
##  [4] caTools_1.17           cluster_1.15.2         colorspace_1.2-4      
##  [7] dichromat_2.0-0        digest_0.6.4           DO.db_2.7             
## [10] evaluate_0.5.5         formatR_0.10           Formula_1.1-1         
## [13] gdata_2.13.3           GenomicFeatures_1.14.5 GOSemSim_1.20.3       
## [16] graph_1.40.1           graphite_1.8.1         gtools_3.4.1          
## [19] Hmisc_3.14-4           igraph_0.7.1           KEGG.db_2.10.1        
## [22] KernSmooth_2.23-12     labeling_0.2           lattice_0.20-29       
## [25] latticeExtra_0.6-26    markdown_0.7           MASS_7.3-33           
## [28] Matrix_1.1-3           mime_0.1.1             munsell_0.4.2         
## [31] org.Hs.eg.db_2.10.1    proto_0.3-10           qvalue_1.36.0         
## [34] Rcpp_0.11.1            RCurl_1.95-4.1         reactome.db_1.46.1    
## [37] Rsamtools_1.14.3       scales_0.2.4           splines_3.0.2         
## [40] stats4_3.0.2           survival_2.37-7        tcltk_3.0.2           
## [43] tools_3.0.2            XML_3.98-1.1           zlibbioc_1.8.0
```

## Run Info

```
##           param
## 1      cmd_line
## 2       version
## 3  SVN_revision
## 4 boost_version
## 5        genome
##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               value
## 1 cuffdiff -p 10 -L WT,linc-Cox2 -o /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/diffs/linc-Cox2_vs_WT_Embryonic /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/annotation/mm10_gencode_vM2_with_lncRNAs_and_LacZ.gtf /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR753/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR750/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR771/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR755/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR811/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR768/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR761/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR815/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR789/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR748/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR716/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR717/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR719/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR756/abundances.cxb /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR809/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR816/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR829/abundances.cxb 
## 2                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             2.2.1
## 3                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              4237
## 4                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            104700
## 5                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              mm10
```




