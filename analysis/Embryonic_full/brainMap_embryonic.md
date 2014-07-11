BrainMap Adult Full Analysis
=====================================

#Setup and Imports

```r
# basedir = '/Volumes/Odyssey/seq/lgoff/Projects/BrainMap/'
basedir = "/n/rinn_data1/seq/lgoff/Projects/BrainMap/"
setwd(paste(basedir, "analysis/Embryonic_full/", sep = ""))
```



```r
library(cummeRbund)
```

```
## Loading required package: BiocGenerics
```

```
## Loading required package: parallel
```

```
## Attaching package: 'BiocGenerics'
```

```
## The following objects are masked from 'package:parallel':
## 
## clusterApply, clusterApplyLB, clusterCall, clusterEvalQ, clusterExport,
## clusterMap, parApply, parCapply, parLapply, parLapplyLB, parRapply,
## parSapply, parSapplyLB
```

```
## The following object is masked from 'package:stats':
## 
## xtabs
```

```
## The following objects are masked from 'package:base':
## 
## anyDuplicated, as.data.frame, cbind, colnames, duplicated, eval, Filter,
## Find, get, intersect, lapply, Map, mapply, match, mget, order, paste,
## pmax, pmax.int, pmin, pmin.int, Position, rank, rbind, Reduce, rep.int,
## rownames, sapply, setdiff, sort, table, tapply, union, unique, unlist
```

```
## Loading required package: RSQLite
```

```
## Loading required package: DBI
```

```
## Loading required package: ggplot2
```

```
## Loading required package: reshape2
```

```
## Loading required package: fastcluster
```

```
## Attaching package: 'fastcluster'
```

```
## The following object is masked from 'package:stats':
## 
## hclust
```

```
## Loading required package: rtracklayer
```

```
## Loading required package: GenomicRanges
```

```
## Loading required package: IRanges
```

```
## Loading required package: Gviz
```

```
## Loading required package: grid
```

```
## Attaching package: 'cummeRbund'
```

```
## The following object is masked from 'package:GenomicRanges':
## 
## promoters
```

```
## The following object is masked from 'package:IRanges':
## 
## promoters
```

```r
library(ggplot2)
library(stringr)
library(reshape2)

brainmap_theme_opts <- function() {
    theme(strip.background = element_rect(colour = "white", fill = "white")) + 
        theme(panel.border = element_blank(), axis.line = element_line()) + 
        theme(panel.grid.minor.x = element_blank(), panel.grid.minor.y = element_blank()) + 
        theme(panel.grid.major.x = element_blank(), panel.grid.major.y = element_blank()) + 
        theme(panel.background = element_rect(fill = "white"))
}
```


## Initialize cuffData.db and establish connection

```r
refGTF <- paste(basedir, "data/annotation/mm10_gencode_vM2_with_lncRNAs_and_LacZ.gtf", 
    sep = "")
cuffdir <- paste(basedir, "data/diffs/Embryonic_full/", sep = "")

cuffdir
```

```
## [1] "/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/diffs/Embryonic_full/"
```

```r

cuff <- readCufflinks(dir = cuffdir, gtfFile = refGTF, genome = "mm10")

samples(cuff)
```

```
##    sample_index sample_name sample_name parameter value
## 1             1       Celrr        <NA>      <NA>  <NA>
## 2             2       Crnde        <NA>      <NA>  <NA>
## 3             3        Eldr        <NA>      <NA>  <NA>
## 4             4       Haunt        <NA>      <NA>  <NA>
## 5             5       Kantr        <NA>      <NA>  <NA>
## 6             6        Manr        <NA>      <NA>  <NA>
## 7             7       Peril        <NA>      <NA>  <NA>
## 8             8    Trp53cor        <NA>      <NA>  <NA>
## 9             9        Tug1        <NA>      <NA>  <NA>
## 10           10          WT        <NA>      <NA>  <NA>
## 11           11  linc_Brn1b        <NA>      <NA>  <NA>
## 12           12   linc_Cox2        <NA>      <NA>  <NA>
## 13           13   linc_Enc1        <NA>      <NA>  <NA>
```

```r

replicates(cuff)
```

