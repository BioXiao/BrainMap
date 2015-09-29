

linc-Brn1a KO vs WT (Embryonic)
======================================









This file shows the wt-v-ko comparison for linc-Brn1a. 

Cuff overview:


```
## CuffSet instance with:
## 	 0 samples
## 	 0 genes
## 	 0 isoforms
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
## Error: replacement has 1 row, data has 0
```

## Cross-replicate variability (fpkmSCVplot)
Differences in CV 2 can result in lower numbers of differentially expressed genes due to a higher degree of variability between replicate fpkm estimates.

Genes:


```
## Error: RS-DBI driver: (error in statement: near ")": syntax error)
```

Isoforms: 


```
## Error: RS-DBI driver: (error in statement: near ")": syntax error)
```


## MvA plot


```
## Error: non-numeric argument to binary operator
```
   
### MvA plot counts


```
## Error: non-numeric argument to binary operator
```

## Scatterplot matrix


```
## Error: RS-DBI driver: (error in statement: near "from": syntax error)
```

## Distributions

### Boxplots

Boxplot (genes)


```
## Error: RS-DBI driver: (error in statement: near ")": syntax error)
```

Boxplot (genes, replicates)


```
## Error: RS-DBI driver: (error in statement: near ")": syntax error)
```

Boxplot (isoforms)


```
## Error: RS-DBI driver: (error in statement: near ")": syntax error)
```

Boxplot (isoforms, replicates)


```
## Error: RS-DBI driver: (error in statement: near ")": syntax error)
```

### Density

Density (genes)


```
## Error: RS-DBI driver: (error in statement: near ")": syntax error)
```

Density (genes, replicates)


```
## Error: RS-DBI driver: (error in statement: near ")": syntax error)
```


## Clustering

### Replicate Clusters


```
## Error: RS-DBI driver: (error in statement: near "from": syntax error)
```

### PCA (genes)


```
## Error: RS-DBI driver: (error in statement: near "from": syntax error)
```

### MDS (genes)


```
## Error: RS-DBI driver: (error in statement: near "from": syntax error)
```





# KO assessment

## Endogenous lncRNA expression


```
## Error: RS-DBI driver: (error in statement: near ")": syntax error)
```

```
## Error: error in evaluating the argument 'object' in selecting a method for function 'expressionPlot': Error: object 'myGene' not found
```

Endogenous expression of linc-Brn1a isoforms:


```
## Error: error in evaluating the argument 'object' in selecting a method for function 'expressionPlot': Error in isoforms(myGene) : 
##   error in evaluating the argument 'object' in selecting a method for function 'isoforms': Error: object 'myGene' not found
```

Barplot of gene expression:


```
## Error: error in evaluating the argument 'object' in selecting a method for function 'expressionBarplot': Error: object 'myGene' not found
```

Barplot of isoform expression:


```
## Error: error in evaluating the argument 'object' in selecting a method for function 'expressionBarplot': Error in isoforms(myGene) : 
##   error in evaluating the argument 'object' in selecting a method for function 'isoforms': Error: object 'myGene' not found
```


## LacZ expression


```
## Error: RS-DBI driver: (RS_SQLite_exec: could not execute1: cannot start a
## transaction within a transaction)
```

```
## Error: error in evaluating the argument 'object' in selecting a method for function 'expressionPlot': Error: object 'myGene' not found
```

```
## Error: error in evaluating the argument 'object' in selecting a method for function 'expressionBarplot': Error: object 'myGene' not found
```


## Digital Genotyping (LacZ vs Endogenous lncRNA and Sex)

Eif2s3y is a y-expressed gene, Xist is an x-expressed gene 
Expression plot (endogenous linc, lacZ, Y-expressed gene):


```
## Error: RS-DBI driver: (RS_SQLite_exec: could not execute1: cannot start a
## transaction within a transaction)
```

```
## Error: error in evaluating the argument 'object' in selecting a method for function 'expressionBarplot': Error: object 'genotypingGenes' not found
```

Expression heatmap:


```
## Error: error in evaluating the argument 'object' in selecting a method for function 'csHeatmap': Error: object 'genotypingGenes' not found
```



