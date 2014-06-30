

Trp53cor KO vs WT (Embryonic)
======================================







```
## Error: RS-DBI driver: (could not connect to dbname:
## unable to open database file
## )
```

```
## Error: error in evaluating the argument 'object' in selecting a method for function 'replicates': Error: object 'cuff' not found
```

```
## Error: error in evaluating the argument 'X' in selecting a method for function 'lapply': Error: object 'reps' not found
```

```
## Error: error in evaluating the argument 'x' in selecting a method for function 'as.data.frame': Error: object 'files' not found
```

```
## Error: error in evaluating the argument 'x' in selecting a method for function 't': Error: object 'files' not found
```


This file shows the wt-v-ko comparison for Trp53cor. 

Cuff overview:


```
## Error: object 'cuff' not found
```

# QC

## Dispersion

Dispersion plot for genes in cuff:
(Overdispersion can lead to innacurate quants)


```
## Error: error in evaluating the argument 'object' in selecting a method for function 'dispersionPlot': Error: object 'cuff' not found
```

## Cross-replicate variability (fpkmSCVplot)
Differences in CV 2 can result in lower numbers of differentially expressed genes due to a higher degree of variability between replicate fpkm estimates.

Genes:


```
## Error: error in evaluating the argument 'object' in selecting a method for function 'fpkmSCVPlot': Error in genes(cuff) : 
##   error in evaluating the argument 'object' in selecting a method for function 'genes': Error: object 'cuff' not found
```

Isoforms: 


```
## Error: error in evaluating the argument 'object' in selecting a method for function 'fpkmSCVPlot': Error in isoforms(cuff) : 
##   error in evaluating the argument 'object' in selecting a method for function 'isoforms': Error: object 'cuff' not found
```


## MvA plot


```
## Error: error in evaluating the argument 'object' in selecting a method for function 'MAplot': Error in genes(cuff) : 
##   error in evaluating the argument 'object' in selecting a method for function 'genes': Error: object 'cuff' not found
```
   
### MvA plot counts


```
## Error: error in evaluating the argument 'object' in selecting a method for function 'MAplot': Error in genes(cuff) : 
##   error in evaluating the argument 'object' in selecting a method for function 'genes': Error: object 'cuff' not found
```

## Scatterplot matrix


```
## Error: error in evaluating the argument 'object' in selecting a method for function 'csScatterMatrix': Error in genes(cuff) : 
##   error in evaluating the argument 'object' in selecting a method for function 'genes': Error: object 'cuff' not found
```

## Distributions

### Boxplots

Boxplot (genes)


```
## Error: error in evaluating the argument 'object' in selecting a method for function 'csBoxplot': Error in genes(cuff) : 
##   error in evaluating the argument 'object' in selecting a method for function 'genes': Error: object 'cuff' not found
```

Boxplot (genes, replicates)


```
## Error: error in evaluating the argument 'object' in selecting a method for function 'csBoxplot': Error in genes(cuff) : 
##   error in evaluating the argument 'object' in selecting a method for function 'genes': Error: object 'cuff' not found
```

Boxplot (isoforms)


```
## Error: error in evaluating the argument 'object' in selecting a method for function 'csBoxplot': Error in isoforms(cuff) : 
##   error in evaluating the argument 'object' in selecting a method for function 'isoforms': Error: object 'cuff' not found
```

Boxplot (isoforms, replicates)


```
## Error: error in evaluating the argument 'object' in selecting a method for function 'csBoxplot': Error in isoforms(cuff) : 
##   error in evaluating the argument 'object' in selecting a method for function 'isoforms': Error: object 'cuff' not found
```

### Density

Density (genes)


```
## Error: error in evaluating the argument 'object' in selecting a method for function 'csDensity': Error in genes(cuff) : 
##   error in evaluating the argument 'object' in selecting a method for function 'genes': Error: object 'cuff' not found
```

Density (genes, replicates)


```
## Error: error in evaluating the argument 'object' in selecting a method for function 'csDensity': Error in genes(cuff) : 
##   error in evaluating the argument 'object' in selecting a method for function 'genes': Error: object 'cuff' not found
```


## Clustering

### Replicate Clusters


```
## Error: error in evaluating the argument 'object' in selecting a method for function 'csDendro': Error in genes(cuff) : 
##   error in evaluating the argument 'object' in selecting a method for function 'genes': Error: object 'cuff' not found
```

### PCA (genes)


```
## Error: error in evaluating the argument 'object' in selecting a method for function 'PCAplot': Error in genes(cuff) : 
##   error in evaluating the argument 'object' in selecting a method for function 'genes': Error: object 'cuff' not found
```

### MDS (genes)


```
## Error: error in evaluating the argument 'object' in selecting a method for function 'MDSplot': Error in genes(cuff) : 
##   error in evaluating the argument 'object' in selecting a method for function 'genes': Error: object 'cuff' not found
```





# KO assessment

## Endogenous lncRNA expression


```
## Error: error in evaluating the argument 'object' in selecting a method for function 'getGene': Error: object 'cuff' not found
```

```
## Error: error in evaluating the argument 'object' in selecting a method for function 'expressionPlot': Error: object 'myGene' not found
```

Endogenous expression of Trp53cor isoforms:


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
## Error: error in evaluating the argument 'object' in selecting a method for function 'getGene': Error: object 'cuff' not found
```

```
## Error: error in evaluating the argument 'object' in selecting a method for function 'expressionPlot': Error: object 'myGene' not found
```

```
## Error: error in evaluating the argument 'object' in selecting a method for function 'expressionBarplot': Error: object 'myGene' not found
```


## Digital Genotyping (LacZ vs Endogenous lncRNA and Sex)

Eif2s3y is a y-expressed gene 
Expression plot (endogenous linc, lacZ, Y-expressed gene):


```
## Error: error in evaluating the argument 'object' in selecting a method for function 'getGenes': Error: object 'cuff' not found
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
## Error: error in evaluating the argument 'object' in selecting a method for function 'getGene': Error: object 'cuff' not found
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
## Error: error in evaluating the argument 'object' in selecting a method for function 'replicates': Error: object 'cuff' not found
```

```
## Error: error in evaluating the argument 'X' in selecting a method for function 'lapply': Error: object 'reps' not found
```

```
## Error: error in evaluating the argument 'x' in selecting a method for function 'as.data.frame': Error: object 'files' not found
```

```
## Error: error in evaluating the argument 'x' in selecting a method for function 't': Error: object 'files' not found
```

```
## Error: non-character argument
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
## Error: object 'reps' not found
```

```
## Error: unique() applies only to vectors
```

# Differential Analysis

## Differential Genes 


```
## Error: error in evaluating the argument 'object' in selecting a method for function 'getSig': Error: object 'cuff' not found
```

```
## Error: error in evaluating the argument 'object' in selecting a method for function 'getGenes': Error: object 'cuff' not found
```

```
## Error: error in evaluating the argument 'object' in selecting a method for function 'annotation': Error: object 'sigGenes' not found
```



















































































