

linc-Brn1a KO vs WT (Adult)
======================================









This file shows the wt-v-ko comparison for linc-Brn1a. 

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

Endogenous expression of linc-Brn1a isoforms:

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

![plot of chunk track_vis](figure/track_vis.png) 

# Differential Analysis

## Differential Genes 



There are 74 significantly differentially expressed genes. They are:

<!-- html table generated in R 3.0.2 by xtable 1.7-3 package -->
<!-- Thu Jul 24 16:18:25 2014 -->
<TABLE border=1>
<TR> <TH>  </TH> <TH> geneAnnot$gene_short_name </TH>  </TR>
  <TR> <TD align="right"> 1 </TD> <TD> Rec8 </TD> </TR>
  <TR> <TD align="right"> 2 </TD> <TD> Arrdc2 </TD> </TR>
  <TR> <TD align="right"> 3 </TD> <TD> Fosb </TD> </TR>
  <TR> <TD align="right"> 4 </TD> <TD> Dio2 </TD> </TR>
  <TR> <TD align="right"> 5 </TD> <TD> Mertk </TD> </TR>
  <TR> <TD align="right"> 6 </TD> <TD> Hspa8 </TD> </TR>
  <TR> <TD align="right"> 7 </TD> <TD> Vip </TD> </TR>
  <TR> <TD align="right"> 8 </TD> <TD> Fabp7 </TD> </TR>
  <TR> <TD align="right"> 9 </TD> <TD> Sgk1 </TD> </TR>
  <TR> <TD align="right"> 10 </TD> <TD> Mybpc1 </TD> </TR>
  <TR> <TD align="right"> 11 </TD> <TD> Btg2 </TD> </TR>
  <TR> <TD align="right"> 12 </TD> <TD> Xbp1 </TD> </TR>
  <TR> <TD align="right"> 13 </TD> <TD> Fos </TD> </TR>
  <TR> <TD align="right"> 14 </TD> <TD> Rgcc </TD> </TR>
  <TR> <TD align="right"> 15 </TD> <TD> Dnajc3 </TD> </TR>
  <TR> <TD align="right"> 16 </TD> <TD> Arc </TD> </TR>
  <TR> <TD align="right"> 17 </TD> <TD> Sdf2l1 </TD> </TR>
  <TR> <TD align="right"> 18 </TD> <TD> Nr4a1 </TD> </TR>
  <TR> <TD align="right"> 19 </TD> <TD> Cdkn1a </TD> </TR>
  <TR> <TD align="right"> 20 </TD> <TD> Sik1 </TD> </TR>
  <TR> <TD align="right"> 21 </TD> <TD> Xdh </TD> </TR>
  <TR> <TD align="right"> 22 </TD> <TD> Dusp1 </TD> </TR>
  <TR> <TD align="right"> 23 </TD> <TD> Fkbp5 </TD> </TR>
  <TR> <TD align="right"> 24 </TD> <TD> Il33 </TD> </TR>
  <TR> <TD align="right"> 25 </TD> <TD> Pdia4 </TD> </TR>
  <TR> <TD align="right"> 26 </TD> <TD> Paqr8 </TD> </TR>
  <TR> <TD align="right"> 27 </TD> <TD> Mcm6 </TD> </TR>
  <TR> <TD align="right"> 28 </TD> <TD> Tfcp2l1 </TD> </TR>
  <TR> <TD align="right"> 29 </TD> <TD> Hspa5 </TD> </TR>
  <TR> <TD align="right"> 30 </TD> <TD> Cyr61 </TD> </TR>
  <TR> <TD align="right"> 31 </TD> <TD> Nr4a3 </TD> </TR>
  <TR> <TD align="right"> 32 </TD> <TD> Alad </TD> </TR>
  <TR> <TD align="right"> 33 </TD> <TD> Slc2a1 </TD> </TR>
  <TR> <TD align="right"> 34 </TD> <TD> Mfsd2a </TD> </TR>
  <TR> <TD align="right"> 35 </TD> <TD> Adipor2 </TD> </TR>
  <TR> <TD align="right"> 36 </TD> <TD> Abcc9 </TD> </TR>
  <TR> <TD align="right"> 37 </TD> <TD> Pglyrp1 </TD> </TR>
  <TR> <TD align="right"> 38 </TD> <TD> Hddc3 </TD> </TR>
  <TR> <TD align="right"> 39 </TD> <TD> Tsc22d3 </TD> </TR>
  <TR> <TD align="right"> 40 </TD> <TD> Cryab </TD> </TR>
  <TR> <TD align="right"> 41 </TD> <TD> Ldlr </TD> </TR>
  <TR> <TD align="right"> 42 </TD> <TD> Ndn </TD> </TR>
  <TR> <TD align="right"> 43 </TD> <TD> Igsf9b </TD> </TR>
  <TR> <TD align="right"> 44 </TD> <TD> Cbl </TD> </TR>
  <TR> <TD align="right"> 45 </TD> <TD> Nostrin </TD> </TR>
  <TR> <TD align="right"> 46 </TD> <TD> Lars2 </TD> </TR>
  <TR> <TD align="right"> 47 </TD> <TD> Anln </TD> </TR>
  <TR> <TD align="right"> 48 </TD> <TD> Tob1 </TD> </TR>
  <TR> <TD align="right"> 49 </TD> <TD> Egr2 </TD> </TR>
  <TR> <TD align="right"> 50 </TD> <TD> Smim3 </TD> </TR>
  <TR> <TD align="right"> 51 </TD> <TD> Egr1 </TD> </TR>
  <TR> <TD align="right"> 52 </TD> <TD> Hdhd3 </TD> </TR>
  <TR> <TD align="right"> 53 </TD> <TD> Daam2 </TD> </TR>
  <TR> <TD align="right"> 54 </TD> <TD> Tlr7 </TD> </TR>
  <TR> <TD align="right"> 55 </TD> <TD> Npas4 </TD> </TR>
  <TR> <TD align="right"> 56 </TD> <TD> Nrros </TD> </TR>
  <TR> <TD align="right"> 57 </TD> <TD> Ccdc171 </TD> </TR>
  <TR> <TD align="right"> 58 </TD> <TD> Jun </TD> </TR>
  <TR> <TD align="right"> 59 </TD> <TD> Junb </TD> </TR>
  <TR> <TD align="right"> 60 </TD> <TD> Ier2 </TD> </TR>
  <TR> <TD align="right"> 61 </TD> <TD> Per2 </TD> </TR>
  <TR> <TD align="right"> 62 </TD> <TD> Kdm5d </TD> </TR>
  <TR> <TD align="right"> 63 </TD> <TD> linc-Brn1a </TD> </TR>
  <TR> <TD align="right"> 64 </TD> <TD> Usp31 </TD> </TR>
  <TR> <TD align="right"> 65 </TD> <TD> Zbtb16 </TD> </TR>
  <TR> <TD align="right"> 66 </TD> <TD> Ddx3y </TD> </TR>
  <TR> <TD align="right"> 67 </TD> <TD> Klhl9 </TD> </TR>
  <TR> <TD align="right"> 68 </TD> <TD> Egr4 </TD> </TR>
  <TR> <TD align="right"> 69 </TD> <TD> Gm7292 </TD> </TR>
  <TR> <TD align="right"> 70 </TD> <TD> Xist </TD> </TR>
  <TR> <TD align="right"> 71 </TD> <TD> Cdr1 </TD> </TR>
  <TR> <TD align="right"> 72 </TD> <TD> AA465934 </TD> </TR>
  <TR> <TD align="right"> 73 </TD> <TD> Gm6472 </TD> </TR>
  <TR> <TD align="right"> 74 </TD> <TD> Gm26924 </TD> </TR>
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
<!-- Thu Jul 24 16:20:36 2014 -->
<TABLE border=1>
<TR> <TH>  </TH> <TH> isoAnnot$gene_short_name </TH>  </TR>
  <TR> <TD align="right"> 1 </TD> <TD> Rec8 </TD> </TR>
  <TR> <TD align="right"> 2 </TD> <TD> Arrdc2 </TD> </TR>
  <TR> <TD align="right"> 3 </TD> <TD> Fosb </TD> </TR>
  <TR> <TD align="right"> 4 </TD> <TD> Hif3a </TD> </TR>
  <TR> <TD align="right"> 5 </TD> <TD> Dio2 </TD> </TR>
  <TR> <TD align="right"> 6 </TD> <TD> Mertk </TD> </TR>
  <TR> <TD align="right"> 7 </TD> <TD> Hspa8 </TD> </TR>
  <TR> <TD align="right"> 8 </TD> <TD> Vip </TD> </TR>
  <TR> <TD align="right"> 9 </TD> <TD> Fabp7 </TD> </TR>
  <TR> <TD align="right"> 10 </TD> <TD> Cpm </TD> </TR>
  <TR> <TD align="right"> 11 </TD> <TD> Tns3 </TD> </TR>
  <TR> <TD align="right"> 12 </TD> <TD> Btg2 </TD> </TR>
  <TR> <TD align="right"> 13 </TD> <TD> Xbp1 </TD> </TR>
  <TR> <TD align="right"> 14 </TD> <TD> Atp2a3 </TD> </TR>
  <TR> <TD align="right"> 15 </TD> <TD> Fos </TD> </TR>
  <TR> <TD align="right"> 16 </TD> <TD> Arc </TD> </TR>
  <TR> <TD align="right"> 17 </TD> <TD> Zbtb20 </TD> </TR>
  <TR> <TD align="right"> 18 </TD> <TD> Sdf2l1 </TD> </TR>
  <TR> <TD align="right"> 19 </TD> <TD> Nr4a1 </TD> </TR>
  <TR> <TD align="right"> 20 </TD> <TD> Cdkn1a </TD> </TR>
  <TR> <TD align="right"> 21 </TD> <TD> Sik1 </TD> </TR>
  <TR> <TD align="right"> 22 </TD> <TD> Xdh </TD> </TR>
  <TR> <TD align="right"> 23 </TD> <TD> Atp6v0c </TD> </TR>
  <TR> <TD align="right"> 24 </TD> <TD> Dusp1 </TD> </TR>
  <TR> <TD align="right"> 25 </TD> <TD> Fkbp5 </TD> </TR>
  <TR> <TD align="right"> 26 </TD> <TD> Il33 </TD> </TR>
  <TR> <TD align="right"> 27 </TD> <TD> Pdia4 </TD> </TR>
  <TR> <TD align="right"> 28 </TD> <TD> Paqr8 </TD> </TR>
  <TR> <TD align="right"> 29 </TD> <TD> Tfcp2l1 </TD> </TR>
  <TR> <TD align="right"> 30 </TD> <TD> Hspa5 </TD> </TR>
  <TR> <TD align="right"> 31 </TD> <TD> Cyr61 </TD> </TR>
  <TR> <TD align="right"> 32 </TD> <TD> Alad </TD> </TR>
  <TR> <TD align="right"> 33 </TD> <TD> Slc2a1 </TD> </TR>
  <TR> <TD align="right"> 34 </TD> <TD> Mfsd2a </TD> </TR>
  <TR> <TD align="right"> 35 </TD> <TD> Ago3 </TD> </TR>
  <TR> <TD align="right"> 36 </TD> <TD> Map3k6 </TD> </TR>
  <TR> <TD align="right"> 37 </TD> <TD> Ccnl2 </TD> </TR>
  <TR> <TD align="right"> 38 </TD> <TD> Adipor2 </TD> </TR>
  <TR> <TD align="right"> 39 </TD> <TD> Pglyrp1 </TD> </TR>
  <TR> <TD align="right"> 40 </TD> <TD> Hddc3 </TD> </TR>
  <TR> <TD align="right"> 41 </TD> <TD> Tsc22d3 </TD> </TR>
  <TR> <TD align="right"> 42 </TD> <TD> Cryab </TD> </TR>
  <TR> <TD align="right"> 43 </TD> <TD> Kdm4a </TD> </TR>
  <TR> <TD align="right"> 44 </TD> <TD> Ndn </TD> </TR>
  <TR> <TD align="right"> 45 </TD> <TD> Vps8 </TD> </TR>
  <TR> <TD align="right"> 46 </TD> <TD> Igsf9b </TD> </TR>
  <TR> <TD align="right"> 47 </TD> <TD> Cbl </TD> </TR>
  <TR> <TD align="right"> 48 </TD> <TD> Anln </TD> </TR>
  <TR> <TD align="right"> 49 </TD> <TD> Kirrel2 </TD> </TR>
  <TR> <TD align="right"> 50 </TD> <TD> Egr2 </TD> </TR>
  <TR> <TD align="right"> 51 </TD> <TD> Smim3 </TD> </TR>
  <TR> <TD align="right"> 52 </TD> <TD> Egr1 </TD> </TR>
  <TR> <TD align="right"> 53 </TD> <TD> Hdhd3 </TD> </TR>
  <TR> <TD align="right"> 54 </TD> <TD> Eltd1 </TD> </TR>
  <TR> <TD align="right"> 55 </TD> <TD> Daam2 </TD> </TR>
  <TR> <TD align="right"> 56 </TD> <TD> Dmtf1 </TD> </TR>
  <TR> <TD align="right"> 57 </TD> <TD> Npas4 </TD> </TR>
  <TR> <TD align="right"> 58 </TD> <TD> Ezr </TD> </TR>
  <TR> <TD align="right"> 59 </TD> <TD> Jun </TD> </TR>
  <TR> <TD align="right"> 60 </TD> <TD> Junb </TD> </TR>
  <TR> <TD align="right"> 61 </TD> <TD> Ier2 </TD> </TR>
  <TR> <TD align="right"> 62 </TD> <TD> Per2 </TD> </TR>
  <TR> <TD align="right"> 63 </TD> <TD> Kdm5d </TD> </TR>
  <TR> <TD align="right"> 64 </TD> <TD> Usp31 </TD> </TR>
  <TR> <TD align="right"> 65 </TD> <TD> Sepp1 </TD> </TR>
  <TR> <TD align="right"> 66 </TD> <TD> Zbtb16 </TD> </TR>
  <TR> <TD align="right"> 67 </TD> <TD> Ddx3y </TD> </TR>
  <TR> <TD align="right"> 68 </TD> <TD> Ahnak </TD> </TR>
  <TR> <TD align="right"> 69 </TD> <TD> Klhl9 </TD> </TR>
  <TR> <TD align="right"> 70 </TD> <TD> Egr4 </TD> </TR>
  <TR> <TD align="right"> 71 </TD> <TD> Gm7292 </TD> </TR>
  <TR> <TD align="right"> 72 </TD> <TD> Xist </TD> </TR>
  <TR> <TD align="right"> 73 </TD> <TD> Cdr1 </TD> </TR>
  <TR> <TD align="right"> 74 </TD> <TD> Malat1 </TD> </TR>
  <TR> <TD align="right"> 75 </TD> <TD> Gm6472 </TD> </TR>
  <TR> <TD align="right"> 76 </TD> <TD> Gm26924 </TD> </TR>
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

