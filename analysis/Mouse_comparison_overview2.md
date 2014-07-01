Mouse Data Overview 2
========================================================




# Adult Samples 
- All have strange density plots: add pseudocount 

# Adult Wildtypes Look Fine Now 

- isoform fpkm distributions: WT smaller on whole, but replicates look fine 

# ADULT KNOCKOUT STRAINS 

### Celrr


Number of differentially expressed genes:52

### Crnde

- Either wrong genotyping or isoform beyond KO region stabilized by LZ (need to see tracks)

![plot of chunk crnde adult](figure/overview/crnde adult.png) 




Number of differentially expressed genes:45

### Eldr

- Either wrong genotyping or isoform beyond KO region stabilized by LZ (need to see tracks)

![plot of chunk eldr adult](figure/overview/eldr adult.png) 


![plot of chunk eldr lz adult](figure/overview/eldr lz adult1.png) ![plot of chunk eldr lz adult](figure/overview/eldr lz adult2.png) 

Problem child is Eldr_0 (JR733)
Does Eldr_1 look like a het? (JR799)



Number of differentially expressed genes:29

### Haunt



Number of differentially expressed genes:37


### Kantr (Jarid1C)
YAY! They actually cluster!
![plot of chunk Kantr adult](figure/overview/Kantr adult.png) 

```
## 'dendrogram' with 2 branches and 6 members total, at height 0.06618
```



Number of differentially expressed genes:313

### Brn1a
3 isoforms expressed



Number of differentially expressed genes:70


### Brn1b
LacZ expressed slightly higher than lincRNA



Number of differentially expressed genes:197


### linc-Cox2
YAY! They cluster together! (is this a litter thing? sex difference thing?) -- Weird, in the other one they cluster together. Diff w/ having mm10/gtf specified? 


![plot of chunk lincCox2 adult](figure/overview/lincCox2 adult.png) 

```
## 'dendrogram' with 2 branches and 17 members total, at height 0.07546
```

Endogenous linc and LZ approx same expression levels 



Number of differentially expressed genes:90


### linc-Enc1a

I think this one MIGHT be a mapping error. Endogenous linc expressed at ~ WT levels (very low), but all cells have lacZ robustly expressed. Potentially hets I guess 

![plot of chunk lincEnc1a](figure/overview/lincEnc1a.png) 

LacZ and genotyping heatmap

![plot of chunk lincEnc1a lz adult](figure/overview/lincEnc1a lz adult1.png) ![plot of chunk lincEnc1a lz adult](figure/overview/lincEnc1a lz adult2.png) 



Number of differentially expressed genes:49


### Manr
Same as with linc-Enc1a, may be extra-knockout region OR perhaps hets or some sort of artifact.. 

![plot of chunk MANR](figure/overview/MANR.png) 

LacZ and genotyping heatmap

![plot of chunk MANR lz adult](figure/overview/MANR lz adult1.png) ![plot of chunk MANR lz adult](figure/overview/MANR lz adult2.png) 



Number of differentially expressed genes:50


### Peril

Fairly certai this is extra-knockout region. Need to make tracks! 

![plot of chunk Peril](figure/overview/Peril.png) 

LacZ and genotyping heatmap

![plot of chunk Peril lz adult](figure/overview/Peril lz adult1.png) ![plot of chunk Peril lz adult](figure/overview/Peril lz adult2.png) 



Number of differentially expressed genes:217



### Trp53cor1 (linc-p21)
Everything very lowly expressed 



Number of differentially expressed genes:68


### Tug1

LacZ expressed far lower than Tug1 lincRNA 
Why is one of the tug1 replicates missing from plots/dendrogram??



Number of differentially expressed genes:65


# Embryonic Samples

## KO Strains

### Celrr


![plot of chunk celrr embryonic](figure/overview/celrr embryonic.png) 




Number of differentially expressed genes:37

Cell compartment: lots of cytoplasmic stuff... is this linc cytoplasmic?? 

### Crnde
- actually cluster together!