### Track visualization 


```
## Error: RS-DBI driver: (RS_SQLite_exec: could not execute1: cannot start a
## transaction within a transaction)
```

```
## Error: error in evaluating the argument 'object' in selecting a method for function 'annotation': Error: object 'myGene' not found
```

```
## Error: object 'annot' not found
```

```
## Error: error in evaluating the argument 'x' in selecting a method for function 'unlist': Error: object 'locus' not found
```

```
## Error: object 'locus' not found
```

```
## Error: object 'locus' not found
```

```
## Error: error in evaluating the argument 'x' in selecting a method for function 'unlist': Error: object 'start_and_end' not found
```

```
## Error: object 'start_and_end' not found
```

```
## Error: object 'start_and_end' not found
```

```
## Error: error in evaluating the argument 'start' in selecting a method for function '.buildRange': Error: object 'from' not found
```

```
## Error: unique() applies only to vectors
```

# Differential Analysis

## Differential Genes 


```
## Error: RS-DBI driver: (error in statement: near ")": syntax error)
```

```
## Error: error in evaluating the argument 'object' in selecting a method for function 'annotation': Error: object 'sigGenes' not found
```

There are 0 significantly differentially expressed genes. They are:

[1] "No sig genes!"

### Matrix of gene significant differences between conditions

(skip for Brainmap wt-v-ko comparisons)

![plot of chunk sigMatrix](figure/sigMatrix.png) 

### Significant gene expression differences between conditions

Expression plot (genes):(turned off)





```
## Error: error in evaluating the argument 'object' in selecting a method for function 'csHeatmap': Error: object 'sigGenes' not found
```

Significant genes with expression >50fpkm (any condition):(turned off)



An individual look at each of the highly expressed significantly differentially regulated genes:
(eval=false for first pass)




### Expression-level/significance relationship

Scatter plot of significant genes only:


```
## Error: error in evaluating the argument 'object' in selecting a method for function 'csScatter': Error: object 'sigGenes' not found
```

Volcano Plot


```
## Error: One or more values of 'x' or 'y' are not valid sample names!
```

Volcano plot with significant genes only:


```
## Error: error in evaluating the argument 'object' in selecting a method for function 'csVolcano': Error: object 'sigGenes' not found
```

FoldChange Heatmap


```
## Error: error in evaluating the argument 'object' in selecting a method for function 'csFoldChangeHeatmap': Error: object 'sigGenes' not found
```


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





```
## Error: Only alternative="mixed" is possible with F-like statistics.
```

```
## Error: object 'reactome_pvl_mat' not found
```

```
## Error: object 'reactome_pvl_corrected' not found
```

```
## Error: Only alternative="mixed" is possible with F-like statistics.
```

```
## Error: object 'biocarta_pvl_mat' not found
```

```
## Error: object 'biocarta_pvl_corrected' not found
```

```
## Error: Only alternative="mixed" is possible with F-like statistics.
```

```
## Error: object 'kegg_pvl_mat' not found
```

```
## Error: object 'kegg_pvl_corrected' not found
```

```
## Error: Only alternative="mixed" is possible with F-like statistics.
```

```
## Error: object 'interneuron_pvl_mat' not found
```

```
## Error: object 'interneuron_pvl_corrected' not found
```


Biocarta enrichment: 


```
## Error: error in evaluating the argument 'x' in selecting a method for function 't': Error: object 'biocarta_pvl_corrected' not found
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
## Error: error in evaluating the argument 'x' in selecting a method for function 'as.matrix': Error: object 'x_ordered' not found
```

```
## Error: object 'x_ordered' not found
```

Biocarta zscore: 


```
## Error: error in evaluating the argument 'x' in selecting a method for function 'which': Error in apply(x, 2, min) : object 'biocarta_pvl_corrected' not found
## Calls: colMins -> apply
```

```
## Error: object 'x' not found
```

```
## Error: object 'x_ordered' not found
```

```
## Error: error in evaluating the argument 'x' in selecting a method for function 'as.matrix': Error: object 'x_ordered' not found
```