```
##                                                                          file
## 1  /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR773/abundances.cxb
## 2  /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR760/abundances.cxb
## 3  /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR793/abundances.cxb
## 4  /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR790/abundances.cxb
## 5  /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR830/abundances.cxb
## 6  /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR787/abundances.cxb
## 7  /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR810/abundances.cxb
## 8  /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR838/abundances.cxb
## 9  /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR754/abundances.cxb
## 10 /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR767/abundances.cxb
## 11 /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR759/abundances.cxb
## 12 /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR775/abundances.cxb
## 13 /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR747/abundances.cxb
## 14 /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR812/abundances.cxb
## 15 /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR751/abundances.cxb
## 16 /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR772/abundances.cxb
## 17 /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR788/abundances.cxb
## 18 /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR721/abundances.cxb
## 19 /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR718/abundances.cxb
## 20 /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR720/abundances.cxb
## 21 /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR792/abundances.cxb
## 22 /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR749/abundances.cxb
## 23 /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR814/abundances.cxb
## 24 /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR757/abundances.cxb
## 25 /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR857/abundances.cxb
## 26 /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR753/abundances.cxb
## 27 /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR750/abundances.cxb
## 28 /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR771/abundances.cxb
## 29 /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR755/abundances.cxb
## 30 /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR811/abundances.cxb
## 31 /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR768/abundances.cxb
## 32 /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR761/abundances.cxb
## 33 /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR815/abundances.cxb
## 34 /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR789/abundances.cxb
## 35 /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR762/abundances.cxb
## 36 /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR774/abundances.cxb
## 37 /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR746/abundances.cxb
## 38 /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR748/abundances.cxb
## 39 /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR716/abundances.cxb
## 40 /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR717/abundances.cxb
## 41 /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR719/abundances.cxb
## 42 /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR756/abundances.cxb
## 43 /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR758/abundances.cxb
## 44 /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR764/abundances.cxb
## 45 /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR808/abundances.cxb
## 46 /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR809/abundances.cxb
## 47 /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR816/abundances.cxb
## 48 /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR829/abundances.cxb
## 49 /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR752/abundances.cxb
## 50 /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR770/abundances.cxb
## 51 /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR839/abundances.cxb
##    sample_name replicate     rep_name total_mass norm_mass internal_scale
## 1        Celrr         0      Celrr_0   37950800  32431200         1.1244
## 2        Celrr         1      Celrr_1   30671700  32431200         0.9352
## 3        Crnde         0      Crnde_0   36520100  32431200         1.1387
## 4        Crnde         1      Crnde_1   27555700  32431200         0.8518
## 5        Crnde         2      Crnde_2   28630200  32431200         0.8943
## 6         Eldr         0       Eldr_0   26894700  32431200         0.8379
## 7         Eldr         1       Eldr_1   41828800  32431200         1.2948
## 8         Eldr         2       Eldr_2   37002600  32431200         1.1552
## 9        Haunt         0      Haunt_0   34277200  32431200         1.0607
## 10       Haunt         1      Haunt_1   30963400  32431200         0.9699
## 11       Haunt         2      Haunt_2   40179300  32431200         1.2613
## 12       Kantr         0      Kantr_0   41486000  32431200         1.2845
## 13       Kantr         1      Kantr_1   33582200  32431200         1.0236
## 14       Kantr         2      Kantr_2   34934000  32431200         1.1067
## 15        Manr         0       Manr_0   33259800  32431200         1.0152
## 16        Manr         1       Manr_1   39063700  32431200         1.2259
## 17        Manr         2       Manr_2   23795600  32431200         0.7322
## 18       Peril         0      Peril_0   22593200  32431200         0.6973
## 19       Peril         1      Peril_1   27635500  32431200         0.8500
## 20       Peril         2      Peril_2   19589600  32431200         0.5942
## 21       Peril         3      Peril_3   29654500  32431200         0.9224
## 22    Trp53cor         0   Trp53cor_0   31241000  32431200         0.9280
## 23    Trp53cor         1   Trp53cor_1   31403400  32431200         0.9840
## 24        Tug1         0       Tug1_0   33398300  32431200         1.0492
## 25        Tug1         1       Tug1_1   39157600  32431200         1.2438
## 26          WT         0         WT_0   39331900  32431200         1.2525
## 27          WT         1         WT_1   36031100  32431200         1.0928
## 28          WT         2         WT_2   38857100  32431200         1.2195
## 29          WT         3         WT_3   41811300  32431200         1.2772
## 30          WT         4         WT_4   38172800  32431200         1.1998
## 31          WT         5         WT_5   28375200  32431200         0.8860
## 32          WT         6         WT_6   31706200  32431200         0.9677
## 33          WT         7         WT_7   29733100  32431200         0.9163
## 34          WT         8         WT_8   27681500  32431200         0.8546
## 35          WT         9         WT_9   32218100  32431200         0.9519
## 36          WT        10        WT_10   32505000  32431200         0.9548
## 37          WT        11        WT_11   27986400  32431200         0.8381
## 38          WT        12        WT_12   32367000  32431200         0.9549
## 39          WT        13        WT_13   26144700  32431200         0.8066
## 40          WT        14        WT_14   25565400  32431200         0.7927
## 41          WT        15        WT_15   22697800  32431200         0.6808
## 42          WT        16        WT_16   38948900  32431200         1.2085
## 43  linc_Brn1b         0 linc_Brn1b_0   41595700  32431200         1.3097
## 44  linc_Brn1b         1 linc_Brn1b_1   30294500  32431200         0.9539
## 45  linc_Brn1b         2 linc_Brn1b_2   31223700  32431200         0.9757
## 46   linc_Cox2         0  linc_Cox2_0   36051200  32431200         1.1030
## 47   linc_Cox2         1  linc_Cox2_1   31829200  32431200         0.9763
## 48   linc_Cox2         2  linc_Cox2_2   30833100  32431200         0.9485
## 49   linc_Enc1         0  linc_Enc1_0   37182200  32431200         1.1543
## 50   linc_Enc1         1  linc_Enc1_1   42845600  32431200         1.3253
## 51   linc_Enc1         2  linc_Enc1_2   33810100  32431200         1.0542
##    external_scale
## 1               1
## 2               1
## 3               1
## 4               1
## 5               1
## 6               1
## 7               1
## 8               1
## 9               1
## 10              1
## 11              1
## 12              1
## 13              1
## 14              1
## 15              1
## 16              1
## 17              1
## 18              1
## 19              1
## 20              1
## 21              1
## 22              1
## 23              1
## 24              1
## 25              1
## 26              1
## 27              1
## 28              1
## 29              1
## 30              1
## 31              1
## 32              1
## 33              1
## 34              1
## 35              1
## 36              1
## 37              1
## 38              1
## 39              1
## 40              1
## 41              1
## 42              1
## 43              1
## 44              1
## 45              1
## 46              1
## 47              1
## 48              1
## 49              1
## 50              1
## 51              1
```


