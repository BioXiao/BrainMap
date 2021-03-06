

linc-Cox2 KO vs WT (Adult)
======================================









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

Eif2s3y is a y-expressed gene, Xist is an x-expressed gene 
Expression plot (endogenous linc, lacZ, Y-expressed gene):

![plot of chunk Digital_Genotyping](figure/Digital_Genotyping.png) 

Expression heatmap:

![plot of chunk digital_geno_heatmap](figure/digital_geno_heatmap.png) 


### Track visualization 


```
## Error: dims [product 5] do not match the length of object [6]
```

![plot of chunk track_vis](figure/track_vis.png) 

# Differential Analysis

## Differential Genes 



There are 94 significantly differentially expressed genes. They are:

<!-- html table generated in R 3.0.2 by xtable 1.7-3 package -->
<!-- Wed Jul  2 01:07:23 2014 -->
<TABLE border=1>
<TR> <TH>  </TH> <TH> geneAnnot$gene_short_name </TH>  </TR>
  <TR> <TD align="right"> 1 </TD> <TD> Tubb6 </TD> </TR>
  <TR> <TD align="right"> 2 </TD> <TD> Folh1 </TD> </TR>
  <TR> <TD align="right"> 3 </TD> <TD> Nes </TD> </TR>
  <TR> <TD align="right"> 4 </TD> <TD> Epha2 </TD> </TR>
  <TR> <TD align="right"> 5 </TD> <TD> Nav1 </TD> </TR>
  <TR> <TD align="right"> 6 </TD> <TD> Vtn </TD> </TR>
  <TR> <TD align="right"> 7 </TD> <TD> Fabp7 </TD> </TR>
  <TR> <TD align="right"> 8 </TD> <TD> Adi1 </TD> </TR>
  <TR> <TD align="right"> 9 </TD> <TD> Serpina3n </TD> </TR>
  <TR> <TD align="right"> 10 </TD> <TD> Fos </TD> </TR>
  <TR> <TD align="right"> 11 </TD> <TD> Emp2 </TD> </TR>
  <TR> <TD align="right"> 12 </TD> <TD> Arc </TD> </TR>
  <TR> <TD align="right"> 13 </TD> <TD> Sdf2l1 </TD> </TR>
  <TR> <TD align="right"> 14 </TD> <TD> Nr4a1 </TD> </TR>
  <TR> <TD align="right"> 15 </TD> <TD> Cdkn1a </TD> </TR>
  <TR> <TD align="right"> 16 </TD> <TD> Park2 </TD> </TR>
  <TR> <TD align="right"> 17 </TD> <TD> Glo1 </TD> </TR>
  <TR> <TD align="right"> 18 </TD> <TD> Prss41 </TD> </TR>
  <TR> <TD align="right"> 19 </TD> <TD> Atp6v0c </TD> </TR>
  <TR> <TD align="right"> 20 </TD> <TD> Eci1 </TD> </TR>
  <TR> <TD align="right"> 21 </TD> <TD> Lars </TD> </TR>
  <TR> <TD align="right"> 22 </TD> <TD> Camk2a </TD> </TR>
  <TR> <TD align="right"> 23 </TD> <TD> Cnksr2 </TD> </TR>
  <TR> <TD align="right"> 24 </TD> <TD> Mcm6 </TD> </TR>
  <TR> <TD align="right"> 25 </TD> <TD> Dbi </TD> </TR>
  <TR> <TD align="right"> 26 </TD> <TD> Tnni1 </TD> </TR>
  <TR> <TD align="right"> 27 </TD> <TD> Lamc2 </TD> </TR>
  <TR> <TD align="right"> 28 </TD> <TD> Rgs5 </TD> </TR>
  <TR> <TD align="right"> 29 </TD> <TD> Myoc </TD> </TR>
  <TR> <TD align="right"> 30 </TD> <TD> Lypd6b </TD> </TR>
  <TR> <TD align="right"> 31 </TD> <TD> Lcn2 </TD> </TR>
  <TR> <TD align="right"> 32 </TD> <TD> Hspa5 </TD> </TR>
  <TR> <TD align="right"> 33 </TD> <TD> Olfml3 </TD> </TR>
  <TR> <TD align="right"> 34 </TD> <TD> Rps3a1 </TD> </TR>
  <TR> <TD align="right"> 35 </TD> <TD> Nr4a3 </TD> </TR>
  <TR> <TD align="right"> 36 </TD> <TD> Tinagl1 </TD> </TR>
  <TR> <TD align="right"> 37 </TD> <TD> Padi2 </TD> </TR>
  <TR> <TD align="right"> 38 </TD> <TD> Hes3 </TD> </TR>
  <TR> <TD align="right"> 39 </TD> <TD> Fbxo44 </TD> </TR>
  <TR> <TD align="right"> 40 </TD> <TD> Fosl2 </TD> </TR>
  <TR> <TD align="right"> 41 </TD> <TD> Gkn3 </TD> </TR>
  <TR> <TD align="right"> 42 </TD> <TD> Hddc3 </TD> </TR>
  <TR> <TD align="right"> 43 </TD> <TD> Col4a1 </TD> </TR>
  <TR> <TD align="right"> 44 </TD> <TD> Ptgs2 </TD> </TR>
  <TR> <TD align="right"> 45 </TD> <TD> Ndn </TD> </TR>
  <TR> <TD align="right"> 46 </TD> <TD> Arhgap27 </TD> </TR>
  <TR> <TD align="right"> 47 </TD> <TD> Rnps1 </TD> </TR>
  <TR> <TD align="right"> 48 </TD> <TD> Prr7 </TD> </TR>
  <TR> <TD align="right"> 49 </TD> <TD> Zranb3 </TD> </TR>
  <TR> <TD align="right"> 50 </TD> <TD> Arl5a </TD> </TR>
  <TR> <TD align="right"> 51 </TD> <TD> Mgat5 </TD> </TR>
  <TR> <TD align="right"> 52 </TD> <TD> Decr2 </TD> </TR>
  <TR> <TD align="right"> 53 </TD> <TD> Psenen </TD> </TR>
  <TR> <TD align="right"> 54 </TD> <TD> Egr1 </TD> </TR>
  <TR> <TD align="right"> 55 </TD> <TD> Akap12 </TD> </TR>
  <TR> <TD align="right"> 56 </TD> <TD> Pcsk1n </TD> </TR>
  <TR> <TD align="right"> 57 </TD> <TD> Trub2 </TD> </TR>
  <TR> <TD align="right"> 58 </TD> <TD> Fmo2 </TD> </TR>
  <TR> <TD align="right"> 59 </TD> <TD> Slc25a34 </TD> </TR>
  <TR> <TD align="right"> 60 </TD> <TD> Cldn5 </TD> </TR>
  <TR> <TD align="right"> 61 </TD> <TD> Gucy1a2 </TD> </TR>
  <TR> <TD align="right"> 62 </TD> <TD> Kif21b </TD> </TR>
  <TR> <TD align="right"> 63 </TD> <TD> Shisa4 </TD> </TR>
  <TR> <TD align="right"> 64 </TD> <TD> Maff </TD> </TR>
  <TR> <TD align="right"> 65 </TD> <TD> Id1 </TD> </TR>
  <TR> <TD align="right"> 66 </TD> <TD> Acp1 </TD> </TR>
  <TR> <TD align="right"> 67 </TD> <TD> 4930503L19Rik </TD> </TR>
  <TR> <TD align="right"> 68 </TD> <TD> Pcdhb3 </TD> </TR>
  <TR> <TD align="right"> 69 </TD> <TD> Olfml2a </TD> </TR>
  <TR> <TD align="right"> 70 </TD> <TD> Tnrc6b </TD> </TR>
  <TR> <TD align="right"> 71 </TD> <TD> Lmod1 </TD> </TR>
  <TR> <TD align="right"> 72 </TD> <TD> Tagap1 </TD> </TR>
  <TR> <TD align="right"> 73 </TD> <TD> Aldh7a1 </TD> </TR>
  <TR> <TD align="right"> 74 </TD> <TD> Per2 </TD> </TR>
  <TR> <TD align="right"> 75 </TD> <TD> S100a9 </TD> </TR>
  <TR> <TD align="right"> 76 </TD> <TD> Kcnq3 </TD> </TR>
  <TR> <TD align="right"> 77 </TD> <TD> Pign </TD> </TR>
  <TR> <TD align="right"> 78 </TD> <TD> Kdm5d </TD> </TR>
  <TR> <TD align="right"> 79 </TD> <TD> Tpm3-rs7 </TD> </TR>
  <TR> <TD align="right"> 80 </TD> <TD> Capn11 </TD> </TR>
  <TR> <TD align="right"> 81 </TD> <TD> Gm5506 </TD> </TR>
  <TR> <TD align="right"> 82 </TD> <TD> Pyroxd2 </TD> </TR>
  <TR> <TD align="right"> 83 </TD> <TD> Eno1 </TD> </TR>
  <TR> <TD align="right"> 84 </TD> <TD> Chi3l1 </TD> </TR>
  <TR> <TD align="right"> 85 </TD> <TD> Clasp1 </TD> </TR>
  <TR> <TD align="right"> 86 </TD> <TD> Ddx3y </TD> </TR>
  <TR> <TD align="right"> 87 </TD> <TD> Gm7292 </TD> </TR>
  <TR> <TD align="right"> 88 </TD> <TD> Wdfy1 </TD> </TR>
  <TR> <TD align="right"> 89 </TD> <TD> Apold1 </TD> </TR>
  <TR> <TD align="right"> 90 </TD> <TD> Hspa1b </TD> </TR>
  <TR> <TD align="right"> 91 </TD> <TD> Scnm1 </TD> </TR>
  <TR> <TD align="right"> 92 </TD> <TD> AA465934 </TD> </TR>
  <TR> <TD align="right"> 93 </TD> <TD> Gm10524 </TD> </TR>
  <TR> <TD align="right"> 94 </TD> <TD> RP24-390G17.1 </TD> </TR>
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
<!-- Wed Jul  2 01:08:25 2014 -->
<TABLE border=1>
<TR> <TH>  </TH> <TH> isoAnnot$gene_short_name </TH>  </TR>
  <TR> <TD align="right"> 1 </TD> <TD> Tubb6 </TD> </TR>
  <TR> <TD align="right"> 2 </TD> <TD> Rec8 </TD> </TR>
  <TR> <TD align="right"> 3 </TD> <TD> Nes </TD> </TR>
  <TR> <TD align="right"> 4 </TD> <TD> Vtn </TD> </TR>
  <TR> <TD align="right"> 5 </TD> <TD> Fabp7 </TD> </TR>
  <TR> <TD align="right"> 6 </TD> <TD> Serpina3n </TD> </TR>
  <TR> <TD align="right"> 7 </TD> <TD> Fos </TD> </TR>
  <TR> <TD align="right"> 8 </TD> <TD> Emp2 </TD> </TR>
  <TR> <TD align="right"> 9 </TD> <TD> Arc </TD> </TR>
  <TR> <TD align="right"> 10 </TD> <TD> Sdf2l1 </TD> </TR>
  <TR> <TD align="right"> 11 </TD> <TD> Nr4a1 </TD> </TR>
  <TR> <TD align="right"> 12 </TD> <TD> Cdkn1a </TD> </TR>
  <TR> <TD align="right"> 13 </TD> <TD> Glo1 </TD> </TR>
  <TR> <TD align="right"> 14 </TD> <TD> Atp6v0c </TD> </TR>
  <TR> <TD align="right"> 15 </TD> <TD> Eci1 </TD> </TR>
  <TR> <TD align="right"> 16 </TD> <TD> Lars </TD> </TR>
  <TR> <TD align="right"> 17 </TD> <TD> Cdh7 </TD> </TR>
  <TR> <TD align="right"> 18 </TD> <TD> Mcm6 </TD> </TR>
  <TR> <TD align="right"> 19 </TD> <TD> Dbi </TD> </TR>
  <TR> <TD align="right"> 20 </TD> <TD> Lamc2 </TD> </TR>
  <TR> <TD align="right"> 21 </TD> <TD> Rgs5 </TD> </TR>
  <TR> <TD align="right"> 22 </TD> <TD> Myoc </TD> </TR>
  <TR> <TD align="right"> 23 </TD> <TD> Lypd6b </TD> </TR>
  <TR> <TD align="right"> 24 </TD> <TD> Olfml3 </TD> </TR>
  <TR> <TD align="right"> 25 </TD> <TD> Tpm3 </TD> </TR>
  <TR> <TD align="right"> 26 </TD> <TD> Rps3a1 </TD> </TR>
  <TR> <TD align="right"> 27 </TD> <TD> Arhgef19 </TD> </TR>
  <TR> <TD align="right"> 28 </TD> <TD> Padi2 </TD> </TR>
  <TR> <TD align="right"> 29 </TD> <TD> Hes3 </TD> </TR>
  <TR> <TD align="right"> 30 </TD> <TD> Fosl2 </TD> </TR>
  <TR> <TD align="right"> 31 </TD> <TD> Gkn3 </TD> </TR>
  <TR> <TD align="right"> 32 </TD> <TD> Hddc3 </TD> </TR>
  <TR> <TD align="right"> 33 </TD> <TD> Ptgs2 </TD> </TR>
  <TR> <TD align="right"> 34 </TD> <TD> Ndn </TD> </TR>
  <TR> <TD align="right"> 35 </TD> <TD> Rnps1 </TD> </TR>
  <TR> <TD align="right"> 36 </TD> <TD> Arl5a </TD> </TR>
  <TR> <TD align="right"> 37 </TD> <TD> Decr2 </TD> </TR>
  <TR> <TD align="right"> 38 </TD> <TD> Egr1 </TD> </TR>
  <TR> <TD align="right"> 39 </TD> <TD> Akap12 </TD> </TR>
  <TR> <TD align="right"> 40 </TD> <TD> Pcsk1n </TD> </TR>
  <TR> <TD align="right"> 41 </TD> <TD> Cercam </TD> </TR>
  <TR> <TD align="right"> 42 </TD> <TD> Trub2 </TD> </TR>
  <TR> <TD align="right"> 43 </TD> <TD> Fmo2 </TD> </TR>
  <TR> <TD align="right"> 44 </TD> <TD> Zfp236 </TD> </TR>
  <TR> <TD align="right"> 45 </TD> <TD> Cldn5 </TD> </TR>
  <TR> <TD align="right"> 46 </TD> <TD> Kif21b </TD> </TR>
  <TR> <TD align="right"> 47 </TD> <TD> Pm20d1 </TD> </TR>
  <TR> <TD align="right"> 48 </TD> <TD> Olfml2a </TD> </TR>
  <TR> <TD align="right"> 49 </TD> <TD> Tagap1 </TD> </TR>
  <TR> <TD align="right"> 50 </TD> <TD> Per2 </TD> </TR>
  <TR> <TD align="right"> 51 </TD> <TD> Kcnq3 </TD> </TR>
  <TR> <TD align="right"> 52 </TD> <TD> Kdm5d </TD> </TR>
  <TR> <TD align="right"> 53 </TD> <TD> Tpm3-rs7 </TD> </TR>
  <TR> <TD align="right"> 54 </TD> <TD> Capn11 </TD> </TR>
  <TR> <TD align="right"> 55 </TD> <TD> Gm5506 </TD> </TR>
  <TR> <TD align="right"> 56 </TD> <TD> Ddx3y </TD> </TR>
  <TR> <TD align="right"> 57 </TD> <TD> Gm7292 </TD> </TR>
  <TR> <TD align="right"> 58 </TD> <TD> Wdfy1 </TD> </TR>
  <TR> <TD align="right"> 59 </TD> <TD> Apold1 </TD> </TR>
  <TR> <TD align="right"> 60 </TD> <TD> Hspa1b </TD> </TR>
  <TR> <TD align="right"> 61 </TD> <TD> Ptprv </TD> </TR>
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

