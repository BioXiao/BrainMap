

Haunt KO vs WT (Adult)
======================================









This file shows the wt-v-ko comparison for Haunt. 

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

Endogenous expression of Haunt isoforms:

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
## Error: dims [product 3] do not match the length of object [4]
```

![plot of chunk track_vis](figure/track_vis.png) 

# Differential Analysis

## Differential Genes 



There are 37 significantly differentially expressed genes. They are:

<!-- html table generated in R 3.0.2 by xtable 1.7-3 package -->
<!-- Wed Jul  2 01:07:47 2014 -->
<TABLE border=1>
<TR> <TH>  </TH> <TH> geneAnnot$gene_short_name </TH>  </TR>
  <TR> <TD align="right"> 1 </TD> <TD> Hspa8 </TD> </TR>
  <TR> <TD align="right"> 2 </TD> <TD> Ubb </TD> </TR>
  <TR> <TD align="right"> 3 </TD> <TD> Dusp6 </TD> </TR>
  <TR> <TD align="right"> 4 </TD> <TD> Pttg1 </TD> </TR>
  <TR> <TD align="right"> 5 </TD> <TD> Adi1 </TD> </TR>
  <TR> <TD align="right"> 6 </TD> <TD> Serpina3n </TD> </TR>
  <TR> <TD align="right"> 7 </TD> <TD> Fos </TD> </TR>
  <TR> <TD align="right"> 8 </TD> <TD> Arc </TD> </TR>
  <TR> <TD align="right"> 9 </TD> <TD> Nr4a1 </TD> </TR>
  <TR> <TD align="right"> 10 </TD> <TD> Glo1 </TD> </TR>
  <TR> <TD align="right"> 11 </TD> <TD> Xdh </TD> </TR>
  <TR> <TD align="right"> 12 </TD> <TD> Nr4a3 </TD> </TR>
  <TR> <TD align="right"> 13 </TD> <TD> Hddc3 </TD> </TR>
  <TR> <TD align="right"> 14 </TD> <TD> Cryab </TD> </TR>
  <TR> <TD align="right"> 15 </TD> <TD> Arhgap27 </TD> </TR>
  <TR> <TD align="right"> 16 </TD> <TD> Fam214a </TD> </TR>
  <TR> <TD align="right"> 17 </TD> <TD> Filip1 </TD> </TR>
  <TR> <TD align="right"> 18 </TD> <TD> Klf10 </TD> </TR>
  <TR> <TD align="right"> 19 </TD> <TD> Egr2 </TD> </TR>
  <TR> <TD align="right"> 20 </TD> <TD> Txnip </TD> </TR>
  <TR> <TD align="right"> 21 </TD> <TD> Egr1 </TD> </TR>
  <TR> <TD align="right"> 22 </TD> <TD> Akap12 </TD> </TR>
  <TR> <TD align="right"> 23 </TD> <TD> Atp5l </TD> </TR>
  <TR> <TD align="right"> 24 </TD> <TD> Maff </TD> </TR>
  <TR> <TD align="right"> 25 </TD> <TD> Gm9493 </TD> </TR>
  <TR> <TD align="right"> 26 </TD> <TD> Acp1 </TD> </TR>
  <TR> <TD align="right"> 27 </TD> <TD> Npas4 </TD> </TR>
  <TR> <TD align="right"> 28 </TD> <TD> Hbb-bs </TD> </TR>
  <TR> <TD align="right"> 29 </TD> <TD> Junb </TD> </TR>
  <TR> <TD align="right"> 30 </TD> <TD> Kdm5d </TD> </TR>
  <TR> <TD align="right"> 31 </TD> <TD> Tpm3-rs7 </TD> </TR>
  <TR> <TD align="right"> 32 </TD> <TD> Rpl34 </TD> </TR>
  <TR> <TD align="right"> 33 </TD> <TD> Ddx3y </TD> </TR>
  <TR> <TD align="right"> 34 </TD> <TD> Egr4 </TD> </TR>
  <TR> <TD align="right"> 35 </TD> <TD> Gm7292 </TD> </TR>
  <TR> <TD align="right"> 36 </TD> <TD> AA465934 </TD> </TR>
  <TR> <TD align="right"> 37 </TD> <TD> Gm26825 </TD> </TR>
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

[1] "no sig isoforms"

Gene-level DE isoform heatmap


```
## [1] "no sig isoforms"
```

Isoform foldchange heatmap by isoform:


```
## [1] "no sig isoforms"
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

Enrichment and zscores are calculated based on expression in KO vs WT (fpkmKO/fpkmWT), so genes that are down regulated in KO are shown in blue, while upregulation is shown in red. 

KO/WT
Blue = down in KO
Red = Up in KO






Biocarta enrichment: 


```
## Error: `x' must have at least 2 rows and 2 columns
```

Biocarta zscore: 


```
## Error: incorrect number of dimensions
```

```
## Error: `x' must have at least 2 rows and 2 columns
```


Reactome enrichment: 

![plot of chunk print_GSEA_reactome](figure/print_GSEA_reactome.png) 


Reactome zscore: 

![plot of chunk gsea_zscore_reactome](figure/gsea_zscore_reactome.png) 


Kegg enrichment: 

![plot of chunk gsea_enrichment_kegg](figure/gsea_enrichment_kegg.png) 

Kegg zscore: 

![plot of chunk gsea_zscore_kegg](figure/gsea_zscore_kegg.png) 





## GO enrichment 
Cluster profiler used to call enichments of significantly differentially regulated genes that map to Entrez IDs. 





![plot of chunk GO_figures](figure/GO_figures1.png) ![plot of chunk GO_figures](figure/GO_figures2.png) ![plot of chunk GO_figures](figure/GO_figures3.png) 

```
## Error: need finite 'xlim' values
```

![plot of chunk GO_figures](figure/GO_figures4.png) 

```
## Error: need finite 'xlim' values
```

# Cis vs Trans (locally)

log2 Foldchange and test statistic are calculated with the ratio of fpkm(KO)/fpkm(WT), thus the test_stat is positive if a gene is higher in the KO and negative if a gene has lower expression in the KO




The pvalue for 0 genes significantly regulated in a region this size  is: 1 















