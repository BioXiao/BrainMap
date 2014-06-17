Mouse Data Overview 1
========================================================




# Adult Samples 
- All have strange density plots: add pseudocount 

Without Pseudocount

![plot of chunk density](figure/overview/density.png) 

With Pseudocount = 0.01 

![plot of chunk density pseudo](figure/overview/density pseudo.png) 


## ADULT WILDTYPES:

### Genotyping
- wt 12 is ko/het (JR817)

![plot of chunk genotyping](figure/overview/genotyping.png) 

### QC 
- wts 9, 10 have smaller fpkm distribution (replicates)

![plot of chunk boxplot replicates](figure/overview/boxplot replicates.png) 


- isoform fpkm distributions: WT smaller on whole, but replicates look fine? 

Boxplot (isoforms)

![plot of chunk boxplot isoforms](figure/overview/boxplot isoforms.png) 

Boxplot (isoforms, replicates)

![plot of chunk boxplot isoforms replicates](figure/overview/boxplot isoforms replicates.png) 


### Other Notes

## ADULT KNOCKOUT STRAINS 

### Celrr


Number of differentially expressed genes:55


### Crnde

- Either wrong genotyping or isoform beyond KO region stabilized by LZ (need to see tracks)

![plot of chunk crnde adult](figure/overview/crnde adult.png) 


- Wrong genotyping CRNDE_2 (JR818)

![plot of chunk crnde lz adult](figure/overview/crnde lz adult1.png) ![plot of chunk crnde lz adult](figure/overview/crnde lz adult2.png) 



Number of differentially expressed genes:80

### Eldr

- Either wrong genotyping or isoform beyond KO region stabilized by LZ (need to see tracks)

![plot of chunk eldr adult](figure/overview/eldr adult.png) 


![plot of chunk eldr lz adult](figure/overview/eldr lz adult1.png) ![plot of chunk eldr lz adult](figure/overview/eldr lz adult2.png) 

Problem child is Eldr_0 (JR733)
Does Eldr_1 look like a het? (JR799)



Number of differentially expressed genes:59

### Haunt



Number of differentially expressed genes:38


### Kantr (Jarid1C)
YAY! They actually cluster!
![plot of chunk Kantr adult](figure/overview/Kantr adult.png) 

```
## 'dendrogram' with 2 branches and 6 members total, at height 0.06617
```



Number of differentially expressed genes:313

### Brn1a
3 isoforms expressed



Number of differentially expressed genes:75


### Brn1b
LacZ expressed slightly higher than lincRNA



Number of differentially expressed genes:198


### linc-Cox2
YAY! They cluster together! (is this a litter thing? sex difference thing?) -- Weird, in the other one they cluster together. Diff w/ having mm10/gtf specified? 


![plot of chunk lincCox2 adult](figure/overview/lincCox2 adult.png) 

```
## 'dendrogram' with 2 branches and 18 members total, at height 0.07544
```

**THIS DENDROGRAM LOOKS DIFFERENT WHEN PRINTED IN R STUDIO!**

Endogenous linc and LZ approx same expression levels 



Number of differentially expressed genes:100


### linc-Enc1a

I think this one MIGHT be a mapping error. Endogenous linc expressed at ~ WT levels (very low), but all cells have lacZ robustly expressed. Potentially hets I guess 

![plot of chunk lincEnc1a](figure/overview/lincEnc1a.png) 

LacZ and genotyping heatmap

![plot of chunk lincEnc1a lz adult](figure/overview/lincEnc1a lz adult1.png) ![plot of chunk lincEnc1a lz adult](figure/overview/lincEnc1a lz adult2.png) 



Number of differentially expressed genes:54


### Manr
Same as with linc-Enc1a, may be extra-knockout region OR perhaps hets or some sort of artifact.. 

![plot of chunk MANR](figure/overview/MANR.png) 

LacZ and genotyping heatmap

![plot of chunk MANR lz adult](figure/overview/MANR lz adult1.png) ![plot of chunk MANR lz adult](figure/overview/MANR lz adult2.png) 



Number of differentially expressed genes:61


### Peril

Fairly certai this is extra-knockout region. Need to make tracks! 

![plot of chunk Peril](figure/overview/Peril.png) 

LacZ and genotyping heatmap

![plot of chunk Peril lz adult](figure/overview/Peril lz adult1.png) ![plot of chunk Peril lz adult](figure/overview/Peril lz adult2.png) 



Number of differentially expressed genes:223



### Trp53cor1 (linc-p21)
Everything very lowly expressed 



Number of differentially expressed genes:71


### Tug1

LacZ expressed far lower than Tug1 lincRNA 
Why is one of the tug1 replicates missing from plots/dendrogram??



Number of differentially expressed genes:66


# Embryonic Samples

- wt13 

## WTS:

### Genotyping

### QC 

### Other Notes

## KO Strains

### Celrr
- Celrr: celrr 0 is not KO (seems WT) JR769

![plot of chunk celrr embryonic](figure/overview/celrr embryonic.png) 

LacZ and genotyping heatmap

![plot of chunk Celrr lz embryonic](figure/overview/Celrr lz embryonic1.png) ![plot of chunk Celrr lz embryonic](figure/overview/Celrr lz embryonic2.png) 




Number of differentially expressed genes:207

Cell compartment: lots of cytoplasmic stuff... is this linc cytoplasmic?? 

### Crnde
- actually cluster together!

![plot of chunk Crnde embryonic dendro](figure/overview/Crnde embryonic dendro.png) 

```
## 'dendrogram' with 2 branches and 18 members total, at height 0.08401
```


Endogenous expression (isoforms)

![plot of chunk Crnde embryonic](figure/overview/Crnde embryonic.png) 