![plot of chunk print_GSEA_biocarta](figure/print_GSEA_biocarta.png) 

Biocarta zscore: 

![plot of chunk gsea_zscore_biocarta](figure/gsea_zscore_biocarta.png) 


Reactome enrichment: 


```
## Error: subscript out of bounds
```

![plot of chunk print_GSEA_reactome](figure/print_GSEA_reactome.png) 


Reactome zscore: 


```
## Error: subscript out of bounds
```

![plot of chunk gsea_zscore_reactome](figure/gsea_zscore_reactome.png) 


Kegg enrichment: 

![plot of chunk gsea_enrichment_kegg](figure/gsea_enrichment_kegg.png) 

Kegg zscore: 

![plot of chunk gsea_zscore_kegg](figure/gsea_zscore_kegg.png) 

Interneuron enrichment:


```
## Error: no locations are finite
```

![plot of chunk gsea_enrichment_interneuron](figure/gsea_enrichment_interneuron.png) 

Interneuron zscore:

![plot of chunk gsea_zscore_interneuron](figure/gsea_zscore_interneuron.png) 


Oncogene enrichment: 

![plot of chunk gsea_enrich_onco](figure/gsea_enrich_onco.png) 

Oncogene zscore:

![plot of chunk gsea_zscore_onco](figure/gsea_zscore_onco.png) 

