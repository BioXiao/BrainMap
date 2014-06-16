Mouse Data Overview 1
========================================================

```r
opts_chunk$set(echo=FALSE)
```


```
## Loading required package: BiocGenerics
## Loading required package: parallel
## 
## Attaching package: 'BiocGenerics'
## 
## The following objects are masked from 'package:parallel':
## 
##     clusterApply, clusterApplyLB, clusterCall, clusterEvalQ,
##     clusterExport, clusterMap, parApply, parCapply, parLapply,
##     parLapplyLB, parRapply, parSapply, parSapplyLB
## 
## The following object is masked from 'package:stats':
## 
##     xtabs
## 
## The following objects are masked from 'package:base':
## 
##     anyDuplicated, append, as.data.frame, as.vector, cbind,
##     colnames, duplicated, eval, evalq, Filter, Find, get,
##     intersect, is.unsorted, lapply, Map, mapply, match, mget,
##     order, paste, pmax, pmax.int, pmin, pmin.int, Position, rank,
##     rbind, Reduce, rep.int, rownames, sapply, setdiff, sort,
##     table, tapply, union, unique, unlist
## 
## Loading required package: RSQLite
## Loading required package: DBI
## Loading required package: ggplot2
## Loading required package: reshape2
## Loading required package: fastcluster
## 
## Attaching package: 'fastcluster'
## 
## The following object is masked from 'package:stats':
## 
##     hclust
## 
## Loading required package: rtracklayer
## Loading required package: GenomicRanges
## Loading required package: IRanges
## Loading required package: XVector
## Loading required package: Gviz
## Loading required package: grid
## 
## Attaching package: 'cummeRbund'
## 
## The following object is masked from 'package:GenomicRanges':
## 
##     promoters
## 
## The following object is masked from 'package:IRanges':
## 
##     promoters
## 
## The following object is masked from 'package:BiocGenerics':
## 
##     conditions
```

# Adult Samples 
- All have strange density plots: add pseudocount 

Without Pseudocount

```
## Warning: Removed 7158 rows containing non-finite values (stat_density).
## Warning: Removed 7493 rows containing non-finite values (stat_density).
## Warning: Removed 6784 rows containing non-finite values (stat_density).
## Warning: Removed 6978 rows containing non-finite values (stat_density).
## Warning: Removed 6732 rows containing non-finite values (stat_density).
## Warning: Removed 6637 rows containing non-finite values (stat_density).
## Warning: Removed 7026 rows containing non-finite values (stat_density).
## Warning: Removed 6662 rows containing non-finite values (stat_density).
## Warning: Removed 6778 rows containing non-finite values (stat_density).
## Warning: Removed 6406 rows containing non-finite values (stat_density).
## Warning: Removed 6331 rows containing non-finite values (stat_density).
## Warning: Removed 6814 rows containing non-finite values (stat_density).
## Warning: Removed 6835 rows containing non-finite values (stat_density).
## Warning: Removed 6798 rows containing non-finite values (stat_density).
## Warning: Removed 6545 rows containing non-finite values (stat_density).
## Warning: Removed 7304 rows containing non-finite values (stat_density).
## Warning: Removed 6734 rows containing non-finite values (stat_density).
## Warning: Removed 6731 rows containing non-finite values (stat_density).
```

![plot of chunk density](figure/density.png) 

With Pseudocount = 0.01 
![plot of chunk density pseudo](figure/density pseudo.png) 


## WTS:

### Genotyping
- wt 12 is ko/het (JR817)


```
## Error: object 'strain' not found
```

```
## Error: object 'genotypingGeneIDs' not found
```

```
## Error: error in evaluating the argument 'object' in selecting a method for function 'csHeatmap': Error: object 'genotypingGenes' not found
```

### QC 
- wts 9, 10 have smaller fpkm distribution (replicates)

![plot of chunk boxplot replicates](figure/boxplot replicates.png) 

- isoform fpkm distributions: WT smaller on whole, but replicates look fine? 

Boxplot (isoforms)

![plot of chunk boxplot isoforms](figure/boxplot isoforms.png) 

Boxplot (isoforms, replicates)

![plot of chunk boxplot isoforms replicates](figure/boxplot isoforms replicates.png) 


### Other Notes

## KO Strains

### Celrr

### Crnde

- Either wrong genotyping or isoform beyond KO region stabilized by LZ (need to see tracks)

![plot of chunk crnde adult](figure/crnde adult.png) 


- Wrong genotyping CRNDE_2 (JR818)

![plot of chunk crnde lz adult](figure/crnde lz adult1.png) 

```
## Using tracking_id, rep_name as id variables
## No id variables; using all as measure variables
```

![plot of chunk crnde lz adult](figure/crnde lz adult2.png) 

### Eldr

- Either wrong genotyping or isoform beyond KO region stabilized by LZ (need to see tracks)

![plot of chunk eldr adult](figure/eldr adult.png) 


![plot of chunk eldr lz adult](figure/eldr lz adult1.png) 

```
## Using tracking_id, rep_name as id variables
## No id variables; using all as measure variables
```

![plot of chunk eldr lz adult](figure/eldr lz adult2.png) 