LacZ and genotyping heatmap
Crnde_2 may be het? Need to check tracks! 

![plot of chunk Crnde lz embryonic](figure/overview/Crnde lz embryonic1.png) ![plot of chunk Crnde lz embryonic](figure/overview/Crnde lz embryonic2.png) 



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

![plot of chunk Kantr embryonic dendro](figure/overview/Kantr embryonic dendro.png) 

```
## 'dendrogram' with 2 branches and 6 members total, at height 0.0764
```

Endogenous Kantr expression: 

![plot of chunk Kantr embryonic](figure/overview/Kantr embryonic.png) 

LacZ and genotyping heatmap

![plot of chunk Kantr lz embryonic](figure/overview/Kantr lz embryonic1.png) ![plot of chunk Kantr lz embryonic](figure/overview/Kantr lz embryonic2.png) 



Number of differentially expressed genes:785

### Brn1a -- NOT DONE YET 


### Brn1b 
- digital genotyping looks good 


Number of differentially expressed genes:143







![plot of chunk GO figures](figure/overview/GO figures1.png) ![plot of chunk GO figures](figure/overview/GO figures2.png) ![plot of chunk GO figures](figure/overview/GO figures3.png) ![plot of chunk GO figures](figure/overview/GO figures4.png) ![plot of chunk GO figures](figure/overview/GO figures5.png) 

### linc-Cox2

Digital genotyping looks good! 

GO terms ribosome/translation related... 

Cluster together! Yay! 

![plot of chunk lincCox2 embryonic dendro](figure/overview/lincCox2 embryonic dendro.png) 

```
## 'dendrogram' with 2 branches and 18 members total, at height 0.08399
```




Number of differentially expressed genes:97


### linc-Enc1a

![plot of chunk lincEnc1a embryonic](figure/overview/lincEnc1a embryonic.png) 

LacZ and genotyping heatmap

![plot of chunk lincEnc1a lz embryonic](figure/overview/lincEnc1a lz embryonic1.png) ![plot of chunk lincEnc1a lz embryonic](figure/overview/lincEnc1a lz embryonic2.png) 




Number of differentially expressed genes:17


### Manr

- GO terms lots of ion/lipid/protein binding; kegg neuroactive ligand-receptor interaction; and reactome has interesting categories but graph is messed up. 

- Hets? Need to see track... 

![plot of chunk Manr embryonic](figure/overview/Manr embryonic.png) 

LacZ and genotyping heatmap

![plot of chunk Manr lz embryonic](figure/overview/Manr lz embryonic1.png) ![plot of chunk Manr lz embryonic](figure/overview/Manr lz embryonic2.png) 




Number of differentially expressed genes:100


### Peril

Pretty sure this is an exon-stabilized-by-lacZ issue, but need to see tracks!

![plot of chunk Peril embryonic](figure/overview/Peril embryonic.png) 

LacZ and genotyping heatmap

![plot of chunk Peril lz embryonic](figure/overview/Peril lz embryonic1.png) ![plot of chunk Peril lz embryonic](figure/overview/Peril lz embryonic2.png) 




Number of differentially expressed genes:291


### Trp53cor1 (linc-p21)

Trp53cor1_1 is wildtype (JR813)

![plot of chunk Trp53 embryonic](figure/overview/Trp53 embryonic.png) 

LacZ and genotyping heatmap

![plot of chunk Trp53 lz embryonic](figure/overview/Trp53 lz embryonic1.png) ![plot of chunk Trp53 lz embryonic](figure/overview/Trp53 lz embryonic2.png) 




Number of differentially expressed genes:22

### Tug1
Digital genotyping looks good. 
Tug1 far more highly expressed than lacZ. 

![plot of chunk tug1 embryonic](figure/overview/tug1 embryonic.png) 

LacZ and genotyping heatmap

![plot of chunk tug1 lz embryonic](figure/overview/tug1 lz embryonic.png) 




Number of differentially expressed genes:19


# SUMMARY

**list of samples to re-check or exclude**

GENOTYPING:
- Adult:
  - WT 12 (JR817)
  - CRNDE_2 (JR818)
  - Eldr_0 (JR733) 
  - Does Eldr_1 look like a het? (JR799)
- Embryonic:
  - WT 13 
  - celrr 0 is not KO (seems WT) JR769
  - check crnde? (esp #2)
  - check Manr(#2?)
  - linc-P21_1 is wt not ko 

enc1a problem child -- need to see tracks

QC: adult wt 9, 10

Range of number of differentially expressed genes:

<!-- html table generated in R 3.0.2 by xtable 1.7-3 package -->
<!-- Mon Jun 16 22:22:35 2014 -->
<TABLE border=1>
<TR> <TH>  </TH> <TH>       V1 </TH>  </TR>
  <TR> <TD align="right"> 1 </TD> <TD> Min.   : 17   </TD> </TR>
  <TR> <TD align="right"> 2 </TD> <TD> 1st Qu.: 55   </TD> </TR>
  <TR> <TD align="right"> 3 </TD> <TD> Median : 80   </TD> </TR>
  <TR> <TD align="right"> 4 </TD> <TD> Mean   :134   </TD> </TR>
  <TR> <TD align="right"> 5 </TD> <TD> 3rd Qu.:144   </TD> </TR>
  <TR> <TD align="right"> 6 </TD> <TD> Max.   :785   </TD> </TR>
   </TABLE>


Number of differentially expressed genes, by condition: 

![plot of chunk diff summary](figure/overview/diff summary1.png) ![plot of chunk diff summary](figure/overview/diff summary2.png) 

**Interesting or promising strains!**
- Kantr!


# TO DO
- tracks!
- overlap!
- finish tidying script + reprint!
- fix gsea printing 
