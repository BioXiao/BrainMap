

Crnde KO vs WT (Embryonic)
======================================





THINGS TO REMEMBER: change oldbam to bam and olddiff to diff once new set done! 





This file shows the wt-v-ko comparison for Crnde. 

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

Endogenous expression of Crnde isoforms:

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
## Error: Invalid chromosome identifier 'velocigene_Zen_UB1_N3'
## Please consider setting options(ucscChromosomeNames=FALSE) to allow for arbitrary chromosome identifiers.
```

# Differential Analysis

## Differential Genes 



There are 83 significantly differentially expressed genes. They are:

<!-- html table generated in R 3.0.2 by xtable 1.7-3 package -->
<!-- Fri Jun 27 10:06:34 2014 -->
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
  <TR> <TD align="right"> 10 </TD> <TD> Hspa8 </TD> </TR>
  <TR> <TD align="right"> 11 </TD> <TD> Sulf1 </TD> </TR>
  <TR> <TD align="right"> 12 </TD> <TD> Dync1h1 </TD> </TR>
  <TR> <TD align="right"> 13 </TD> <TD> Lama4 </TD> </TR>
  <TR> <TD align="right"> 14 </TD> <TD> Lama2 </TD> </TR>
  <TR> <TD align="right"> 15 </TD> <TD> Col6a2 </TD> </TR>
  <TR> <TD align="right"> 16 </TD> <TD> Aebp1 </TD> </TR>
  <TR> <TD align="right"> 17 </TD> <TD> Prpf8 </TD> </TR>
  <TR> <TD align="right"> 18 </TD> <TD> Ntn1 </TD> </TR>
  <TR> <TD align="right"> 19 </TD> <TD> Iqgap2 </TD> </TR>
  <TR> <TD align="right"> 20 </TD> <TD> Nid2 </TD> </TR>
  <TR> <TD align="right"> 21 </TD> <TD> Myh9 </TD> </TR>
  <TR> <TD align="right"> 22 </TD> <TD> Prkdc </TD> </TR>
  <TR> <TD align="right"> 23 </TD> <TD> Igf2r </TD> </TR>
  <TR> <TD align="right"> 24 </TD> <TD> Lox </TD> </TR>
  <TR> <TD align="right"> 25 </TD> <TD> Megf10 </TD> </TR>
  <TR> <TD align="right"> 26 </TD> <TD> Fbn2 </TD> </TR>
  <TR> <TD align="right"> 27 </TD> <TD> Rps14 </TD> </TR>
  <TR> <TD align="right"> 28 </TD> <TD> Pdgfrb </TD> </TR>
  <TR> <TD align="right"> 29 </TD> <TD> Rps26 </TD> </TR>
  <TR> <TD align="right"> 30 </TD> <TD> Col5a2 </TD> </TR>
  <TR> <TD align="right"> 31 </TD> <TD> Col3a1 </TD> </TR>
  <TR> <TD align="right"> 32 </TD> <TD> Fn1 </TD> </TR>
  <TR> <TD align="right"> 33 </TD> <TD> Lamc1 </TD> </TR>
  <TR> <TD align="right"> 34 </TD> <TD> Col5a1 </TD> </TR>
  <TR> <TD align="right"> 35 </TD> <TD> Lamc3 </TD> </TR>
  <TR> <TD align="right"> 36 </TD> <TD> Notch1 </TD> </TR>
  <TR> <TD align="right"> 37 </TD> <TD> Lrp2 </TD> </TR>
  <TR> <TD align="right"> 38 </TD> <TD> Fbn1 </TD> </TR>
  <TR> <TD align="right"> 39 </TD> <TD> Lrp4 </TD> </TR>
  <TR> <TD align="right"> 40 </TD> <TD> Notch2 </TD> </TR>
  <TR> <TD align="right"> 41 </TD> <TD> Tnc </TD> </TR>
  <TR> <TD align="right"> 42 </TD> <TD> Svep1 </TD> </TR>
  <TR> <TD align="right"> 43 </TD> <TD> Sorcs2 </TD> </TR>
  <TR> <TD align="right"> 44 </TD> <TD> Col1a2 </TD> </TR>
  <TR> <TD align="right"> 45 </TD> <TD> Emp1 </TD> </TR>
  <TR> <TD align="right"> 46 </TD> <TD> Dera </TD> </TR>
  <TR> <TD align="right"> 47 </TD> <TD> Hddc3 </TD> </TR>
  <TR> <TD align="right"> 48 </TD> <TD> Col4a5 </TD> </TR>
  <TR> <TD align="right"> 49 </TD> <TD> Col4a1 </TD> </TR>
  <TR> <TD align="right"> 50 </TD> <TD> Crnde </TD> </TR>
  <TR> <TD align="right"> 51 </TD> <TD> Rpsa </TD> </TR>
  <TR> <TD align="right"> 52 </TD> <TD> Lama1 </TD> </TR>
  <TR> <TD align="right"> 53 </TD> <TD> Fras1 </TD> </TR>
  <TR> <TD align="right"> 54 </TD> <TD> Lum </TD> </TR>
  <TR> <TD align="right"> 55 </TD> <TD> Wnt8b </TD> </TR>
  <TR> <TD align="right"> 56 </TD> <TD> Frem2 </TD> </TR>
  <TR> <TD align="right"> 57 </TD> <TD> Notch3 </TD> </TR>
  <TR> <TD align="right"> 58 </TD> <TD> Spon1 </TD> </TR>
  <TR> <TD align="right"> 59 </TD> <TD> Neurod2 </TD> </TR>
  <TR> <TD align="right"> 60 </TD> <TD> Satb2 </TD> </TR>
  <TR> <TD align="right"> 61 </TD> <TD> Atp5l </TD> </TR>
  <TR> <TD align="right"> 62 </TD> <TD> Bend6 </TD> </TR>
  <TR> <TD align="right"> 63 </TD> <TD> Gm9493 </TD> </TR>
  <TR> <TD align="right"> 64 </TD> <TD> Acp1 </TD> </TR>
  <TR> <TD align="right"> 65 </TD> <TD> Mc4r </TD> </TR>
  <TR> <TD align="right"> 66 </TD> <TD> Gm9846 </TD> </TR>
  <TR> <TD align="right"> 67 </TD> <TD> Hbb-y </TD> </TR>
  <TR> <TD align="right"> 68 </TD> <TD> Hbb-bh1 </TD> </TR>
  <TR> <TD align="right"> 69 </TD> <TD> Lamb2 </TD> </TR>
  <TR> <TD align="right"> 70 </TD> <TD> Hba-x </TD> </TR>
  <TR> <TD align="right"> 71 </TD> <TD> Capn11 </TD> </TR>
  <TR> <TD align="right"> 72 </TD> <TD> Alox5ap </TD> </TR>
  <TR> <TD align="right"> 73 </TD> <TD> Dcc </TD> </TR>
  <TR> <TD align="right"> 74 </TD> <TD> Rps17 </TD> </TR>
  <TR> <TD align="right"> 75 </TD> <TD> Rpl17 </TD> </TR>
  <TR> <TD align="right"> 76 </TD> <TD> Rpl35 </TD> </TR>
  <TR> <TD align="right"> 77 </TD> <TD> Scoc </TD> </TR>
  <TR> <TD align="right"> 78 </TD> <TD> Rpl36-ps3 </TD> </TR>
  <TR> <TD align="right"> 79 </TD> <TD> 3110035E14Rik </TD> </TR>
  <TR> <TD align="right"> 80 </TD> <TD> Flnc </TD> </TR>
  <TR> <TD align="right"> 81 </TD> <TD> Fat1 </TD> </TR>
  <TR> <TD align="right"> 82 </TD> <TD> Gm26924 </TD> </TR>
  <TR> <TD align="right"> 83 </TD> <TD> Gm19980 </TD> </TR>
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
<!-- Fri Jun 27 10:06:57 2014 -->
<TABLE border=1>
<TR> <TH>  </TH> <TH> isoAnnot$gene_short_name </TH>  </TR>
  <TR> <TD align="right"> 1 </TD> <TD> Col6a1 </TD> </TR>
  <TR> <TD align="right"> 2 </TD> <TD> Col1a1 </TD> </TR>
  <TR> <TD align="right"> 3 </TD> <TD> Lamb1 </TD> </TR>
  <TR> <TD align="right"> 4 </TD> <TD> Nes </TD> </TR>
  <TR> <TD align="right"> 5 </TD> <TD> Rplp1 </TD> </TR>
  <TR> <TD align="right"> 6 </TD> <TD> Cad </TD> </TR>
  <TR> <TD align="right"> 7 </TD> <TD> Dync1h1 </TD> </TR>
  <TR> <TD align="right"> 8 </TD> <TD> Lama2 </TD> </TR>
  <TR> <TD align="right"> 9 </TD> <TD> Mrc2 </TD> </TR>
  <TR> <TD align="right"> 10 </TD> <TD> Iqgap2 </TD> </TR>
  <TR> <TD align="right"> 11 </TD> <TD> Nid2 </TD> </TR>
  <TR> <TD align="right"> 12 </TD> <TD> Myh9 </TD> </TR>
  <TR> <TD align="right"> 13 </TD> <TD> Col2a1 </TD> </TR>
  <TR> <TD align="right"> 14 </TD> <TD> Igf2r </TD> </TR>
  <TR> <TD align="right"> 15 </TD> <TD> Fbn2 </TD> </TR>
  <TR> <TD align="right"> 16 </TD> <TD> Rps14 </TD> </TR>
  <TR> <TD align="right"> 17 </TD> <TD> Pdgfrb </TD> </TR>
  <TR> <TD align="right"> 18 </TD> <TD> Rps26 </TD> </TR>
  <TR> <TD align="right"> 19 </TD> <TD> Col5a2 </TD> </TR>
  <TR> <TD align="right"> 20 </TD> <TD> Col3a1 </TD> </TR>
  <TR> <TD align="right"> 21 </TD> <TD> Fn1 </TD> </TR>
  <TR> <TD align="right"> 22 </TD> <TD> Lamc1 </TD> </TR>
  <TR> <TD align="right"> 23 </TD> <TD> Col5a1 </TD> </TR>
  <TR> <TD align="right"> 24 </TD> <TD> Lamc3 </TD> </TR>
  <TR> <TD align="right"> 25 </TD> <TD> Notch1 </TD> </TR>
  <TR> <TD align="right"> 26 </TD> <TD> Lrp2 </TD> </TR>
  <TR> <TD align="right"> 27 </TD> <TD> Fbn1 </TD> </TR>
  <TR> <TD align="right"> 28 </TD> <TD> Lrp4 </TD> </TR>
  <TR> <TD align="right"> 29 </TD> <TD> Notch2 </TD> </TR>
  <TR> <TD align="right"> 30 </TD> <TD> Tnc </TD> </TR>
  <TR> <TD align="right"> 31 </TD> <TD> Svep1 </TD> </TR>
  <TR> <TD align="right"> 32 </TD> <TD> Col1a2 </TD> </TR>
  <TR> <TD align="right"> 33 </TD> <TD> Emp1 </TD> </TR>
  <TR> <TD align="right"> 34 </TD> <TD> Hddc3 </TD> </TR>
  <TR> <TD align="right"> 35 </TD> <TD> Col4a1 </TD> </TR>
  <TR> <TD align="right"> 36 </TD> <TD> Rpsa </TD> </TR>
  <TR> <TD align="right"> 37 </TD> <TD> Lama1 </TD> </TR>
  <TR> <TD align="right"> 38 </TD> <TD> Fras1 </TD> </TR>
  <TR> <TD align="right"> 39 </TD> <TD> Lum </TD> </TR>
  <TR> <TD align="right"> 40 </TD> <TD> Wnt8b </TD> </TR>
  <TR> <TD align="right"> 41 </TD> <TD> Frem2 </TD> </TR>
  <TR> <TD align="right"> 42 </TD> <TD> Notch3 </TD> </TR>
  <TR> <TD align="right"> 43 </TD> <TD> Neurod2 </TD> </TR>
  <TR> <TD align="right"> 44 </TD> <TD> Lrp1 </TD> </TR>
  <TR> <TD align="right"> 45 </TD> <TD> Bend6 </TD> </TR>
  <TR> <TD align="right"> 46 </TD> <TD> Reln </TD> </TR>
  <TR> <TD align="right"> 47 </TD> <TD> Gm9493 </TD> </TR>
  <TR> <TD align="right"> 48 </TD> <TD> Hjurp </TD> </TR>
  <TR> <TD align="right"> 49 </TD> <TD> Mc4r </TD> </TR>
  <TR> <TD align="right"> 50 </TD> <TD> Col6a3 </TD> </TR>
  <TR> <TD align="right"> 51 </TD> <TD> Gm9846 </TD> </TR>
  <TR> <TD align="right"> 52 </TD> <TD> Hbb-y </TD> </TR>
  <TR> <TD align="right"> 53 </TD> <TD> Hbb-bh1 </TD> </TR>
  <TR> <TD align="right"> 54 </TD> <TD> Lamb2 </TD> </TR>
  <TR> <TD align="right"> 55 </TD> <TD> Fgfr3 </TD> </TR>
  <TR> <TD align="right"> 56 </TD> <TD> Capn11 </TD> </TR>
  <TR> <TD align="right"> 57 </TD> <TD> Rpl17 </TD> </TR>
  <TR> <TD align="right"> 58 </TD> <TD> Rpl36-ps3 </TD> </TR>
  <TR> <TD align="right"> 59 </TD> <TD> 3110035E14Rik </TD> </TR>
  <TR> <TD align="right"> 60 </TD> <TD> Gpr98 </TD> </TR>
  <TR> <TD align="right"> 61 </TD> <TD> Fat1 </TD> </TR>
  <TR> <TD align="right"> 62 </TD> <TD> Col22a1 </TD> </TR>
  <TR> <TD align="right"> 63 </TD> <TD> Gm26924 </TD> </TR>
  <TR> <TD align="right"> 64 </TD> <TD> Gm19980 </TD> </TR>
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

![plot of chunk gsea_enrichment_kegg](figure/gsea_enrichment_kegg.png) 

Kegg zscore: 

![plot of chunk gsea_zscore_kegg](figure/gsea_zscore_kegg.png) 





## GO enrichment 
Cluster profiler used to call enichments of significantly differentially regulated genes that map to Entrez IDs. 




```
## [1] "ERROR: The estimated pi0 <= 0. Check that you have valid p-values or use another lambda method."
```

![plot of chunk GO_figures](figure/GO_figures1.png) ![plot of chunk GO_figures](figure/GO_figures2.png) ![plot of chunk GO_figures](figure/GO_figures3.png) ![plot of chunk GO_figures](figure/GO_figures4.png) ![plot of chunk GO_figures](figure/GO_figures5.png) 

# Cis vs Trans (locally)



The pvalue for 1 genes significantly regulated in a region this size  is: 1 


![plot of chunk cisreg_image](figure/cisreg_image.png) 

# Notes

## Samples used are:
<!-- html table generated in R 3.0.2 by xtable 1.7-3 package -->
<!-- Fri Jun 27 10:29:09 2014 -->
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
  <TR> <TD align="right"> 15 </TD> <TD> JR793 </TD> </TR>
  <TR> <TD align="right"> 16 </TD> <TD> JR790 </TD> </TR>
  <TR> <TD align="right"> 17 </TD> <TD> JR830 </TD> </TR>
   </TABLE>

## Replicates
<!-- html table generated in R 3.0.2 by xtable 1.7-3 package -->
<!-- Fri Jun 27 10:29:09 2014 -->
<TABLE border=1>
<TR> <TH>  </TH> <TH> file </TH> <TH> sample_name </TH> <TH> replicate </TH> <TH> rep_name </TH> <TH> total_mass </TH> <TH> norm_mass </TH> <TH> internal_scale </TH> <TH> external_scale </TH>  </TR>
  <TR> <TD align="right"> 1 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR753/abundances.cxb </TD> <TD> WT </TD> <TD align="right">   0 </TD> <TD> WT_0 </TD> <TD align="right"> 39343800.00 </TD> <TD align="right"> 31809000.00 </TD> <TD align="right"> 1.28 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 2 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR750/abundances.cxb </TD> <TD> WT </TD> <TD align="right">   1 </TD> <TD> WT_1 </TD> <TD align="right"> 36041100.00 </TD> <TD align="right"> 31809000.00 </TD> <TD align="right"> 1.11 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 3 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR771/abundances.cxb </TD> <TD> WT </TD> <TD align="right">   2 </TD> <TD> WT_2 </TD> <TD align="right"> 38877000.00 </TD> <TD align="right"> 31809000.00 </TD> <TD align="right"> 1.24 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 4 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR755/abundances.cxb </TD> <TD> WT </TD> <TD align="right">   3 </TD> <TD> WT_3 </TD> <TD align="right"> 41822800.00 </TD> <TD align="right"> 31809000.00 </TD> <TD align="right"> 1.30 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 5 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR811/abundances.cxb </TD> <TD> WT </TD> <TD align="right">   4 </TD> <TD> WT_4 </TD> <TD align="right"> 38186700.00 </TD> <TD align="right"> 31809000.00 </TD> <TD align="right"> 1.22 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 6 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR768/abundances.cxb </TD> <TD> WT </TD> <TD align="right">   5 </TD> <TD> WT_5 </TD> <TD align="right"> 28382500.00 </TD> <TD align="right"> 31809000.00 </TD> <TD align="right"> 0.90 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 7 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR761/abundances.cxb </TD> <TD> WT </TD> <TD align="right">   6 </TD> <TD> WT_6 </TD> <TD align="right"> 31711800.00 </TD> <TD align="right"> 31809000.00 </TD> <TD align="right"> 0.99 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 8 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR815/abundances.cxb </TD> <TD> WT </TD> <TD align="right">   7 </TD> <TD> WT_7 </TD> <TD align="right"> 29744300.00 </TD> <TD align="right"> 31809000.00 </TD> <TD align="right"> 0.93 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 9 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR789/abundances.cxb </TD> <TD> WT </TD> <TD align="right">   8 </TD> <TD> WT_8 </TD> <TD align="right"> 27686600.00 </TD> <TD align="right"> 31809000.00 </TD> <TD align="right"> 0.87 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 10 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR748/abundances.cxb </TD> <TD> WT </TD> <TD align="right">   9 </TD> <TD> WT_9 </TD> <TD align="right"> 32374600.00 </TD> <TD align="right"> 31809000.00 </TD> <TD align="right"> 0.97 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 11 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR716/abundances.cxb </TD> <TD> WT </TD> <TD align="right">  10 </TD> <TD> WT_10 </TD> <TD align="right"> 26148700.00 </TD> <TD align="right"> 31809000.00 </TD> <TD align="right"> 0.82 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 12 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR717/abundances.cxb </TD> <TD> WT </TD> <TD align="right">  11 </TD> <TD> WT_11 </TD> <TD align="right"> 25571500.00 </TD> <TD align="right"> 31809000.00 </TD> <TD align="right"> 0.81 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 13 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR719/abundances.cxb </TD> <TD> WT </TD> <TD align="right">  12 </TD> <TD> WT_12 </TD> <TD align="right"> 22702200.00 </TD> <TD align="right"> 31809000.00 </TD> <TD align="right"> 0.69 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 14 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR756/abundances.cxb </TD> <TD> WT </TD> <TD align="right">  13 </TD> <TD> WT_13 </TD> <TD align="right"> 38957200.00 </TD> <TD align="right"> 31809000.00 </TD> <TD align="right"> 1.23 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 15 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR793/abundances.cxb </TD> <TD> Crnde </TD> <TD align="right">   0 </TD> <TD> Crnde_0 </TD> <TD align="right"> 36530500.00 </TD> <TD align="right"> 31809000.00 </TD> <TD align="right"> 1.16 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 16 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR790/abundances.cxb </TD> <TD> Crnde </TD> <TD align="right">   1 </TD> <TD> Crnde_1 </TD> <TD align="right"> 27560000.00 </TD> <TD align="right"> 31809000.00 </TD> <TD align="right"> 0.87 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 17 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR830/abundances.cxb </TD> <TD> Crnde </TD> <TD align="right">   2 </TD> <TD> Crnde_2 </TD> <TD align="right"> 28638600.00 </TD> <TD align="right"> 31809000.00 </TD> <TD align="right"> 0.91 </TD> <TD align="right"> 1.00 </TD> </TR>
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
##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       value
## 1 cuffdiff -p 10 -L WT,Crnde -o /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/diffs/Crnde_vs_WT_Embryonic /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/annotation/mm10_gencode_vM2_with_lncRNAs_and_LacZ.gtf /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR753/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR750/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR771/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR755/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR811/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR768/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR761/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR815/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR789/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR748/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR716/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR717/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR719/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR756/abundances.cxb /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR793/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR790/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR830/abundances.cxb 
## 2                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     2.2.1
## 3                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      4237
## 4                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    104700
## 5                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      mm10
```