Problem child is Eldr_0 (JR733)
Does Eldr_1 look like a het? (JR799)

### Haunt

### Kantr (Jarid1C)
YAY! They actually cluster!
![plot of chunk Kantr adult](figure/Kantr adult.png) 

```
## 'dendrogram' with 2 branches and 6 members total, at height 0.06617
```

### Brn1a
3 isoforms expressed

### Brn1b
LacZ expressed slightly higher than lincRNA

### linc-Cox2
YAY! They cluster together! (is this a litter thing? sex difference thing?)

![plot of chunk lincCox2 adult](figure/lincCox2 adult.png) 

```
## 'dendrogram' with 2 branches and 18 members total, at height 0.07544
```

**THIS DENDROGRAM LOOKS DIFFERENT WHEN PRINTED IN R STUDIO!**

Endogenous linc and LZ approx same expression levels 


### linc-Enc1a

I think this one MIGHT be a mapping error. Endogenous linc expressed at ~ WT levels (very low), but all cells have lacZ robustly expressed. Potentially hets I guess 

![plot of chunk lincEnc1a](figure/lincEnc1a.png) 

LacZ and genotyping heatmap
![plot of chunk lincEnc1a lz adult](figure/lincEnc1a lz adult1.png) 

```
## Using tracking_id, rep_name as id variables
## No id variables; using all as measure variables
```

![plot of chunk lincEnc1a lz adult](figure/lincEnc1a lz adult2.png) 


### Manr
Same as with linc-Enc1a, may be extra-knockout region OR perhaps hets or some sort of artifact.. 

![plot of chunk MANR](figure/MANR.png) 

LacZ and genotyping heatmap
![plot of chunk MANR lz adult](figure/MANR lz adult1.png) 

```
## Using tracking_id, rep_name as id variables
## No id variables; using all as measure variables
```

![plot of chunk MANR lz adult](figure/MANR lz adult2.png) 


### Peril

Fairly certai this is extra-knockout region. Need to make tracks! 

![plot of chunk Peril](figure/Peril.png) 

LacZ and genotyping heatmap
![plot of chunk Peril lz adult](figure/Peril lz adult1.png) 

```
## Using tracking_id, rep_name as id variables
## No id variables; using all as measure variables
```

![plot of chunk Peril lz adult](figure/Peril lz adult2.png) 

### Trp53cor1 (linc-p21)
Everything very lowly expressed 

### Tug1

LacZ expressed far lower than Tug1 lincRNA 
Why is one of the tug1 replicates missing from plots/dendrogram??



# Embryonic Samples

- wt13 

## WTS:

### Genotyping

### QC 

### Other Notes

## KO Strains

### Celrr
- Celrr: celrr 0 is not KO (seems WT) JR769

![plot of chunk celrr embryonic](figure/celrr embryonic.png) 

LacZ and genotyping heatmap
![plot of chunk Celrr lz embryonic](figure/Celrr lz embryonic1.png) 

```
## Using tracking_id, rep_name as id variables
## No id variables; using all as measure variables
```

![plot of chunk Celrr lz embryonic](figure/Celrr lz embryonic2.png) 



Number of differentially expressed genes:207

Cell compartment: lots of cytoplasmic stuff... is this linc cytoplasmic?? 

### Crnde
- actually cluster together!

![plot of chunk Crnde embryonic dendro](figure/Crnde embryonic dendro.png) 

```
## 'dendrogram' with 2 branches and 18 members total, at height 0.08401
```


Endogenous expression (isoforms)
![plot of chunk Crnde embryonic](figure/Crnde embryonic.png) 

LacZ and genotyping heatmap
Crnde_2 may be het? Need to check tracks! 
![plot of chunk Crnde lz embryonic](figure/Crnde lz embryonic1.png) 

```
## Using tracking_id, rep_name as id variables
## No id variables; using all as measure variables
```

![plot of chunk Crnde lz embryonic](figure/Crnde lz embryonic2.png) 


Number of differentially expressed genes:90

-ECM/collagen... 

### Eldr

genotyping looks good!

Kegg: huntingtons/alzheimers/cancer




Number of differentially expressed genes:144


### Haunt
digital genotyping looks good 




Number of differentially expressed genes:33


### Kantr
Yay! Cluster together! 
![plot of chunk Kantr embryonic dendro](figure/Kantr embryonic dendro.png) 

```
## 'dendrogram' with 2 branches and 6 members total, at height 0.0764
```

Endogenous Kantr expression: 
![plot of chunk Kantr embryonic](figure/Kantr embryonic.png) 

LacZ and genotyping heatmap
![plot of chunk Kantr lz embryonic](figure/Kantr lz embryonic1.png) 

```
## Using tracking_id, rep_name as id variables
## No id variables; using all as measure variables
```

![plot of chunk Kantr lz embryonic](figure/Kantr lz embryonic2.png) 


Number of differentially expressed genes:785





### Brn1a

### Brn1b

### linc-Cox2

### linc-Enc1a

### Manr

### Peril

### Trp53cor (linc-p21)

### Tug1


# SUMMARY
**list of samples to re-check or exclude**



**Interesting or promising strains!**

# TO DO
