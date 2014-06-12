peril_wholebrain KO vs WT (Embryonic)
======================================

# questions
- overdispersion
- get tables to work
- counts






# Intialize


# Design Overview

This file shows the wt-v-ko comparison for peril_wholebrain. 

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
## % Thu Jun 12 11:34:20 2014
## \begin{table}[ht]
## \centering
## \begin{tabular}{rllrlrrrr}
##   \hline
##  & file & sample\_name & replicate & rep\_name & total\_mass & norm\_mass & internal\_scale & external\_scale \\ 
##   \hline
## 1 & /n/rinn\_data1/users/agroff/seq/PERIL/data/bams/Sample\_JR716\_Peril\_L43\_E14-5\_whole\_brain\_wtM1\_CAGATC/accepted\_hits.bam & wt &   0 & wt\_0 & 28383700.00 & 25891500.00 & 1.09 & 1.00 \\ 
##   2 & /n/rinn\_data1/users/agroff/seq/PERIL/data/bams/Sample\_JR717\_Peril\_L43\_E14-5\_whole\_brain\_wtF3\_ACTTGA/accepted\_hits.bam & wt &   1 & wt\_1 & 27709200.00 & 25891500.00 & 1.08 & 1.00 \\ 
##   3 & /n/rinn\_data1/users/agroff/seq/PERIL/data/bams/Sample\_JR719\_Peril\_L43\_E14-5\_whole\_brain\_wtM8\_TAGCTT/accepted\_hits.bam & wt &   2 & wt\_2 & 24704700.00 & 25891500.00 & 0.94 & 1.00 \\ 
##   4 & /n/rinn\_data1/users/agroff/seq/PERIL/data/bams/Sample\_JR718\_Peril\_L43\_E14-5\_whole\_brain\_koM4\_GATCAG/accepted\_hits.bam & ko &   0 & ko\_0 & 30022300.00 & 25891500.00 & 1.17 & 1.00 \\ 
##   5 & /n/rinn\_data1/users/agroff/seq/PERIL/data/bams/Sample\_JR720\_Peril\_L43\_E14-5\_whole\_brain\_koF9\_GGCTAC/accepted\_hits.bam & ko &   1 & ko\_1 & 21295400.00 & 25891500.00 & 0.82 & 1.00 \\ 
##   6 & /n/rinn\_data1/users/agroff/seq/PERIL/data/bams/Sample\_JR721\_Peril\_L43\_E14-5\_whole\_brain\_koF10\_CTTGTA/accepted\_hits.bam & ko &   2 & ko\_2 & 24554000.00 & 25891500.00 & 0.95 & 1.00 \\ 
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

![plot of chunk dispersion](figure/peril_wholebrain/dispersion1.png) 

```r
csDendro(genes(cuff),replicates=TRUE)
```

![plot of chunk dispersion](figure/peril_wholebrain/dispersion2.png) 

```
## 'dendrogram' with 2 branches and 6 members total, at height 0.06655
```

```r
new.env()
```

```
## <environment: 0x1791be30>
```

```r
rm(cuff)
```
