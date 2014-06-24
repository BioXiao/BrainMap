

linc-Enc1 KO vs WT (Embryonic)
======================================

- other heatmap labels (csHeatmap)
- cache gsea and overlap figure!! 
- tracks 
- should import litter info






# Intialize


# Design Overview

This file shows the wt-v-ko comparison for linc-Enc1. 

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

![plot of chunk dispersion](linc-Enc1_vs_WT_Embryonic/figure/dispersion.png) 

## Cross-replicate variability (fpkmSCVplot)
Differences in CV 2 can result in lower numbers of differentially expressed genes due to a higher degree of variability between replicate fpkm estimates.

Genes:
![plot of chunk CV_genes](linc-Enc1_vs_WT_Embryonic/figure/CV_genes.png) 


Isoforms: 
![plot of chunk cv_iso](linc-Enc1_vs_WT_Embryonic/figure/cv_iso.png) 

## Volcano


### Volcano matrix (replicates) -- why is xlim not working? 

![plot of chunk volcano_matrix](linc-Enc1_vs_WT_Embryonic/figure/volcano_matrix.png) 

## MvA plot

   
### MvA plot counts


## Scatterplot
![plot of chunk scatterplot](linc-Enc1_vs_WT_Embryonic/figure/scatterplot.png) 

### Scatter matrix (replicates) -- SKIP FOR NOW CAUSING PROBLEMS 




## Distributions

### Boxplots

Boxplot (genes)

![plot of chunk boxplot_genes](linc-Enc1_vs_WT_Embryonic/figure/boxplot_genes.png) 

Boxplot (genes, replicates)

![plot of chunk boxplot_genes_replicates](linc-Enc1_vs_WT_Embryonic/figure/boxplot_genes_replicates.png) 

Boxplot (isoforms)

![plot of chunk boxplot_isoforms](linc-Enc1_vs_WT_Embryonic/figure/boxplot_isoforms.png) 

Boxplot (isoforms, replicates)

![plot of chunk boxplot_isoforms_replicates](linc-Enc1_vs_WT_Embryonic/figure/boxplot_isoforms_replicates.png) 

### Density

Density (genes)

![plot of chunk density](linc-Enc1_vs_WT_Embryonic/figure/density.png) 

Density (genes, replicates)

![plot of chunk density_w_replicates](linc-Enc1_vs_WT_Embryonic/figure/density_w_replicates.png) 


## Clustering

### Replicate Clusters
![plot of chunk replicate_clusters](linc-Enc1_vs_WT_Embryonic/figure/replicate_clusters.png) 

```
## 'dendrogram' with 2 branches and 17 members total, at height 0.08406
```

### PCA (genes)
![plot of chunk PCA](linc-Enc1_vs_WT_Embryonic/figure/PCA.png) 

### MDS (genes)
![plot of chunk MDS](linc-Enc1_vs_WT_Embryonic/figure/MDS.png) 





# KO assessment

## Endogenous lncRNA expression

![plot of chunk Enodenous_lncRNA_tables](linc-Enc1_vs_WT_Embryonic/figure/Enodenous_lncRNA_tables.png) 

Endogenous expression of linc-Enc1 isoforms:

![plot of chunk endogenous_iso](linc-Enc1_vs_WT_Embryonic/figure/endogenous_iso.png) 

Barplot of gene expression:

![plot of chunk endogenous_barplot](linc-Enc1_vs_WT_Embryonic/figure/endogenous_barplot.png) 

Barplot of isoform expression:

![plot of chunk endogenous_iso_barplot](linc-Enc1_vs_WT_Embryonic/figure/endogenous_iso_barplot.png) 


## LacZ expression

![plot of chunk LacZ_expression](linc-Enc1_vs_WT_Embryonic/figure/LacZ_expression1.png) ![plot of chunk LacZ_expression](linc-Enc1_vs_WT_Embryonic/figure/LacZ_expression2.png) 


## Digital Genotyping (LacZ vs Endogenous lncRNA and Sex)
Expression plot (endogenous linc, lacZ, Y-expressed gene):