## Quality Control

## Overdispersion fit

```r
dispersionPlot(cuff) + brainmap_theme_opts()
```

![plot of chunk QC_dispersion](figure/QC_dispersion.png) 


### Dendrogram

```r
csDendro(genes(cuff), rep = T) + brainmap_theme_opts()
```

![plot of chunk QC_dendro](figure/QC_dendro.png) 

```
## NULL
```


### Squared Coefficient of Variation
Evaluates cross-replicate variability across expression regime for gene- and isoform-level expression estimates per condition.

```r
fpkmSCVPlot(genes(cuff)) + brainmap_theme_opts()
```

```
## Scale for 'x' is already present. Adding another scale for 'x', which will
## replace the existing scale.
```

```
## geom_smooth: method="auto" and size of largest group is >=1000, so using
## gam with formula: y ~ s(x, bs = "cs"). Use 'method = x' to change the
## smoothing method.
```

![plot of chunk QC_SCV](figure/QC_SCV1.png) 

```r

fpkmSCVPlot(isoforms(cuff)) + brainmap_theme_opts()
```

```
## Scale for 'x' is already present. Adding another scale for 'x', which will
## replace the existing scale.
```

```
## geom_smooth: method="auto" and size of largest group is >=1000, so using
## gam with formula: y ~ s(x, bs = "cs"). Use 'method = x' to change the
## smoothing method.
```

```
## Warning: the matrix is either rank-deficient or indefinite
```

```
## Warning: the matrix is either rank-deficient or indefinite
```

```
## Warning: the matrix is either rank-deficient or indefinite
```

```
## Warning: the matrix is either rank-deficient or indefinite
```

```
## Warning: the matrix is either rank-deficient or indefinite
```

```
## Warning: the matrix is either rank-deficient or indefinite
```

```
## Warning: the matrix is either rank-deficient or indefinite
```

```
## Warning: the matrix is either rank-deficient or indefinite
```

![plot of chunk QC_SCV](figure/QC_SCV2.png) 


### Dimensionality reduction


```r
MDSplot(genes(cuff)) + brainmap_theme_opts()
```

![plot of chunk QC_dimRedux](figure/QC_dimRedux1.png) 

```r

PCAplot(genes(cuff), "PC2", "PC3", rep = TRUE) + brainmap_theme_opts()
```

![plot of chunk QC_dimRedux](figure/QC_dimRedux2.png) 


## Significant gene expression differences (global)

```r
alpha <- 0.1
sigGeneIDs <- getSig(cuff, alpha = alpha)
sigGenes <- getGenes(cuff, sigGeneIDs)
```



## Global Analysis

```r
csHeatmap(sigGenes, rep = T, clustering = "row") + brainmap_theme_opts()
```

