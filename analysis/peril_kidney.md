peril_kidney KO vs WT (Embryonic)
======================================


```
##                                                                          test2 
## "/n/rinn_data1/users/agroff/seq/PERIL/data/diffs/cuffdiff_v221_newgtf/Kidney/"
```

```
##                                                                          test2 
## "/n/rinn_data1/users/agroff/seq/PERIL/data/diffs/cuffdiff_v221_newgtf/Kidney/"
```

```
## [1] "character"
```

```
## [1] "character"
```



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

## Replicates

```r
print(xtable(replicates(cuff),type="html"))
```

```
## % latex table generated in R 3.0.2 by xtable 1.7-3 package
## % Wed Jun 11 21:22:14 2014
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