Enrichment and zscores are calculated based on expression in KO vs WT (fpkmKO/fpkmWT), so genes that are down regulated in KO are shown in blue, while upregulation is shown in red. 

KO/WT
Blue = down in KO
Red = Up in KO






Biocarta enrichment: 


```
## [1] "Not enough significant categories to print a heatmap!"
```

Biocarta zscore: 


```
## [1] "Not enough significant categories to print a heatmap!"
```


Reactome enrichment: 

![plot of chunk print_GSEA_reactome](figure/print_GSEA_reactome.png) 


Reactome zscore: 

![plot of chunk gsea_zscore_reactome](figure/gsea_zscore_reactome.png) 


Kegg enrichment: 


```
## Error: argument is of length zero
```

Kegg zscore: 


```
## Error: incorrect number of dimensions
```

```
## Error: `x' must have at least 2 rows and 2 columns
```





## GO enrichment 
Cluster profiler used to call enichments of significantly differentially regulated genes that map to Entrez IDs. 





![plot of chunk GO_figures](figure/GO_figures1.png) ![plot of chunk GO_figures](figure/GO_figures2.png) ![plot of chunk GO_figures](figure/GO_figures3.png) ![plot of chunk GO_figures](figure/GO_figures4.png) 

```
## Error: 'x' and 'units' must have length > 0
```

# Cis vs Trans (locally)

log2 Foldchange and test statistic are calculated with the ratio of fpkm(KO)/fpkm(WT), thus the test_stat is positive if a gene is higher in the KO and negative if a gene has lower expression in the KO




The pvalue for 1 genes significantly regulated in a region this size  is: 1 