```
## Using tracking_id, rep_name as id variables
```

```
## Using as id variables
```

![plot of chunk global_heatmap](figure/global_heatmap1.png) 

```r

csFoldChangeHeatmap(sigGenes, control_condition = "WT", replicate_num = 0, clustering = "row", 
    replicates = TRUE, labRow = FALSE)
```

```
## Using tracking_id, rep_name as id variables
```

```
## Using as id variables
```

![plot of chunk global_heatmap](figure/global_heatmap2.png) 


## Digital Genotyping

```r
KOgeneIDs <- samples(cuff)$sample_name

KOgeneIDs <- c(KOgeneIDs, "LacZ")
KOgeneIDs <- str_replace(KOgeneIDs, "_", "-")
KOgeneIDs <- str_replace(KOgeneIDs, "Trp53cor", "Trp53cor1")

KOGenes <- getGenes(cuff, KOgeneIDs)

```


### LacZ expression

```r
LacZ <- getGene(cuff, "LacZ")

expressionBarplot(LacZ, rep = T) + brainmap_theme_opts()
```

![plot of chunk LacZ](figure/LacZ1.png) 

```r

KOGenes_WT_only <- getGenes(cuff, KOgeneIDs, sampleIdList = "WT")

expressionBarplot(KOGenes_WT_only, rep = T) + brainmap_theme_opts()
```

```
## Scale for 'colour' is already present. Adding another scale for 'colour',
## which will replace the existing scale.
```

```
## ymax not defined: adjusting position using y instead
```

![plot of chunk LacZ](figure/LacZ2.png) 

### Male vs Femail

### Correlation between LacZ expression and WT lncRNA (Stability?)

```r


fpkms <- fpkmMatrix(KOGenes, fullname = T)
```

```
## Using tracking_id, sample_name as id variables
```

```r
fpkms$gene_id <- rownames(fpkms)

fpkms <- melt(fpkms)
```

```
## Using gene_id as id variables
```

```r
fpkms$gene <- str_split_fixed(fpkms$gene_id, "\\|", 2)[, 1]

```


## GSEA

## Guilt-by-association on FC values


## Session Info

```r
sessionInfo()
```

```
## R version 3.0.0 (2013-04-03)
## Platform: x86_64-unknown-linux-gnu (64-bit)
## 
## locale:
##  [1] LC_CTYPE=en_US.UTF-8       LC_NUMERIC=C              
##  [3] LC_TIME=en_US.UTF-8        LC_COLLATE=en_US.UTF-8    
##  [5] LC_MONETARY=en_US.UTF-8    LC_MESSAGES=en_US.UTF-8   
##  [7] LC_PAPER=C                 LC_NAME=C                 
##  [9] LC_ADDRESS=C               LC_TELEPHONE=C            
## [11] LC_MEASUREMENT=en_US.UTF-8 LC_IDENTIFICATION=C       
## 
## attached base packages:
## [1] grid      parallel  stats     graphics  grDevices utils     datasets 
## [8] methods   base     
## 
## other attached packages:
##  [1] mgcv_1.7-22          stringr_0.6.2        cummeRbund_2.7.3    
##  [4] Gviz_1.4.1           rtracklayer_1.20.1   GenomicRanges_1.12.2
##  [7] IRanges_1.18.0       fastcluster_1.1.9    reshape2_1.2.2      
## [10] ggplot2_0.9.3.1      RSQLite_0.11.3       DBI_0.2-6           
## [13] BiocGenerics_0.6.0   knitr_1.2            colorout_1.0-2      
## 
## loaded via a namespace (and not attached):
##  [1] AnnotationDbi_1.22.3   Biobase_2.20.0         biomaRt_2.16.0        
##  [4] Biostrings_2.28.0      biovizBase_1.8.0       bitops_1.0-5          
##  [7] BSgenome_1.28.0        cluster_1.14.4         colorspace_1.2-2      
## [10] dichromat_2.0-0        digest_0.6.3           evaluate_0.4.3        
## [13] formatR_0.7            GenomicFeatures_1.12.1 gtable_0.1.2          
## [16] Hmisc_3.10-1.1         labeling_0.1           lattice_0.20-15       
## [19] MASS_7.3-26            Matrix_1.0-12          munsell_0.4           
## [22] nlme_3.1-109           plyr_1.8               proto_0.3-10          
## [25] RColorBrewer_1.0-5     RCurl_1.95-4.1         Rsamtools_1.12.2      
## [28] scales_0.2.3           stats4_3.0.0           tools_3.0.0           
## [31] XML_3.96-1.1           zlibbioc_1.6.0
```