Immuno enrichment:

![plot of chunk gsea_enrich_immuno](figure/gsea_enrich_immuno.png) 

Immuno zscore:

![plot of chunk gsea_zscore_immuno](figure/gsea_zscore_immuno.png) 

TF enrichment:

![plot of chunk gsea_enrich_tf](figure/gsea_enrich_tf.png) 

TF zscore:

![plot of chunk gsea_zscore_tf](figure/gsea_zscore_tf.png) 


## GO enrichment 
Cluster profiler used to call enichments of significantly differentially regulated genes that map to Entrez IDs. 




```
## [1] "ERROR: The estimated pi0 <= 0. Check that you have valid p-values or use another lambda method."
```

![plot of chunk GO_figures](figure/GO_figures1.png) ![plot of chunk GO_figures](figure/GO_figures2.png) ![plot of chunk GO_figures](figure/GO_figures3.png) ![plot of chunk GO_figures](figure/GO_figures4.png) 

```
## Error: 'x' and 'units' must have length > 0
```





### Enrichment or depletion for stage-specific cell cycle markers 

![plot of chunk cellcycle](figure/cellcycle.png) 


### Enrichment or depletion for markers of specific cortical layers

![plot of chunk cortical layers](figure/cortical layers.png) 


### Enrichment or depletion for specific neural cell types 
![plot of chunk neural cell types](figure/neural cell types.png) 