![plot of chunk Crnde embryonic dendro](figure/overview/Crnde embryonic dendro.png) 

```
## 'dendrogram' with 2 branches and 17 members total, at height 0.08401
```


Endogenous expression (isoforms)

![plot of chunk Crnde embryonic](figure/overview/Crnde embryonic.png) 

LacZ and genotyping heatmap



Number of differentially expressed genes:83

-ECM/collagen... 

### Eldr

genotyping looks good!

Kegg: huntingtons/alzheimers/cancer





Number of differentially expressed genes:144


### Haunt
digital genotyping looks good 





Number of differentially expressed genes:35


### Kantr
Yay! Cluster together! 

![plot of chunk Kantr embryonic dendro](figure/overview/Kantr embryonic dendro.png) 

```
## 'dendrogram' with 2 branches and 6 members total, at height 0.07638
```




Number of differentially expressed genes:785

### Brn1a


### Brn1b 
- digital genotyping looks good 


Number of differentially expressed genes:131








![plot of chunk GO figures](figure/overview/GO figures1.png) ![plot of chunk GO figures](figure/overview/GO figures2.png) ![plot of chunk GO figures](figure/overview/GO figures3.png) ![plot of chunk GO figures](figure/overview/GO figures4.png) 

```
## Error: 'x' and 'units' must have length > 0
```

### linc-Cox2

Digital genotyping looks good! 

GO terms ribosome/translation related... 

Cluster together! Yay! 

![plot of chunk lincCox2 embryonic dendro](figure/overview/lincCox2 embryonic dendro.png) 

```
## 'dendrogram' with 2 branches and 17 members total, at height 0.08399
```




Number of differentially expressed genes:96


### linc-Enc1a

![plot of chunk lincEnc1a embryonic](figure/overview/lincEnc1a embryonic.png) 




Number of differentially expressed genes:18


### Manr

- GO terms lots of ion/lipid/protein binding; kegg neuroactive ligand-receptor interaction; and reactome has interesting categories but graph is messed up. 

- Hets? Need to see track... 

![plot of chunk Manr embryonic](figure/overview/Manr embryonic.png) 




Number of differentially expressed genes:100

### Peril

Pretty sure this is an exon-stabilized-by-lacZ issue, but need to see tracks!

![plot of chunk Peril embryonic](figure/overview/Peril embryonic.png) 




Number of differentially expressed genes:273


### Trp53cor1 (linc-p21)

Trp53cor1_1 is wildtype (JR813)

![plot of chunk Trp53 embryonic](figure/overview/Trp53 embryonic.png) 




Number of differentially expressed genes:0

### Tug1
Digital genotyping looks good. 
Tug1 far more highly expressed than lacZ. 

![plot of chunk tug1 embryonic](figure/overview/tug1 embryonic.png) 




Number of differentially expressed genes:20


# SUMMARY

Range of number of differentially expressed genes:

<!-- html table generated in R 3.0.2 by xtable 1.7-3 package -->
<!-- Sun Jun 22 15:03:04 2014 -->
<TABLE border=1>
<TR> <TH>  </TH> <TH>       V1 </TH>  </TR>
  <TR> <TD align="right"> 1 </TD> <TD> Min.   :  0   </TD> </TR>
  <TR> <TD align="right"> 2 </TD> <TD> 1st Qu.: 37   </TD> </TR>
  <TR> <TD align="right"> 3 </TD> <TD> Median : 68   </TD> </TR>
  <TR> <TD align="right"> 4 </TD> <TD> Mean   :120   </TD> </TR>
  <TR> <TD align="right"> 5 </TD> <TD> 3rd Qu.:131   </TD> </TR>
  <TR> <TD align="right"> 6 </TD> <TD> Max.   :785   </TD> </TR>
   </TABLE>


Number of differentially expressed genes, by condition: 

![plot of chunk diff summary](figure/overview/diff summary1.png) ![plot of chunk diff summary](figure/overview/diff summary2.png) 

**Interesting or promising strains!**

# TO DO
- tracks!
- fix gsea printing 