```
## Error: object 'x_ordered' not found
```


Reactome enrichment: 


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


Reactome zscore: 


```
## Error: error in evaluating the argument 'x' in selecting a method for function 'which': Error in apply(x, 2, min) : object 'reactome_pvl_corrected' not found
## Calls: colMins -> apply
```

```
## Error: object 'x' not found
```

```
## Error: object 'x_ordered' not found
```

```
## Error: error in evaluating the argument 'x' in selecting a method for function 'as.matrix': Error: object 'x_ordered' not found
```

```
## Error: object 'x_ordered' not found
```


Kegg enrichment: 


```
## Error: error in evaluating the argument 'x' in selecting a method for function 't': Error: object 'kegg_pvl_corrected' not found
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

Kegg zscore: 


```
## Error: error in evaluating the argument 'x' in selecting a method for function 'which': Error in apply(x, 2, min) : object 'kegg_pvl_corrected' not found
## Calls: colMins -> apply
```

```
## Error: object 'x' not found
```

```
## Error: object 'x_ordered' not found
```

```
## Error: error in evaluating the argument 'x' in selecting a method for function 'as.matrix': Error: object 'x_ordered' not found
```

```
## Error: object 'x_ordered' not found
```

Interneuron enrichment:


```
## Error: error in evaluating the argument 'x' in selecting a method for function 't': Error: object 'interneuron_pvl_corrected' not found
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

Interneuron zscore:


```
## Error: error in evaluating the argument 'x' in selecting a method for function 'which': Error in apply(x, 2, min) : object 'interneuron_pvl_corrected' not found
## Calls: colMins -> apply
```

```
## Error: object 'x' not found
```

```
## Error: object 'x_ordered' not found
```

```
## Error: error in evaluating the argument 'x' in selecting a method for function 'as.matrix': Error: object 'x_ordered' not found
```

```
## Error: object 'x_ordered' not found
```



## GO enrichment 
Cluster profiler used to call enichments of significantly differentially regulated genes that map to Entrez IDs. 


```
## Error: RS-DBI driver: (error in statement: near ")": syntax error)
```

```
## Error: error in evaluating the argument 'object' in selecting a method for function 'annotation': Error: object 'sigGenes' not found
```

```
## Error: object 'geneAnnot' not found
```

```
## Error: error in evaluating the argument 'object' in selecting a method for function 'diffData': Error: object 'sigGenes' not found
```

```
## Error: object 'sigDiff' not found
```


```
## Error: object 'geneNames' not found
```

```
## Error: object 'sigEntrez' not found
```

```
## Error: error in evaluating the argument 'x' in selecting a method for function 'unlist': Error: object 'sigEZ' not found
```

```
## Error: object 'sigEZ' not found
```

```
## Error: object 'sigEZ' not found
```

```
## Error: object 'sigEZ' not found
```

```
## Error: object 'sigEZ' not found
```

```
## Error: object 'sigEZ' not found
```


```
## Error: error in evaluating the argument 'x' in selecting a method for function 'plot': Error: object 'goBP' not found
```

```
## Error: error in evaluating the argument 'x' in selecting a method for function 'plot': Error: object 'goMF' not found
```

```
## Error: error in evaluating the argument 'x' in selecting a method for function 'plot': Error: object 'goCC' not found
```

```
## Error: error in evaluating the argument 'x' in selecting a method for function 'plot': Error: object 'kegg' not found
```

```
## Error: error in evaluating the argument 'x' in selecting a method for function 'plot': Error: object 'pathway' not found
```

# Cis vs Trans (locally)

log2 Foldchange and test statistic are calculated with the ratio of fpkm(KO)/fpkm(WT), thus the test_stat is positive if a gene is higher in the KO and negative if a gene has lower expression in the KO





```
## Error: dims [product 1] do not match the length of object [0]
```

```
## Error: object 'fullTable' not found
```

```
## Error: object 'myGene' not found
```

```
## Error: object 'myGene' not found
```

```
## Error: object 'myGene' not found
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
## Error: object 'myGene' not found
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













