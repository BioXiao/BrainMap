peril_kidney KO vs WT (Embryonic)
======================================

# questions
- overdispersion
- get tables to work
- counts






# Intialize


# Design Overview

This file shows the wt-v-ko comparison for peril_kidney. 

Samples used are:

```r
samples
```

```
##                                                                           9
## c......n....rinn_data1....users....agroff....seq....PERIL....data...   bams
## c......n....rinn_data1....users....agroff....seq....PERIL....data....1 bams
## c......n....rinn_data1....users....agroff....seq....PERIL....data....2 bams
## c......n....rinn_data1....users....agroff....seq....PERIL....data....3 bams
## c......n....rinn_data1....users....agroff....seq....PERIL....data....4 bams
## c......n....rinn_data1....users....agroff....seq....PERIL....data....5 bams
```


Cuff overview:

```r
cuff
```

```
## CuffSet instance with:
## 	 2 samples
## 	 31926 genes
## 	 77340 isoforms
## 	 45508 TSS
## 	 0 CDS
## 	 31926 promoters
## 	 45508 splicing
## 	 0 relCDS
```

## Replicates (MAKE TABLES PRETTY >:| )

```r
print(xtable(replicates(cuff),type="html"))
```

```
## % latex table generated in R 3.0.2 by xtable 1.7-3 package
## % Thu Jun 12 11:12:23 2014
## \begin{table}[ht]
## \centering
## \begin{tabular}{rllrlrrrr}
##   \hline
##  & file & sample\_name & replicate & rep\_name & total\_mass & norm\_mass & internal\_scale & external\_scale \\ 
##   \hline
## 1 & /n/rinn\_data1/users/agroff/seq/PERIL/data/bams/Sample\_JR722\_Peril\_L43\_E14-5\_kidney\_both\_lobeswtM1\_ACTGAT/accepted\_hits.bam & wt &   0 & wt\_0 & 32567800.00 & 28714000.00 & 1.13 & 1.00 \\ 
##   2 & /n/rinn\_data1/users/agroff/seq/PERIL/data/bams/Sample\_JR723\_Peril\_L43\_E14-5\_kidney\_both\_lobes\_wtf3\_AGTCAA/accepted\_hits.bam & wt &   1 & wt\_1 & 24846400.00 & 28714000.00 & 0.88 & 1.00 \\ 
##   3 & /n/rinn\_data1/users/agroff/seq/PERIL/data/bams/Sample\_JR725\_Peril\_L43\_E14-5\_kidney\_both\_lobes\_wtm8\_ATGTCA/accepted\_hits.bam & wt &   2 & wt\_2 & 18152700.00 & 28714000.00 & 0.61 & 1.00 \\ 
##   4 & /n/rinn\_data1/users/agroff/seq/PERIL/data/bams/Sample\_JR724\_Peril\_L43\_E14-5\_kidney\_both\_lobes\_kom7\_AGTTCC/accepted\_hits.bam & ko &   0 & ko\_0 & 21233900.00 & 28714000.00 & 0.75 & 1.00 \\ 
##   5 & /n/rinn\_data1/users/agroff/seq/PERIL/data/bams/Sample\_JR726\_Peril\_L43\_E14-5\_kidney\_both\_lobes\_kof9\_CCGTCC/accepted\_hits.bam & ko &   1 & ko\_1 & 41738700.00 & 28714000.00 & 1.43 & 1.00 \\ 
##   6 & /n/rinn\_data1/users/agroff/seq/PERIL/data/bams/Sample\_JR727\_Peril\_L43\_E14-5\_kidney\_both\_lobes\_kof10\_ATTCCT/accepted\_hits.bam & ko &   2 & ko\_2 & 43552300.00 & 28714000.00 & 1.52 & 1.00 \\ 
##    \hline
## \end{tabular}
## \end{table}
```

# QC

## Dispersion

This shows count (WHAT IS COUNT? fragment counts? per gene?) vs dispersion (of those counts), or the spread in measurements for a particular gene across replicates. 

from cummerbund manual: Overdispersion is a common problem in RNA-Seq data. As of cufflinks v2.0 mean counts, variance, and dispersion are all emitted, allowing you to visualize the estimated overdispersion for each sample as a quality control measure. - See more at: http://compbio.mit.edu/cummeRbund/manual_2_0.html#sthash.9YRYxwRV.dpuf



```r
dispersionPlot(genes(cuff))
```

![plot of chunk dispersion](figure/dispersion1.png) 

```r
csDendro(genes(cuff),replicates=TRUE)
```

![plot of chunk dispersion](figure/dispersion2.png) 

```
## 'dendrogram' with 2 branches and 6 members total, at height 0.07842
```

```r
new.env()
```

```
## <environment: 0x179134a8>
```

```r
rm(cuff)
```