### Enrichment or Depletion of neural differentiation markers 

![plot of chunk neural diff markers](figure/neural diff markers.png) 


# Cis vs Trans (locally)

log2 Foldchange and test statistic are calculated with the ratio of fpkm(KO)/fpkm(WT), thus the test_stat is positive if a gene is higher in the KO and negative if a gene has lower expression in the KO






The pvalue for 0 genes significantly regulated in a region this size  is: 1 


![plot of chunk cisreg_image](figure/cisreg_image.png) 

# Notes

## Samples used are:
<!-- html table generated in R 3.0.2 by xtable 1.7-3 package -->
<!-- Thu Jul 24 17:42:37 2014 -->
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
  <TR> <TD align="right"> 13 </TD> <TD> JR785 </TD> </TR>
  <TR> <TD align="right"> 14 </TD> <TD> JR781 </TD> </TR>
  <TR> <TD align="right"> 15 </TD> <TD> JR730 </TD> </TR>
  <TR> <TD align="right"> 16 </TD> <TD> JR837 </TD> </TR>
   </TABLE>

## Replicates
<!-- html table generated in R 3.0.2 by xtable 1.7-3 package -->
<!-- Thu Jul 24 17:42:38 2014 -->
<TABLE border=1>
<TR> <TH>  </TH> <TH> file </TH> <TH> sample_name </TH> <TH> replicate </TH> <TH> rep_name </TH> <TH> total_mass </TH> <TH> norm_mass </TH> <TH> internal_scale </TH> <TH> external_scale </TH>  </TR>
  <TR> <TD align="right"> 1 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR729/abundances.cxb </TD> <TD> WT </TD> <TD align="right">   0 </TD> <TD> WT_0 </TD> <TD align="right"> 26334400.00 </TD> <TD align="right"> 33756400.00 </TD> <TD align="right"> 0.78 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 2 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR728/abundances.cxb </TD> <TD> WT </TD> <TD align="right">   1 </TD> <TD> WT_1 </TD> <TD align="right"> 20329200.00 </TD> <TD align="right"> 33756400.00 </TD> <TD align="right"> 0.60 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 3 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR796/abundances.cxb </TD> <TD> WT </TD> <TD align="right">   2 </TD> <TD> WT_2 </TD> <TD align="right"> 34089000.00 </TD> <TD align="right"> 33756400.00 </TD> <TD align="right"> 1.00 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 4 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR797/abundances.cxb </TD> <TD> WT </TD> <TD align="right">   3 </TD> <TD> WT_3 </TD> <TD align="right"> 28103300.00 </TD> <TD align="right"> 33756400.00 </TD> <TD align="right"> 0.82 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 5 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR740/abundances.cxb </TD> <TD> WT </TD> <TD align="right">   4 </TD> <TD> WT_4 </TD> <TD align="right"> 35808200.00 </TD> <TD align="right"> 33756400.00 </TD> <TD align="right"> 1.06 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 6 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR800/abundances.cxb </TD> <TD> WT </TD> <TD align="right">   5 </TD> <TD> WT_5 </TD> <TD align="right"> 37012200.00 </TD> <TD align="right"> 33756400.00 </TD> <TD align="right"> 1.10 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 7 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR827/abundances.cxb </TD> <TD> WT </TD> <TD align="right">   6 </TD> <TD> WT_6 </TD> <TD align="right"> 27786600.00 </TD> <TD align="right"> 33756400.00 </TD> <TD align="right"> 0.83 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 8 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR778/abundances.cxb </TD> <TD> WT </TD> <TD align="right">   7 </TD> <TD> WT_7 </TD> <TD align="right"> 39541900.00 </TD> <TD align="right"> 33756400.00 </TD> <TD align="right"> 1.18 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 9 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR734/abundances.cxb </TD> <TD> WT </TD> <TD align="right">   8 </TD> <TD> WT_8 </TD> <TD align="right"> 34480600.00 </TD> <TD align="right"> 33756400.00 </TD> <TD align="right"> 1.04 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 10 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR802/abundances.cxb </TD> <TD> WT </TD> <TD align="right">   9 </TD> <TD> WT_9 </TD> <TD align="right"> 45467400.00 </TD> <TD align="right"> 33756400.00 </TD> <TD align="right"> 1.33 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 11 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR803/abundances.cxb </TD> <TD> WT </TD> <TD align="right">  10 </TD> <TD> WT_10 </TD> <TD align="right"> 52130400.00 </TD> <TD align="right"> 33756400.00 </TD> <TD align="right"> 1.54 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 12 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR735/abundances.cxb </TD> <TD> WT </TD> <TD align="right">  11 </TD> <TD> WT_11 </TD> <TD align="right"> 34994400.00 </TD> <TD align="right"> 33756400.00 </TD> <TD align="right"> 1.04 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 13 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR785/abundances.cxb </TD> <TD> WT </TD> <TD align="right">  12 </TD> <TD> WT_12 </TD> <TD align="right"> 34173600.00 </TD> <TD align="right"> 33756400.00 </TD> <TD align="right"> 1.00 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 14 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR781/abundances.cxb </TD> <TD> WT </TD> <TD align="right">  13 </TD> <TD> WT_13 </TD> <TD align="right"> 41538900.00 </TD> <TD align="right"> 33756400.00 </TD> <TD align="right"> 1.24 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 15 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR730/abundances.cxb </TD> <TD> linc_Brn1a </TD> <TD align="right">   0 </TD> <TD> linc_Brn1a_0 </TD> <TD align="right"> 24947000.00 </TD> <TD align="right"> 33756400.00 </TD> <TD align="right"> 0.74 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 16 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR837/abundances.cxb </TD> <TD> linc_Brn1a </TD> <TD align="right">   1 </TD> <TD> linc_Brn1a_1 </TD> <TD align="right"> 38529800.00 </TD> <TD align="right"> 33756400.00 </TD> <TD align="right"> 1.16 </TD> <TD align="right"> 1.00 </TD> </TR>
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
## [1] grid      parallel  methods   stats     graphics  grDevices utils    
## [8] datasets  base     
## 
## other attached packages:
##  [1] plyr_1.8.1                         
##  [2] stringr_0.6.2                      
##  [3] seqbias_1.10.0                     
##  [4] BSgenome.Mmusculus.UCSC.mm10_1.3.19
##  [5] BSgenome_1.30.0                    
##  [6] Biostrings_2.30.1                  
##  [7] gdata_2.13.3                       
##  [8] GO.db_2.10.1                       
##  [9] org.Mm.eg.db_2.10.1                
## [10] clusterProfiler_1.13.1             
## [11] DOSE_2.0.0                         
## [12] ReactomePA_1.6.1                   
## [13] AnnotationDbi_1.24.0               
## [14] Biobase_2.22.0                     
## [15] mgcv_1.7-29                        
## [16] nlme_3.1-117                       
## [17] RMySQL_0.9-3                       
## [18] RColorBrewer_1.0-5                 
## [19] gridExtra_0.9.1                    
## [20] gtable_0.1.2                       
## [21] marray_1.40.0                      
## [22] gplots_2.13.0                      
## [23] GSA_1.03                           
## [24] limma_3.18.13                      
## [25] xtable_1.7-3                       
## [26] cummeRbund_2.7.2                   
## [27] Gviz_1.6.0                         
## [28] rtracklayer_1.22.7                 
## [29] GenomicRanges_1.14.4               
## [30] XVector_0.2.0                      
## [31] IRanges_1.20.7                     
## [32] fastcluster_1.1.13                 
## [33] reshape2_1.4                       
## [34] ggplot2_1.0.0                      
## [35] RSQLite_0.11.4                     
## [36] DBI_0.2-7                          
## [37] BiocGenerics_0.8.0                 
## [38] knitr_1.6                          
## 
## loaded via a namespace (and not attached):
##  [1] biomaRt_2.18.0         biovizBase_1.10.8      bitops_1.0-6          
##  [4] caTools_1.17           cluster_1.15.2         colorspace_1.2-4      
##  [7] dichromat_2.0-0        digest_0.6.4           DO.db_2.7             
## [10] evaluate_0.5.5         formatR_0.10           Formula_1.1-1         
## [13] GenomicFeatures_1.14.5 GOSemSim_1.20.3        graph_1.40.1          
## [16] graphite_1.8.1         gtools_3.4.1           Hmisc_3.14-4          
## [19] igraph_0.7.1           KEGG.db_2.10.1         KernSmooth_2.23-12    
## [22] labeling_0.2           lattice_0.20-29        latticeExtra_0.6-26   
## [25] MASS_7.3-33            Matrix_1.1-3           munsell_0.4.2         
## [28] org.Hs.eg.db_2.10.1    proto_0.3-10           qvalue_1.36.0         
## [31] Rcpp_0.11.2            RCurl_1.95-4.1         reactome.db_1.46.1    
## [34] Rsamtools_1.14.3       scales_0.2.4           splines_3.0.2         
## [37] stats4_3.0.2           survival_2.37-7        tcltk_3.0.2           
## [40] tools_3.0.2            XML_3.98-1.1           zlibbioc_1.8.0
```

## Run Info

```
##           param
## 1      cmd_line
## 2       version
## 3  SVN_revision
## 4 boost_version
## 5        genome
##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  value
## 1 cuffdiff -p 10 -L WT,linc-Brn1a -o /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/diffs/linc-Brn1a_vs_WT_Adult /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/annotation/mm10_gencode_vM2_with_lncRNAs_and_LacZ.gtf /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR729/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR728/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR796/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR797/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR740/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR800/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR827/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR778/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR734/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR802/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR803/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR735/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR785/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR781/abundances.cxb /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR730/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR837/abundances.cxb 
## 2                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                2.2.1
## 3                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 4237
## 4                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               104700
## 5                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 mm10
```




