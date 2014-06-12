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
print(xtable(samples),type="html")
```

<!-- html table generated in R 3.0.2 by xtable 1.7-3 package -->
<!-- Thu Jun 12 13:11:50 2014 -->
<TABLE border=1>
<TR> <TH>  </TH> <TH> 9 </TH>  </TR>
  <TR> <TD align="right"> c......n....rinn_data1....users....agroff....seq....PERIL....data... </TD> <TD> bams </TD> </TR>
  <TR> <TD align="right"> c......n....rinn_data1....users....agroff....seq....PERIL....data....1 </TD> <TD> bams </TD> </TR>
  <TR> <TD align="right"> c......n....rinn_data1....users....agroff....seq....PERIL....data....2 </TD> <TD> bams </TD> </TR>
  <TR> <TD align="right"> c......n....rinn_data1....users....agroff....seq....PERIL....data....3 </TD> <TD> bams </TD> </TR>
  <TR> <TD align="right"> c......n....rinn_data1....users....agroff....seq....PERIL....data....4 </TD> <TD> bams </TD> </TR>
  <TR> <TD align="right"> c......n....rinn_data1....users....agroff....seq....PERIL....data....5 </TD> <TD> bams </TD> </TR>
   </TABLE>


Cuff overview:

```r
print(xtable(cuff),type="html")
```

```
## Error: no applicable method for 'xtable' applied to an object of class
## "CuffSet"
```

## Replicates (MAKE TABLES PRETTY >:| )

```r
print(xtable(replicates(cuff)),type="html")
```

<!-- html table generated in R 3.0.2 by xtable 1.7-3 package -->
<!-- Thu Jun 12 13:11:50 2014 -->
<TABLE border=1>
<TR> <TH>  </TH> <TH> file </TH> <TH> sample_name </TH> <TH> replicate </TH> <TH> rep_name </TH> <TH> total_mass </TH> <TH> norm_mass </TH> <TH> internal_scale </TH> <TH> external_scale </TH>  </TR>
  <TR> <TD align="right"> 1 </TD> <TD> /n/rinn_data1/users/agroff/seq/PERIL/data/bams/Sample_JR716_Peril_L43_E14-5_whole_brain_wtM1_CAGATC/accepted_hits.bam </TD> <TD> wt </TD> <TD align="right">   0 </TD> <TD> wt_0 </TD> <TD align="right"> 28383700.00 </TD> <TD align="right"> 25891500.00 </TD> <TD align="right"> 1.09 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 2 </TD> <TD> /n/rinn_data1/users/agroff/seq/PERIL/data/bams/Sample_JR717_Peril_L43_E14-5_whole_brain_wtF3_ACTTGA/accepted_hits.bam </TD> <TD> wt </TD> <TD align="right">   1 </TD> <TD> wt_1 </TD> <TD align="right"> 27709200.00 </TD> <TD align="right"> 25891500.00 </TD> <TD align="right"> 1.08 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 3 </TD> <TD> /n/rinn_data1/users/agroff/seq/PERIL/data/bams/Sample_JR719_Peril_L43_E14-5_whole_brain_wtM8_TAGCTT/accepted_hits.bam </TD> <TD> wt </TD> <TD align="right">   2 </TD> <TD> wt_2 </TD> <TD align="right"> 24704700.00 </TD> <TD align="right"> 25891500.00 </TD> <TD align="right"> 0.94 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 4 </TD> <TD> /n/rinn_data1/users/agroff/seq/PERIL/data/bams/Sample_JR718_Peril_L43_E14-5_whole_brain_koM4_GATCAG/accepted_hits.bam </TD> <TD> ko </TD> <TD align="right">   0 </TD> <TD> ko_0 </TD> <TD align="right"> 30022300.00 </TD> <TD align="right"> 25891500.00 </TD> <TD align="right"> 1.17 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 5 </TD> <TD> /n/rinn_data1/users/agroff/seq/PERIL/data/bams/Sample_JR720_Peril_L43_E14-5_whole_brain_koF9_GGCTAC/accepted_hits.bam </TD> <TD> ko </TD> <TD align="right">   1 </TD> <TD> ko_1 </TD> <TD align="right"> 21295400.00 </TD> <TD align="right"> 25891500.00 </TD> <TD align="right"> 0.82 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 6 </TD> <TD> /n/rinn_data1/users/agroff/seq/PERIL/data/bams/Sample_JR721_Peril_L43_E14-5_whole_brain_koF10_CTTGTA/accepted_hits.bam </TD> <TD> ko </TD> <TD align="right">   2 </TD> <TD> ko_2 </TD> <TD align="right"> 24554000.00 </TD> <TD align="right"> 25891500.00 </TD> <TD align="right"> 0.95 </TD> <TD align="right"> 1.00 </TD> </TR>
   </TABLE>

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