![plot of chunk Digital_Genotyping](linc-Enc1_vs_WT_Embryonic/figure/Digital_Genotyping.png) 

Expression heatmap:
![plot of chunk digital_geno_heatmap](linc-Enc1_vs_WT_Embryonic/figure/digital_geno_heatmap.png) 



### Track visualization 

![plot of chunk track_vis](linc-Enc1_vs_WT_Embryonic/figure/track_vis.png) 

# Differential Analysis

## Differential Genes 



There are 18 significantly differentially expressed genes. They are:

<!-- html table generated in R 3.0.2 by xtable 1.7-3 package -->
<!-- Tue Jun 24 12:45:07 2014 -->
<TABLE border=1>
<TR> <TH>  </TH> <TH> geneAnnot$gene_short_name </TH>  </TR>
  <TR> <TD align="right"> 1 </TD> <TD> Rec8 </TD> </TR>
  <TR> <TD align="right"> 2 </TD> <TD> Hoxb9 </TD> </TR>
  <TR> <TD align="right"> 3 </TD> <TD> Nnt </TD> </TR>
  <TR> <TD align="right"> 4 </TD> <TD> Fn1 </TD> </TR>
  <TR> <TD align="right"> 5 </TD> <TD> Bspry </TD> </TR>
  <TR> <TD align="right"> 6 </TD> <TD> Alad </TD> </TR>
  <TR> <TD align="right"> 7 </TD> <TD> Hddc3 </TD> </TR>
  <TR> <TD align="right"> 8 </TD> <TD> Enc1 </TD> </TR>
  <TR> <TD align="right"> 9 </TD> <TD> Gm9493 </TD> </TR>
  <TR> <TD align="right"> 10 </TD> <TD> Fat4 </TD> </TR>
  <TR> <TD align="right"> 11 </TD> <TD> Hbb-y </TD> </TR>
  <TR> <TD align="right"> 12 </TD> <TD> Hbb-bh1 </TD> </TR>
  <TR> <TD align="right"> 13 </TD> <TD> Hba-x </TD> </TR>
  <TR> <TD align="right"> 14 </TD> <TD> Capn11 </TD> </TR>
  <TR> <TD align="right"> 15 </TD> <TD> Alox5ap </TD> </TR>
  <TR> <TD align="right"> 16 </TD> <TD> Rpl17 </TD> </TR>
  <TR> <TD align="right"> 17 </TD> <TD> Gstm6 </TD> </TR>
  <TR> <TD align="right"> 18 </TD> <TD> Gm2373 </TD> </TR>
   </TABLE>

### Matrix of gene significant differences between conditions

(skip for Brainmap wt-v-ko comparisons)

![plot of chunk sigMatrix](linc-Enc1_vs_WT_Embryonic/figure/sigMatrix.png) 

### Significant gene expression differences between conditions

Expression plot (genes):
![plot of chunk sigExpression](linc-Enc1_vs_WT_Embryonic/figure/sigExpression1.png) ![plot of chunk sigExpression](linc-Enc1_vs_WT_Embryonic/figure/sigExpression2.png) 

Significant genes with expression >50fpkm (any condition):
![plot of chunk highly_expressed_sig](linc-Enc1_vs_WT_Embryonic/figure/highly_expressed_sig.png) 

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
![plot of chunk diff_iso](linc-Enc1_vs_WT_Embryonic/figure/diff_iso.png) 

```
## Error: RS-DBI driver: (error in statement: near ")": syntax error)
```

```
## Error: error in evaluating the argument 'object' in selecting a method for function 'annotation': Error: object 'isoformSigGenes' not found
```

These isoforms are:




```
## Error: error in evaluating the argument 'object' in selecting a method for function 'csHeatmap': Error in isoforms(isoformSigGenes) : 
##   error in evaluating the argument 'object' in selecting a method for function 'isoforms': Error: object 'isoformSigGenes' not found
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


```
## Error: unable to find an inherited method for function 'genes' for
## signature '"CuffSet"'
```

```
## Error: error in evaluating the argument 'object' in selecting a method for function 'diffData': Error: object 'population' not found
```

```
## Error: error in evaluating the argument 'object' in selecting a method for function 'annotation': Error in (function (classes, fdef, mtable)  : 
##   unable to find an inherited method for function 'genes' for signature '"CuffSet"'
## Calls: genes -> <Anonymous>
```

```
## Error: error in evaluating the argument 'y' in selecting a method for function 'merge': Error: object 'population.diff' not found
```


```
## Error: error in evaluating the argument 'x' in selecting a method for function 'toupper': Error: object 'gene_names' not found
```

```
## Error: error in evaluating the argument 'x' in selecting a method for function 'unique': Error: object 'df.pop' not found
```

```
## Error: object 'df.pop.unique' not found
```

```
## Error: object 'df.pop.unique' not found
```

```
## Error: object 'df.pop.unique.ordered' not found
```

```
## Error: object 'Input.df' not found
```

```
## Error: error in evaluating the argument 'x' in selecting a method for function 'which': Error in short_names %in% genelist : 
##   error in evaluating the argument 'x' in selecting a method for function '%in%': Error: object 'Input.df' not found
```

```
## Error: object 'reactome_pvl_mat' not found
```

```
## Error: object 'reactome_pvl_corrected' not found
```

```
## Error: error in evaluating the argument 'x' in selecting a method for function 'which': Error in short_names %in% genelist : 
##   error in evaluating the argument 'x' in selecting a method for function '%in%': Error: object 'Input.df' not found
```

```
## Error: object 'biocarta_pvl_mat' not found
```

```
## Error: object 'biocarta_pvl_corrected' not found
```


```
## Error: error in evaluating the argument 'x' in selecting a method for function 't': Error: object 'reactome_pvl_corrected' not found
```

```
## Error: object 'x' not found
```

```
## Error: object 'x_ordered' not found
```

```
## Error: object 'x_ordered' not found
```

```
## Error: object 'noinfinities_x' not found
```

```
## Error: object 'x_max' not found
```

```
## Error: object 'x_ordered' not found
```


```
## Error: error in evaluating the argument 'x' in selecting a method for function 't': Error: object 'reactome_pvl_corrected' not found
```

```
## Error: object 'x' not found
```

```
## Error: object 'x_ordered' not found
```

```
## Error: object 'x_ordered' not found
```

```
## Error: object 'noinfinities_x' not found
```

```
## Error: object 'x_max' not found
```

```
## Error: object 'x_ordered' not found
```

## GO enrichment 
Cluster profiler used to call enichments of significantly differentially regulated genes that map to Entrez IDs. 






```
## Error: 'x' and 'units' must have length > 0
```

![plot of chunk GO_figures](linc-Enc1_vs_WT_Embryonic/figure/GO_figures1.png) 

```
## Error: 'x' and 'units' must have length > 0
```

```
## Error: need finite 'xlim' values
```

![plot of chunk GO_figures](linc-Enc1_vs_WT_Embryonic/figure/GO_figures2.png) 

```
## Error: need finite 'xlim' values
```

# Cis vs Trans (locally)

```
## Error: error in evaluating the argument 'object' in selecting a method for function 'diffTable': Error in (function (classes, fdef, mtable)  : 
##   unable to find an inherited method for function 'genes' for signature '"CuffSet"'
## Calls: genes -> <Anonymous>
```

```
## Error: object 'fullTable' not found
```

```
## Error: $ operator not defined for this S4 class
```

```
## Error: $ operator not defined for this S4 class
```

```
## Error: $ operator not defined for this S4 class
```

```
## Error: object 'fullTable' not found
```

```
## Error: error in evaluating the argument 'x' in selecting a method for function 'nrow': Error in empty(.data) : object 'sigGenesRegion' not found
## Calls: ddply -> empty
```

```
## Error: object 'fullTable' not found
```

```
## Error: object 'fullTable' not found
```

```
## Error: $ operator not defined for this S4 class
```

```
## Error: object 'genesInRegion' not found
```

```
## Error: object 'genesInRegion' not found
```

```
## Error: object 'genesInRegion' not found
```

```
## Error: object 'genesInRegion' not found
```

```
## Error: object of type 'closure' is not subsettable
```










