

Peril KO vs WT (Embryonic)
======================================









This file shows the wt-v-ko comparison for Peril. 

Cuff overview:


```
## CuffSet instance with:
## 	 2 samples
## 	 26754 genes
## 	 77524 isoforms
## 	 0 TSS
## 	 23066 CDS
## 	 0 promoters
## 	 0 splicing
## 	 19954 relCDS
```

# QC

## Dispersion

Dispersion plot for genes in cuff:
(Overdispersion can lead to innacurate quants)

![plot of chunk dispersion](figure/dispersion.png) 

## Cross-replicate variability (fpkmSCVplot)
Differences in CV 2 can result in lower numbers of differentially expressed genes due to a higher degree of variability between replicate fpkm estimates.

Genes:

![plot of chunk CV_genes](figure/CV_genes.png) 

Isoforms: 

![plot of chunk cv_iso](figure/cv_iso.png) 


## MvA plot

![plot of chunk MvA](figure/MvA.png) 
   
### MvA plot counts

![plot of chunk MvA_counts](figure/MvA_counts.png) 

## Scatterplot matrix

![plot of chunk scatterplot](figure/scatterplot.png) 

## Distributions

### Boxplots

Boxplot (genes)

![plot of chunk boxplot_genes](figure/boxplot_genes.png) 

Boxplot (genes, replicates)

![plot of chunk boxplot_genes_replicates](figure/boxplot_genes_replicates.png) 

Boxplot (isoforms)

![plot of chunk boxplot_isoforms](figure/boxplot_isoforms.png) 

Boxplot (isoforms, replicates)

![plot of chunk boxplot_isoforms_replicates](figure/boxplot_isoforms_replicates.png) 

### Density

Density (genes)

![plot of chunk density](figure/density.png) 

Density (genes, replicates)

![plot of chunk density_w_replicates](figure/density_w_replicates.png) 


## Clustering

### Replicate Clusters

![plot of chunk replicate_clusters](figure/replicate_clusters.png) 

```
## NULL
```

### PCA (genes)

![plot of chunk PCA](figure/PCA.png) 

### MDS (genes)

![plot of chunk MDS](figure/MDS.png) 





# KO assessment

## Endogenous lncRNA expression

![plot of chunk Enodenous_lncRNA_tables](figure/Enodenous_lncRNA_tables.png) 

Endogenous expression of Peril isoforms:

![plot of chunk endogenous_iso](figure/endogenous_iso.png) 

Barplot of gene expression:

![plot of chunk endogenous_barplot](figure/endogenous_barplot.png) 

Barplot of isoform expression:

![plot of chunk endogenous_iso_barplot](figure/endogenous_iso_barplot.png) 


## LacZ expression

![plot of chunk LacZ_expression](figure/LacZ_expression1.png) ![plot of chunk LacZ_expression](figure/LacZ_expression2.png) 


## Digital Genotyping (LacZ vs Endogenous lncRNA and Sex)

Eif2s3y is a y-expressed gene, Xist is an x-expressed gene 
Expression plot (endogenous linc, lacZ, Y-expressed gene):

![plot of chunk Digital_Genotyping](figure/Digital_Genotyping.png) 

Expression heatmap:

![plot of chunk digital_geno_heatmap](figure/digital_geno_heatmap.png) 



### Track visualization 

![plot of chunk track_vis](figure/track_vis.png) 

# Differential Analysis

## Differential Genes 



There are 254 significantly differentially expressed genes. They are:

<!-- html table generated in R 3.0.2 by xtable 1.7-3 package -->
<!-- Tue Jul 15 15:15:56 2014 -->
<TABLE border=1>
<TR> <TH>  </TH> <TH> geneAnnot$gene_short_name </TH>  </TR>
  <TR> <TD align="right"> 1 </TD> <TD> Ccnd2 </TD> </TR>
  <TR> <TD align="right"> 2 </TD> <TD> Itga5 </TD> </TR>
  <TR> <TD align="right"> 3 </TD> <TD> Gabra2 </TD> </TR>
  <TR> <TD align="right"> 4 </TD> <TD> Col18a1 </TD> </TR>
  <TR> <TD align="right"> 5 </TD> <TD> Col1a1 </TD> </TR>
  <TR> <TD align="right"> 6 </TD> <TD> Phyhip </TD> </TR>
  <TR> <TD align="right"> 7 </TD> <TD> Ddr1 </TD> </TR>
  <TR> <TD align="right"> 8 </TD> <TD> Aqp1 </TD> </TR>
  <TR> <TD align="right"> 9 </TD> <TD> Pax3 </TD> </TR>
  <TR> <TD align="right"> 10 </TD> <TD> Nes </TD> </TR>
  <TR> <TD align="right"> 11 </TD> <TD> Nid1 </TD> </TR>
  <TR> <TD align="right"> 12 </TD> <TD> Hmox1 </TD> </TR>
  <TR> <TD align="right"> 13 </TD> <TD> Osgep </TD> </TR>
  <TR> <TD align="right"> 14 </TD> <TD> Rplp1 </TD> </TR>
  <TR> <TD align="right"> 15 </TD> <TD> Wnt3a </TD> </TR>
  <TR> <TD align="right"> 16 </TD> <TD> Odc1 </TD> </TR>
  <TR> <TD align="right"> 17 </TD> <TD> Aldh1a2 </TD> </TR>
  <TR> <TD align="right"> 18 </TD> <TD> Dennd6b </TD> </TR>
  <TR> <TD align="right"> 19 </TD> <TD> Celsr1 </TD> </TR>
  <TR> <TD align="right"> 20 </TD> <TD> Sulf1 </TD> </TR>
  <TR> <TD align="right"> 21 </TD> <TD> Anxa6 </TD> </TR>
  <TR> <TD align="right"> 22 </TD> <TD> Slc16a10 </TD> </TR>
  <TR> <TD align="right"> 23 </TD> <TD> Lrriq1 </TD> </TR>
  <TR> <TD align="right"> 24 </TD> <TD> Lama2 </TD> </TR>
  <TR> <TD align="right"> 25 </TD> <TD> Ndufa12 </TD> </TR>
  <TR> <TD align="right"> 26 </TD> <TD> Rfx4 </TD> </TR>
  <TR> <TD align="right"> 27 </TD> <TD> Col6a2 </TD> </TR>
  <TR> <TD align="right"> 28 </TD> <TD> Aebp1 </TD> </TR>
  <TR> <TD align="right"> 29 </TD> <TD> Pomc </TD> </TR>
  <TR> <TD align="right"> 30 </TD> <TD> Galk1 </TD> </TR>
  <TR> <TD align="right"> 31 </TD> <TD> Nxn </TD> </TR>
  <TR> <TD align="right"> 32 </TD> <TD> Ntn1 </TD> </TR>
  <TR> <TD align="right"> 33 </TD> <TD> Amn </TD> </TR>
  <TR> <TD align="right"> 34 </TD> <TD> Nid2 </TD> </TR>
  <TR> <TD align="right"> 35 </TD> <TD> Gdf10 </TD> </TR>
  <TR> <TD align="right"> 36 </TD> <TD> Esd </TD> </TR>
  <TR> <TD align="right"> 37 </TD> <TD> Tnfrsf10b </TD> </TR>
  <TR> <TD align="right"> 38 </TD> <TD> Psmb5 </TD> </TR>
  <TR> <TD align="right"> 39 </TD> <TD> Npr3 </TD> </TR>
  <TR> <TD align="right"> 40 </TD> <TD> Col14a1 </TD> </TR>
  <TR> <TD align="right"> 41 </TD> <TD> Wnt7b </TD> </TR>
  <TR> <TD align="right"> 42 </TD> <TD> Myh9 </TD> </TR>
  <TR> <TD align="right"> 43 </TD> <TD> Plec </TD> </TR>
  <TR> <TD align="right"> 44 </TD> <TD> Arhgap31 </TD> </TR>
  <TR> <TD align="right"> 45 </TD> <TD> Clic6 </TD> </TR>
  <TR> <TD align="right"> 46 </TD> <TD> Wnt1 </TD> </TR>
  <TR> <TD align="right"> 47 </TD> <TD> Krt18 </TD> </TR>
  <TR> <TD align="right"> 48 </TD> <TD> Dlx2 </TD> </TR>
  <TR> <TD align="right"> 49 </TD> <TD> Igf2r </TD> </TR>
  <TR> <TD align="right"> 50 </TD> <TD> Gfra3 </TD> </TR>
  <TR> <TD align="right"> 51 </TD> <TD> H2-M5 </TD> </TR>
  <TR> <TD align="right"> 52 </TD> <TD> Pou4f3 </TD> </TR>
  <TR> <TD align="right"> 53 </TD> <TD> Lox </TD> </TR>
  <TR> <TD align="right"> 54 </TD> <TD> Megf10 </TD> </TR>
  <TR> <TD align="right"> 55 </TD> <TD> Fbn2 </TD> </TR>
  <TR> <TD align="right"> 56 </TD> <TD> Pdgfrb </TD> </TR>
  <TR> <TD align="right"> 57 </TD> <TD> Gldc </TD> </TR>
  <TR> <TD align="right"> 58 </TD> <TD> Cpt1a </TD> </TR>
  <TR> <TD align="right"> 59 </TD> <TD> Slc18a2 </TD> </TR>
  <TR> <TD align="right"> 60 </TD> <TD> Rps24 </TD> </TR>
  <TR> <TD align="right"> 61 </TD> <TD> Podxl </TD> </TR>
  <TR> <TD align="right"> 62 </TD> <TD> Col5a2 </TD> </TR>
  <TR> <TD align="right"> 63 </TD> <TD> Col3a1 </TD> </TR>
  <TR> <TD align="right"> 64 </TD> <TD> Igfbp5 </TD> </TR>
  <TR> <TD align="right"> 65 </TD> <TD> Fn1 </TD> </TR>
  <TR> <TD align="right"> 66 </TD> <TD> Ptma </TD> </TR>
  <TR> <TD align="right"> 67 </TD> <TD> Lamc1 </TD> </TR>
  <TR> <TD align="right"> 68 </TD> <TD> Ptpn14 </TD> </TR>
  <TR> <TD align="right"> 69 </TD> <TD> Ddr2 </TD> </TR>
  <TR> <TD align="right"> 70 </TD> <TD> Lmx1a </TD> </TR>
  <TR> <TD align="right"> 71 </TD> <TD> Gad2 </TD> </TR>
  <TR> <TD align="right"> 72 </TD> <TD> Col5a1 </TD> </TR>
  <TR> <TD align="right"> 73 </TD> <TD> Lamc3 </TD> </TR>
  <TR> <TD align="right"> 74 </TD> <TD> Hspa5 </TD> </TR>
  <TR> <TD align="right"> 75 </TD> <TD> Lhx6 </TD> </TR>
  <TR> <TD align="right"> 76 </TD> <TD> Notch1 </TD> </TR>
  <TR> <TD align="right"> 77 </TD> <TD> Lrp2 </TD> </TR>
  <TR> <TD align="right"> 78 </TD> <TD> Fbn1 </TD> </TR>
  <TR> <TD align="right"> 79 </TD> <TD> Cd82 </TD> </TR>
  <TR> <TD align="right"> 80 </TD> <TD> Tspan18 </TD> </TR>
  <TR> <TD align="right"> 81 </TD> <TD> Syt13 </TD> </TR>
  <TR> <TD align="right"> 82 </TD> <TD> Mccc1 </TD> </TR>
  <TR> <TD align="right"> 83 </TD> <TD> Slc7a11 </TD> </TR>
  <TR> <TD align="right"> 84 </TD> <TD> Hsd3b6 </TD> </TR>
  <TR> <TD align="right"> 85 </TD> <TD> Notch2 </TD> </TR>
  <TR> <TD align="right"> 86 </TD> <TD> Vcam1 </TD> </TR>
  <TR> <TD align="right"> 87 </TD> <TD> Hadh </TD> </TR>
  <TR> <TD align="right"> 88 </TD> <TD> Wls </TD> </TR>
  <TR> <TD align="right"> 89 </TD> <TD> Tnc </TD> </TR>
  <TR> <TD align="right"> 90 </TD> <TD> Svep1 </TD> </TR>
  <TR> <TD align="right"> 91 </TD> <TD> Stmn1 </TD> </TR>
  <TR> <TD align="right"> 92 </TD> <TD> Trp73 </TD> </TR>
  <TR> <TD align="right"> 93 </TD> <TD> Pdgfra </TD> </TR>
  <TR> <TD align="right"> 94 </TD> <TD> Gm996 </TD> </TR>
  <TR> <TD align="right"> 95 </TD> <TD> Col1a2 </TD> </TR>
  <TR> <TD align="right"> 96 </TD> <TD> Ephb4 </TD> </TR>
  <TR> <TD align="right"> 97 </TD> <TD> Dlx5 </TD> </TR>
  <TR> <TD align="right"> 98 </TD> <TD> Lrig1 </TD> </TR>
  <TR> <TD align="right"> 99 </TD> <TD> Aldh1l1 </TD> </TR>
  <TR> <TD align="right"> 100 </TD> <TD> Plxnd1 </TD> </TR>
  <TR> <TD align="right"> 101 </TD> <TD> Emp1 </TD> </TR>
  <TR> <TD align="right"> 102 </TD> <TD> Dbx1 </TD> </TR>
  <TR> <TD align="right"> 103 </TD> <TD> Trpm1 </TD> </TR>
  <TR> <TD align="right"> 104 </TD> <TD> Hddc3 </TD> </TR>
  <TR> <TD align="right"> 105 </TD> <TD> Zkscan2 </TD> </TR>
  <TR> <TD align="right"> 106 </TD> <TD> Lyve1 </TD> </TR>
  <TR> <TD align="right"> 107 </TD> <TD> Heph </TD> </TR>
  <TR> <TD align="right"> 108 </TD> <TD> Col4a5 </TD> </TR>
  <TR> <TD align="right"> 109 </TD> <TD> Plat </TD> </TR>
  <TR> <TD align="right"> 110 </TD> <TD> Slit2 </TD> </TR>
  <TR> <TD align="right"> 111 </TD> <TD> Hsd11b2 </TD> </TR>
  <TR> <TD align="right"> 112 </TD> <TD> Itga11 </TD> </TR>
  <TR> <TD align="right"> 113 </TD> <TD> Gsta4 </TD> </TR>
  <TR> <TD align="right"> 114 </TD> <TD> Car12 </TD> </TR>
  <TR> <TD align="right"> 115 </TD> <TD> Smad3 </TD> </TR>
  <TR> <TD align="right"> 116 </TD> <TD> Lama1 </TD> </TR>
  <TR> <TD align="right"> 117 </TD> <TD> Tlr13 </TD> </TR>
  <TR> <TD align="right"> 118 </TD> <TD> Gria2 </TD> </TR>
  <TR> <TD align="right"> 119 </TD> <TD> Foxj1 </TD> </TR>
  <TR> <TD align="right"> 120 </TD> <TD> Tmem132c </TD> </TR>
  <TR> <TD align="right"> 121 </TD> <TD> Scn10a </TD> </TR>
  <TR> <TD align="right"> 122 </TD> <TD> Ptpn13 </TD> </TR>
  <TR> <TD align="right"> 123 </TD> <TD> Tdg </TD> </TR>
  <TR> <TD align="right"> 124 </TD> <TD> Prr7 </TD> </TR>
  <TR> <TD align="right"> 125 </TD> <TD> Fras1 </TD> </TR>
  <TR> <TD align="right"> 126 </TD> <TD> Arl4d </TD> </TR>
  <TR> <TD align="right"> 127 </TD> <TD> Arx </TD> </TR>
  <TR> <TD align="right"> 128 </TD> <TD> Ror1 </TD> </TR>
  <TR> <TD align="right"> 129 </TD> <TD> Ccl2 </TD> </TR>
  <TR> <TD align="right"> 130 </TD> <TD> Ccdc11 </TD> </TR>
  <TR> <TD align="right"> 131 </TD> <TD> Tgfbi </TD> </TR>
  <TR> <TD align="right"> 132 </TD> <TD> Cox8a </TD> </TR>
  <TR> <TD align="right"> 133 </TD> <TD> Colec12 </TD> </TR>
  <TR> <TD align="right"> 134 </TD> <TD> Lum </TD> </TR>
  <TR> <TD align="right"> 135 </TD> <TD> C1ql2 </TD> </TR>
  <TR> <TD align="right"> 136 </TD> <TD> Wnt8b </TD> </TR>
  <TR> <TD align="right"> 137 </TD> <TD> Frem2 </TD> </TR>
  <TR> <TD align="right"> 138 </TD> <TD> Atp11b </TD> </TR>
  <TR> <TD align="right"> 139 </TD> <TD> Vstm2l </TD> </TR>
  <TR> <TD align="right"> 140 </TD> <TD> Notch3 </TD> </TR>
  <TR> <TD align="right"> 141 </TD> <TD> Spon1 </TD> </TR>
  <TR> <TD align="right"> 142 </TD> <TD> Satb2 </TD> </TR>
  <TR> <TD align="right"> 143 </TD> <TD> Akap12 </TD> </TR>
  <TR> <TD align="right"> 144 </TD> <TD> Atp5l </TD> </TR>
  <TR> <TD align="right"> 145 </TD> <TD> Itpkb </TD> </TR>
  <TR> <TD align="right"> 146 </TD> <TD> Anpep </TD> </TR>
  <TR> <TD align="right"> 147 </TD> <TD> Rbpj </TD> </TR>
  <TR> <TD align="right"> 148 </TD> <TD> Pcsk1n </TD> </TR>
  <TR> <TD align="right"> 149 </TD> <TD> Igfbp2 </TD> </TR>
  <TR> <TD align="right"> 150 </TD> <TD> Kcne2 </TD> </TR>
  <TR> <TD align="right"> 151 </TD> <TD> Bmf </TD> </TR>
  <TR> <TD align="right"> 152 </TD> <TD> Thbs1 </TD> </TR>
  <TR> <TD align="right"> 153 </TD> <TD> Abcb1a </TD> </TR>
  <TR> <TD align="right"> 154 </TD> <TD> Ildr2 </TD> </TR>
  <TR> <TD align="right"> 155 </TD> <TD> C1qtnf4 </TD> </TR>
  <TR> <TD align="right"> 156 </TD> <TD> Abhd4 </TD> </TR>
  <TR> <TD align="right"> 157 </TD> <TD> Npnt </TD> </TR>
  <TR> <TD align="right"> 158 </TD> <TD> Fzd7 </TD> </TR>
  <TR> <TD align="right"> 159 </TD> <TD> Ccdc8 </TD> </TR>
  <TR> <TD align="right"> 160 </TD> <TD> Arhgap11a </TD> </TR>
  <TR> <TD align="right"> 161 </TD> <TD> Htr2c </TD> </TR>
  <TR> <TD align="right"> 162 </TD> <TD> Prelp </TD> </TR>
  <TR> <TD align="right"> 163 </TD> <TD> Nlrp5-ps </TD> </TR>
  <TR> <TD align="right"> 164 </TD> <TD> Dlx1 </TD> </TR>
  <TR> <TD align="right"> 165 </TD> <TD> Rassf4 </TD> </TR>
  <TR> <TD align="right"> 166 </TD> <TD> Dmrt3 </TD> </TR>
  <TR> <TD align="right"> 167 </TD> <TD> Lor </TD> </TR>
  <TR> <TD align="right"> 168 </TD> <TD> A030009H04Rik </TD> </TR>
  <TR> <TD align="right"> 169 </TD> <TD> Tmem145 </TD> </TR>
  <TR> <TD align="right"> 170 </TD> <TD> Wfikkn2 </TD> </TR>
  <TR> <TD align="right"> 171 </TD> <TD> Snhg11 </TD> </TR>
  <TR> <TD align="right"> 172 </TD> <TD> Gm9493 </TD> </TR>
  <TR> <TD align="right"> 173 </TD> <TD> Acp1 </TD> </TR>
  <TR> <TD align="right"> 174 </TD> <TD> Cnpy1 </TD> </TR>
  <TR> <TD align="right"> 175 </TD> <TD> Basp1 </TD> </TR>
  <TR> <TD align="right"> 176 </TD> <TD> Olig1 </TD> </TR>
  <TR> <TD align="right"> 177 </TD> <TD> Scand1 </TD> </TR>
  <TR> <TD align="right"> 178 </TD> <TD> Fat4 </TD> </TR>
  <TR> <TD align="right"> 179 </TD> <TD> Tmem164 </TD> </TR>
  <TR> <TD align="right"> 180 </TD> <TD> Adamts12 </TD> </TR>
  <TR> <TD align="right"> 181 </TD> <TD> Rps8 </TD> </TR>
  <TR> <TD align="right"> 182 </TD> <TD> Pirt </TD> </TR>
  <TR> <TD align="right"> 183 </TD> <TD> Shisa3 </TD> </TR>
  <TR> <TD align="right"> 184 </TD> <TD> Pla2g4e </TD> </TR>
  <TR> <TD align="right"> 185 </TD> <TD> Gja1 </TD> </TR>
  <TR> <TD align="right"> 186 </TD> <TD> Rspo2 </TD> </TR>
  <TR> <TD align="right"> 187 </TD> <TD> Pfdn4 </TD> </TR>
  <TR> <TD align="right"> 188 </TD> <TD> Hbb-y </TD> </TR>
  <TR> <TD align="right"> 189 </TD> <TD> Hbb-bh1 </TD> </TR>
  <TR> <TD align="right"> 190 </TD> <TD> Dnah6 </TD> </TR>
  <TR> <TD align="right"> 191 </TD> <TD> Lamb2 </TD> </TR>
  <TR> <TD align="right"> 192 </TD> <TD> Yap1 </TD> </TR>
  <TR> <TD align="right"> 193 </TD> <TD> Sh3pxd2a </TD> </TR>
  <TR> <TD align="right"> 194 </TD> <TD> Hba-x </TD> </TR>
  <TR> <TD align="right"> 195 </TD> <TD> Dach1 </TD> </TR>
  <TR> <TD align="right"> 196 </TD> <TD> Myh8 </TD> </TR>
  <TR> <TD align="right"> 197 </TD> <TD> Col8a2 </TD> </TR>
  <TR> <TD align="right"> 198 </TD> <TD> Pgpep1 </TD> </TR>
  <TR> <TD align="right"> 199 </TD> <TD> Slit3 </TD> </TR>
  <TR> <TD align="right"> 200 </TD> <TD> Cd248 </TD> </TR>
  <TR> <TD align="right"> 201 </TD> <TD> Kdm5d </TD> </TR>
  <TR> <TD align="right"> 202 </TD> <TD> Gulp1 </TD> </TR>
  <TR> <TD align="right"> 203 </TD> <TD> Hist3h2ba </TD> </TR>
  <TR> <TD align="right"> 204 </TD> <TD> Gm5148 </TD> </TR>
  <TR> <TD align="right"> 205 </TD> <TD> Capn11 </TD> </TR>
  <TR> <TD align="right"> 206 </TD> <TD> Sclt1 </TD> </TR>
  <TR> <TD align="right"> 207 </TD> <TD> Hydin </TD> </TR>
  <TR> <TD align="right"> 208 </TD> <TD> Dcc </TD> </TR>
  <TR> <TD align="right"> 209 </TD> <TD> Cdh3 </TD> </TR>
  <TR> <TD align="right"> 210 </TD> <TD> Trank1 </TD> </TR>
  <TR> <TD align="right"> 211 </TD> <TD> Otof </TD> </TR>
  <TR> <TD align="right"> 212 </TD> <TD> Ldha </TD> </TR>
  <TR> <TD align="right"> 213 </TD> <TD> Cyp26b1 </TD> </TR>
  <TR> <TD align="right"> 214 </TD> <TD> Col23a1 </TD> </TR>
  <TR> <TD align="right"> 215 </TD> <TD> Scn1a </TD> </TR>
  <TR> <TD align="right"> 216 </TD> <TD> Cldn9 </TD> </TR>
  <TR> <TD align="right"> 217 </TD> <TD> Lgals1 </TD> </TR>
  <TR> <TD align="right"> 218 </TD> <TD> Slc4a5 </TD> </TR>
  <TR> <TD align="right"> 219 </TD> <TD> Flnc </TD> </TR>
  <TR> <TD align="right"> 220 </TD> <TD> Sp9 </TD> </TR>
  <TR> <TD align="right"> 221 </TD> <TD> Ddx3y </TD> </TR>
  <TR> <TD align="right"> 222 </TD> <TD> Ahnak </TD> </TR>
  <TR> <TD align="right"> 223 </TD> <TD> Hba-a2 </TD> </TR>
  <TR> <TD align="right"> 224 </TD> <TD> Fat1 </TD> </TR>
  <TR> <TD align="right"> 225 </TD> <TD> Ccnd1 </TD> </TR>
  <TR> <TD align="right"> 226 </TD> <TD> Serpinh1 </TD> </TR>
  <TR> <TD align="right"> 227 </TD> <TD> Gm10282 </TD> </TR>
  <TR> <TD align="right"> 228 </TD> <TD> Gm1673 </TD> </TR>
  <TR> <TD align="right"> 229 </TD> <TD> Gad1 </TD> </TR>
  <TR> <TD align="right"> 230 </TD> <TD> Jund </TD> </TR>
  <TR> <TD align="right"> 231 </TD> <TD> Ppia </TD> </TR>
  <TR> <TD align="right"> 232 </TD> <TD> Fam84b </TD> </TR>
  <TR> <TD align="right"> 233 </TD> <TD> Gm7292 </TD> </TR>
  <TR> <TD align="right"> 234 </TD> <TD> Drc1 </TD> </TR>
  <TR> <TD align="right"> 235 </TD> <TD> 2410018L13Rik </TD> </TR>
  <TR> <TD align="right"> 236 </TD> <TD> Wdfy1 </TD> </TR>
  <TR> <TD align="right"> 237 </TD> <TD> Hbb-bt </TD> </TR>
  <TR> <TD align="right"> 238 </TD> <TD> Nynrin </TD> </TR>
  <TR> <TD align="right"> 239 </TD> <TD> Ywhaq </TD> </TR>
  <TR> <TD align="right"> 240 </TD> <TD> Fzd10 </TD> </TR>
  <TR> <TD align="right"> 241 </TD> <TD> Pisd-ps1 </TD> </TR>
  <TR> <TD align="right"> 242 </TD> <TD> Gm14204 </TD> </TR>
  <TR> <TD align="right"> 243 </TD> <TD> Ier5l </TD> </TR>
  <TR> <TD align="right"> 244 </TD> <TD> Dlx6os1 </TD> </TR>
  <TR> <TD align="right"> 245 </TD> <TD> Pou3f1 </TD> </TR>
  <TR> <TD align="right"> 246 </TD> <TD> Ccdc85b </TD> </TR>
  <TR> <TD align="right"> 247 </TD> <TD> Gm21781 </TD> </TR>
  <TR> <TD align="right"> 248 </TD> <TD> Gm6472 </TD> </TR>
  <TR> <TD align="right"> 249 </TD> <TD> Dynlt1f </TD> </TR>
  <TR> <TD align="right"> 250 </TD> <TD> Lhx8 </TD> </TR>
  <TR> <TD align="right"> 251 </TD> <TD> A330076H08Rik </TD> </TR>
  <TR> <TD align="right"> 252 </TD> <TD> 4930480K23Rik </TD> </TR>
  <TR> <TD align="right"> 253 </TD> <TD> A930011O12Rik </TD> </TR>
  <TR> <TD align="right"> 254 </TD> <TD> Gm27000 </TD> </TR>
   </TABLE>

### Matrix of gene significant differences between conditions

(skip for Brainmap wt-v-ko comparisons)

![plot of chunk sigMatrix](figure/sigMatrix.png) 

### Significant gene expression differences between conditions

Expression plot (genes):(turned off)




![plot of chunk sigExpression heatmap](figure/sigExpression heatmap.png) 

Significant genes with expression >50fpkm (any condition):(turned off)



An individual look at each of the highly expressed significantly differentially regulated genes:
(eval=false for first pass)




### Expression-level/significance relationship

Scatter plot of significant genes only:

![plot of chunk expression-sig_relationship](figure/expression-sig_relationship.png) 

Volcano Plot

![plot of chunk volcano](figure/volcano.png) 

Volcano plot with significant genes only:

![plot of chunk sig_volcano](figure/sig_volcano.png) 

FoldChange Heatmap

![plot of chunk sigGenes logfoldchange_heatmap](figure/sigGenes logfoldchange_heatmap.png) 


## Differential Splicing

### Differential Isoforms between conditions

Per isoform difference between conditions:

![plot of chunk diff_iso](figure/diff_iso.png) 

These isoforms are:

<!-- html table generated in R 3.0.2 by xtable 1.7-3 package -->
<!-- Tue Jul 15 15:18:20 2014 -->
<TABLE border=1>
<TR> <TH>  </TH> <TH> isoAnnot$gene_short_name </TH>  </TR>
  <TR> <TD align="right"> 1 </TD> <TD> Ccnd2 </TD> </TR>
  <TR> <TD align="right"> 2 </TD> <TD> Gabra2 </TD> </TR>
  <TR> <TD align="right"> 3 </TD> <TD> Col18a1 </TD> </TR>
  <TR> <TD align="right"> 4 </TD> <TD> Col1a1 </TD> </TR>
  <TR> <TD align="right"> 5 </TD> <TD> Aqp1 </TD> </TR>
  <TR> <TD align="right"> 6 </TD> <TD> Nes </TD> </TR>
  <TR> <TD align="right"> 7 </TD> <TD> Nid1 </TD> </TR>
  <TR> <TD align="right"> 8 </TD> <TD> Hmox1 </TD> </TR>
  <TR> <TD align="right"> 9 </TD> <TD> Rplp1 </TD> </TR>
  <TR> <TD align="right"> 10 </TD> <TD> Odc1 </TD> </TR>
  <TR> <TD align="right"> 11 </TD> <TD> Cad </TD> </TR>
  <TR> <TD align="right"> 12 </TD> <TD> Lama5 </TD> </TR>
  <TR> <TD align="right"> 13 </TD> <TD> Sulf1 </TD> </TR>
  <TR> <TD align="right"> 14 </TD> <TD> Slc16a10 </TD> </TR>
  <TR> <TD align="right"> 15 </TD> <TD> Lrriq1 </TD> </TR>
  <TR> <TD align="right"> 16 </TD> <TD> Lama2 </TD> </TR>
  <TR> <TD align="right"> 17 </TD> <TD> Gm872 </TD> </TR>
  <TR> <TD align="right"> 18 </TD> <TD> Ndufa12 </TD> </TR>
  <TR> <TD align="right"> 19 </TD> <TD> Pomc </TD> </TR>
  <TR> <TD align="right"> 20 </TD> <TD> Mrc2 </TD> </TR>
  <TR> <TD align="right"> 21 </TD> <TD> Galk1 </TD> </TR>
  <TR> <TD align="right"> 22 </TD> <TD> Nxn </TD> </TR>
  <TR> <TD align="right"> 23 </TD> <TD> Ntn1 </TD> </TR>
  <TR> <TD align="right"> 24 </TD> <TD> Tnfrsf10b </TD> </TR>
  <TR> <TD align="right"> 25 </TD> <TD> Psmb5 </TD> </TR>
  <TR> <TD align="right"> 26 </TD> <TD> Npr3 </TD> </TR>
  <TR> <TD align="right"> 27 </TD> <TD> Col14a1 </TD> </TR>
  <TR> <TD align="right"> 28 </TD> <TD> Zbtb20 </TD> </TR>
  <TR> <TD align="right"> 29 </TD> <TD> Arhgap31 </TD> </TR>
  <TR> <TD align="right"> 30 </TD> <TD> Adamts1 </TD> </TR>
  <TR> <TD align="right"> 31 </TD> <TD> Clic6 </TD> </TR>
  <TR> <TD align="right"> 32 </TD> <TD> Dlx2 </TD> </TR>
  <TR> <TD align="right"> 33 </TD> <TD> Igf2r </TD> </TR>
  <TR> <TD align="right"> 34 </TD> <TD> Svil </TD> </TR>
  <TR> <TD align="right"> 35 </TD> <TD> H2-M5 </TD> </TR>
  <TR> <TD align="right"> 36 </TD> <TD> Pou4f3 </TD> </TR>
  <TR> <TD align="right"> 37 </TD> <TD> Fbn2 </TD> </TR>
  <TR> <TD align="right"> 38 </TD> <TD> Pdgfrb </TD> </TR>
  <TR> <TD align="right"> 39 </TD> <TD> Gldc </TD> </TR>
  <TR> <TD align="right"> 40 </TD> <TD> Slc18a2 </TD> </TR>
  <TR> <TD align="right"> 41 </TD> <TD> Podxl </TD> </TR>
  <TR> <TD align="right"> 42 </TD> <TD> Col5a2 </TD> </TR>
  <TR> <TD align="right"> 43 </TD> <TD> Col3a1 </TD> </TR>
  <TR> <TD align="right"> 44 </TD> <TD> Igfbp5 </TD> </TR>
  <TR> <TD align="right"> 45 </TD> <TD> Fn1 </TD> </TR>
  <TR> <TD align="right"> 46 </TD> <TD> Ptma </TD> </TR>
  <TR> <TD align="right"> 47 </TD> <TD> Lamc1 </TD> </TR>
  <TR> <TD align="right"> 48 </TD> <TD> Lmx1a </TD> </TR>
  <TR> <TD align="right"> 49 </TD> <TD> Gad2 </TD> </TR>
  <TR> <TD align="right"> 50 </TD> <TD> Col5a1 </TD> </TR>
  <TR> <TD align="right"> 51 </TD> <TD> Notch1 </TD> </TR>
  <TR> <TD align="right"> 52 </TD> <TD> Lrp2 </TD> </TR>
  <TR> <TD align="right"> 53 </TD> <TD> Fbn1 </TD> </TR>
  <TR> <TD align="right"> 54 </TD> <TD> Tspan18 </TD> </TR>
  <TR> <TD align="right"> 55 </TD> <TD> Syt13 </TD> </TR>
  <TR> <TD align="right"> 56 </TD> <TD> Rrbp1 </TD> </TR>
  <TR> <TD align="right"> 57 </TD> <TD> Mccc1 </TD> </TR>
  <TR> <TD align="right"> 58 </TD> <TD> Notch2 </TD> </TR>
  <TR> <TD align="right"> 59 </TD> <TD> Vcam1 </TD> </TR>
  <TR> <TD align="right"> 60 </TD> <TD> Svep1 </TD> </TR>
  <TR> <TD align="right"> 61 </TD> <TD> Hspg2 </TD> </TR>
  <TR> <TD align="right"> 62 </TD> <TD> Rspo1 </TD> </TR>
  <TR> <TD align="right"> 63 </TD> <TD> Trp73 </TD> </TR>
  <TR> <TD align="right"> 64 </TD> <TD> Col1a2 </TD> </TR>
  <TR> <TD align="right"> 65 </TD> <TD> Dlx5 </TD> </TR>
  <TR> <TD align="right"> 66 </TD> <TD> Aldh1l1 </TD> </TR>
  <TR> <TD align="right"> 67 </TD> <TD> Smad3 </TD> </TR>
  <TR> <TD align="right"> 68 </TD> <TD> Lama1 </TD> </TR>
  <TR> <TD align="right"> 69 </TD> <TD> Foxj1 </TD> </TR>
  <TR> <TD align="right"> 70 </TD> <TD> Tmem132c </TD> </TR>
  <TR> <TD align="right"> 71 </TD> <TD> Ptpn13 </TD> </TR>
  <TR> <TD align="right"> 72 </TD> <TD> Prr7 </TD> </TR>
  <TR> <TD align="right"> 73 </TD> <TD> Fras1 </TD> </TR>
  <TR> <TD align="right"> 74 </TD> <TD> Arl4d </TD> </TR>
  <TR> <TD align="right"> 75 </TD> <TD> Arx </TD> </TR>
  <TR> <TD align="right"> 76 </TD> <TD> Cox8a </TD> </TR>
  <TR> <TD align="right"> 77 </TD> <TD> Colec12 </TD> </TR>
  <TR> <TD align="right"> 78 </TD> <TD> Lum </TD> </TR>
  <TR> <TD align="right"> 79 </TD> <TD> Wnt8b </TD> </TR>
  <TR> <TD align="right"> 80 </TD> <TD> Frem2 </TD> </TR>
  <TR> <TD align="right"> 81 </TD> <TD> D4Wsu53e </TD> </TR>
  <TR> <TD align="right"> 82 </TD> <TD> Notch3 </TD> </TR>
  <TR> <TD align="right"> 83 </TD> <TD> Spon1 </TD> </TR>
  <TR> <TD align="right"> 84 </TD> <TD> Akap12 </TD> </TR>
  <TR> <TD align="right"> 85 </TD> <TD> Pcsk1n </TD> </TR>
  <TR> <TD align="right"> 86 </TD> <TD> Kcne2 </TD> </TR>
  <TR> <TD align="right"> 87 </TD> <TD> Thbs1 </TD> </TR>
  <TR> <TD align="right"> 88 </TD> <TD> C1qtnf4 </TD> </TR>
  <TR> <TD align="right"> 89 </TD> <TD> Ccdc8 </TD> </TR>
  <TR> <TD align="right"> 90 </TD> <TD> Arhgap11a </TD> </TR>
  <TR> <TD align="right"> 91 </TD> <TD> Prelp </TD> </TR>
  <TR> <TD align="right"> 92 </TD> <TD> Nlrp5-ps </TD> </TR>
  <TR> <TD align="right"> 93 </TD> <TD> Dlx1 </TD> </TR>
  <TR> <TD align="right"> 94 </TD> <TD> Rassf4 </TD> </TR>
  <TR> <TD align="right"> 95 </TD> <TD> Dmrt3 </TD> </TR>
  <TR> <TD align="right"> 96 </TD> <TD> Reln </TD> </TR>
  <TR> <TD align="right"> 97 </TD> <TD> Lor </TD> </TR>
  <TR> <TD align="right"> 98 </TD> <TD> Wfikkn2 </TD> </TR>
  <TR> <TD align="right"> 99 </TD> <TD> Snhg11 </TD> </TR>
  <TR> <TD align="right"> 100 </TD> <TD> Gm9493 </TD> </TR>
  <TR> <TD align="right"> 101 </TD> <TD> Basp1 </TD> </TR>
  <TR> <TD align="right"> 102 </TD> <TD> Olig1 </TD> </TR>
  <TR> <TD align="right"> 103 </TD> <TD> Fat4 </TD> </TR>
  <TR> <TD align="right"> 104 </TD> <TD> Adamts12 </TD> </TR>
  <TR> <TD align="right"> 105 </TD> <TD> Rps8 </TD> </TR>
  <TR> <TD align="right"> 106 </TD> <TD> Col6a3 </TD> </TR>
  <TR> <TD align="right"> 107 </TD> <TD> Pla2g4e </TD> </TR>
  <TR> <TD align="right"> 108 </TD> <TD> Rspo2 </TD> </TR>
  <TR> <TD align="right"> 109 </TD> <TD> Hbb-y </TD> </TR>
  <TR> <TD align="right"> 110 </TD> <TD> Hbb-bs </TD> </TR>
  <TR> <TD align="right"> 111 </TD> <TD> Ezr </TD> </TR>
  <TR> <TD align="right"> 112 </TD> <TD> Lamb2 </TD> </TR>
  <TR> <TD align="right"> 113 </TD> <TD> Glis3 </TD> </TR>
  <TR> <TD align="right"> 114 </TD> <TD> Yap1 </TD> </TR>
  <TR> <TD align="right"> 115 </TD> <TD> Zfp771 </TD> </TR>
  <TR> <TD align="right"> 116 </TD> <TD> Hba-x </TD> </TR>
  <TR> <TD align="right"> 117 </TD> <TD> Myh8 </TD> </TR>
  <TR> <TD align="right"> 118 </TD> <TD> Col8a2 </TD> </TR>
  <TR> <TD align="right"> 119 </TD> <TD> Pgpep1 </TD> </TR>
  <TR> <TD align="right"> 120 </TD> <TD> Ncoa4 </TD> </TR>
  <TR> <TD align="right"> 121 </TD> <TD> Kdm5d </TD> </TR>
  <TR> <TD align="right"> 122 </TD> <TD> Hist3h2ba </TD> </TR>
  <TR> <TD align="right"> 123 </TD> <TD> Hydin </TD> </TR>
  <TR> <TD align="right"> 124 </TD> <TD> Trank1 </TD> </TR>
  <TR> <TD align="right"> 125 </TD> <TD> Flnc </TD> </TR>
  <TR> <TD align="right"> 126 </TD> <TD> Sp9 </TD> </TR>
  <TR> <TD align="right"> 127 </TD> <TD> Ddx3y </TD> </TR>
  <TR> <TD align="right"> 128 </TD> <TD> Gpr98 </TD> </TR>
  <TR> <TD align="right"> 129 </TD> <TD> Ahnak </TD> </TR>
  <TR> <TD align="right"> 130 </TD> <TD> Fat1 </TD> </TR>
  <TR> <TD align="right"> 131 </TD> <TD> Serpinh1 </TD> </TR>
  <TR> <TD align="right"> 132 </TD> <TD> Gm10282 </TD> </TR>
  <TR> <TD align="right"> 133 </TD> <TD> Jund </TD> </TR>
  <TR> <TD align="right"> 134 </TD> <TD> Fam84b </TD> </TR>
  <TR> <TD align="right"> 135 </TD> <TD> Drc1 </TD> </TR>
  <TR> <TD align="right"> 136 </TD> <TD> Hbb-bt </TD> </TR>
  <TR> <TD align="right"> 137 </TD> <TD> Col22a1 </TD> </TR>
  <TR> <TD align="right"> 138 </TD> <TD> Fzd10 </TD> </TR>
  <TR> <TD align="right"> 139 </TD> <TD> Ier5l </TD> </TR>
  <TR> <TD align="right"> 140 </TD> <TD> Dlx6os1 </TD> </TR>
  <TR> <TD align="right"> 141 </TD> <TD> Pou3f1 </TD> </TR>
  <TR> <TD align="right"> 142 </TD> <TD> Ccdc85b </TD> </TR>
  <TR> <TD align="right"> 143 </TD> <TD> Gm6472 </TD> </TR>
  <TR> <TD align="right"> 144 </TD> <TD> 4930480K23Rik </TD> </TR>
  <TR> <TD align="right"> 145 </TD> <TD> Rmst </TD> </TR>
  <TR> <TD align="right"> 146 </TD> <TD> A930011O12Rik </TD> </TR>
  <TR> <TD align="right"> 147 </TD> <TD> Gm27000 </TD> </TR>
   </TABLE>

Gene-level DE isoform heatmap

![plot of chunk isoform_heatmap](figure/isoform_heatmap.png) 

Isoform foldchange heatmap by isoform:

![plot of chunk isoform logfoldchange_heatmap](figure/isoform logfoldchange_heatmap.png) 


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







Biocarta enrichment: 

![plot of chunk print_GSEA_biocarta](figure/print_GSEA_biocarta.png) 

Biocarta zscore: 

![plot of chunk gsea_zscore_biocarta](figure/gsea_zscore_biocarta.png) 


Reactome enrichment: 

![plot of chunk print_GSEA_reactome](figure/print_GSEA_reactome.png) 


Reactome zscore: 

![plot of chunk gsea_zscore_reactome](figure/gsea_zscore_reactome.png) 


Kegg enrichment: 

![plot of chunk gsea_enrichment_kegg](figure/gsea_enrichment_kegg.png) 

Kegg zscore: 

![plot of chunk gsea_zscore_kegg](figure/gsea_zscore_kegg.png) 

Interneuron enrichment:


```
## Error: argument is of length zero
```

Interneuron zscore:


```
## Error: incorrect number of dimensions
```

```
## Error: `x' must have at least 2 rows and 2 columns
```



## GO enrichment 
Cluster profiler used to call enichments of significantly differentially regulated genes that map to Entrez IDs. 





![plot of chunk GO_figures](figure/GO_figures1.png) ![plot of chunk GO_figures](figure/GO_figures2.png) ![plot of chunk GO_figures](figure/GO_figures3.png) ![plot of chunk GO_figures](figure/GO_figures4.png) ![plot of chunk GO_figures](figure/GO_figures5.png) 

# Cis vs Trans (locally)

log2 Foldchange and test statistic are calculated with the ratio of fpkm(KO)/fpkm(WT), thus the test_stat is positive if a gene is higher in the KO and negative if a gene has lower expression in the KO






The pvalue for 2 genes significantly regulated in a region this size  is: 0.464 


![plot of chunk cisreg_image](figure/cisreg_image.png) 

# Notes

## Samples used are:
<!-- html table generated in R 3.0.2 by xtable 1.7-3 package -->
<!-- Tue Jul 15 15:41:38 2014 -->
<TABLE border=1>
<TR> <TH>  </TH> <TH> 10 </TH>  </TR>
  <TR> <TD align="right"> 1 </TD> <TD> JR753 </TD> </TR>
  <TR> <TD align="right"> 2 </TD> <TD> JR750 </TD> </TR>
  <TR> <TD align="right"> 3 </TD> <TD> JR771 </TD> </TR>
  <TR> <TD align="right"> 4 </TD> <TD> JR755 </TD> </TR>
  <TR> <TD align="right"> 5 </TD> <TD> JR811 </TD> </TR>
  <TR> <TD align="right"> 6 </TD> <TD> JR768 </TD> </TR>
  <TR> <TD align="right"> 7 </TD> <TD> JR761 </TD> </TR>
  <TR> <TD align="right"> 8 </TD> <TD> JR815 </TD> </TR>
  <TR> <TD align="right"> 9 </TD> <TD> JR789 </TD> </TR>
  <TR> <TD align="right"> 10 </TD> <TD> JR748 </TD> </TR>
  <TR> <TD align="right"> 11 </TD> <TD> JR716 </TD> </TR>
  <TR> <TD align="right"> 12 </TD> <TD> JR717 </TD> </TR>
  <TR> <TD align="right"> 13 </TD> <TD> JR719 </TD> </TR>
  <TR> <TD align="right"> 14 </TD> <TD> JR756 </TD> </TR>
  <TR> <TD align="right"> 15 </TD> <TD> JR721 </TD> </TR>
  <TR> <TD align="right"> 16 </TD> <TD> JR718 </TD> </TR>
  <TR> <TD align="right"> 17 </TD> <TD> JR720 </TD> </TR>
  <TR> <TD align="right"> 18 </TD> <TD> JR792 </TD> </TR>
   </TABLE>

## Replicates
<!-- html table generated in R 3.0.2 by xtable 1.7-3 package -->
<!-- Tue Jul 15 15:41:39 2014 -->
<TABLE border=1>
<TR> <TH>  </TH> <TH> file </TH> <TH> sample_name </TH> <TH> replicate </TH> <TH> rep_name </TH> <TH> total_mass </TH> <TH> norm_mass </TH> <TH> internal_scale </TH> <TH> external_scale </TH>  </TR>
  <TR> <TD align="right"> 1 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR753/abundances.cxb </TD> <TD> WT </TD> <TD align="right">   0 </TD> <TD> WT_0 </TD> <TD align="right"> 39331900.00 </TD> <TD align="right"> 30202700.00 </TD> <TD align="right"> 1.35 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 2 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR750/abundances.cxb </TD> <TD> WT </TD> <TD align="right">   1 </TD> <TD> WT_1 </TD> <TD align="right"> 36031100.00 </TD> <TD align="right"> 30202700.00 </TD> <TD align="right"> 1.18 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 3 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR771/abundances.cxb </TD> <TD> WT </TD> <TD align="right">   2 </TD> <TD> WT_2 </TD> <TD align="right"> 38857100.00 </TD> <TD align="right"> 30202700.00 </TD> <TD align="right"> 1.31 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 4 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR755/abundances.cxb </TD> <TD> WT </TD> <TD align="right">   3 </TD> <TD> WT_3 </TD> <TD align="right"> 41811300.00 </TD> <TD align="right"> 30202700.00 </TD> <TD align="right"> 1.38 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 5 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR811/abundances.cxb </TD> <TD> WT </TD> <TD align="right">   4 </TD> <TD> WT_4 </TD> <TD align="right"> 38172800.00 </TD> <TD align="right"> 30202700.00 </TD> <TD align="right"> 1.28 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 6 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR768/abundances.cxb </TD> <TD> WT </TD> <TD align="right">   5 </TD> <TD> WT_5 </TD> <TD align="right"> 28375200.00 </TD> <TD align="right"> 30202700.00 </TD> <TD align="right"> 0.95 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 7 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR761/abundances.cxb </TD> <TD> WT </TD> <TD align="right">   6 </TD> <TD> WT_6 </TD> <TD align="right"> 31706200.00 </TD> <TD align="right"> 30202700.00 </TD> <TD align="right"> 1.04 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 8 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR815/abundances.cxb </TD> <TD> WT </TD> <TD align="right">   7 </TD> <TD> WT_7 </TD> <TD align="right"> 29733100.00 </TD> <TD align="right"> 30202700.00 </TD> <TD align="right"> 0.98 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 9 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR789/abundances.cxb </TD> <TD> WT </TD> <TD align="right">   8 </TD> <TD> WT_8 </TD> <TD align="right"> 27681500.00 </TD> <TD align="right"> 30202700.00 </TD> <TD align="right"> 0.92 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 10 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR748/abundances.cxb </TD> <TD> WT </TD> <TD align="right">   9 </TD> <TD> WT_9 </TD> <TD align="right"> 32367000.00 </TD> <TD align="right"> 30202700.00 </TD> <TD align="right"> 1.03 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 11 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR716/abundances.cxb </TD> <TD> WT </TD> <TD align="right">  10 </TD> <TD> WT_10 </TD> <TD align="right"> 26144700.00 </TD> <TD align="right"> 30202700.00 </TD> <TD align="right"> 0.87 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 12 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR717/abundances.cxb </TD> <TD> WT </TD> <TD align="right">  11 </TD> <TD> WT_11 </TD> <TD align="right"> 25565400.00 </TD> <TD align="right"> 30202700.00 </TD> <TD align="right"> 0.85 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 13 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR719/abundances.cxb </TD> <TD> WT </TD> <TD align="right">  12 </TD> <TD> WT_12 </TD> <TD align="right"> 22697800.00 </TD> <TD align="right"> 30202700.00 </TD> <TD align="right"> 0.73 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 14 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR756/abundances.cxb </TD> <TD> WT </TD> <TD align="right">  13 </TD> <TD> WT_13 </TD> <TD align="right"> 38948900.00 </TD> <TD align="right"> 30202700.00 </TD> <TD align="right"> 1.30 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 15 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR721/abundances.cxb </TD> <TD> Peril </TD> <TD align="right">   0 </TD> <TD> Peril_0 </TD> <TD align="right"> 22593200.00 </TD> <TD align="right"> 30202700.00 </TD> <TD align="right"> 0.75 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 16 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR718/abundances.cxb </TD> <TD> Peril </TD> <TD align="right">   1 </TD> <TD> Peril_1 </TD> <TD align="right"> 27635500.00 </TD> <TD align="right"> 30202700.00 </TD> <TD align="right"> 0.92 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 17 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR720/abundances.cxb </TD> <TD> Peril </TD> <TD align="right">   2 </TD> <TD> Peril_2 </TD> <TD align="right"> 19589600.00 </TD> <TD align="right"> 30202700.00 </TD> <TD align="right"> 0.64 </TD> <TD align="right"> 1.00 </TD> </TR>
  <TR> <TD align="right"> 18 </TD> <TD> /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR792/abundances.cxb </TD> <TD> Peril </TD> <TD align="right">   3 </TD> <TD> Peril_3 </TD> <TD align="right"> 29654500.00 </TD> <TD align="right"> 30202700.00 </TD> <TD align="right"> 0.99 </TD> <TD align="right"> 1.00 </TD> </TR>
   </TABLE>

## Session Info

```
## R version 3.0.2 (2013-09-25)
## Platform: x86_64-unknown-linux-gnu (64-bit)
## 
## locale:
##  [1] LC_CTYPE=en_US.UTF-8       LC_NUMERIC=C              
##  [3] LC_TIME=en_US.UTF-8        LC_COLLATE=en_US.UTF-8    
##  [5] LC_MONETARY=en_US.UTF-8    LC_MESSAGES=en_US.UTF-8   
##  [7] LC_PAPER=en_US.UTF-8       LC_NAME=C                 
##  [9] LC_ADDRESS=C               LC_TELEPHONE=C            
## [11] LC_MEASUREMENT=en_US.UTF-8 LC_IDENTIFICATION=C       
## 
## attached base packages:
## [1] grid      parallel  methods   stats     graphics  grDevices utils    
## [8] datasets  base     
## 
## other attached packages:
##  [1] plyr_1.8.1                         
##  [2] stringr_0.6.2                      
##  [3] seqbias_1.10.0                     
##  [4] BSgenome.Mmusculus.UCSC.mm10_1.3.19
##  [5] BSgenome_1.30.0                    
##  [6] Biostrings_2.30.1                  
##  [7] GO.db_2.10.1                       
##  [8] org.Mm.eg.db_2.10.1                
##  [9] clusterProfiler_1.13.1             
## [10] DOSE_2.0.0                         
## [11] ReactomePA_1.6.1                   
## [12] AnnotationDbi_1.24.0               
## [13] Biobase_2.22.0                     
## [14] mgcv_1.7-29                        
## [15] nlme_3.1-117                       
## [16] RMySQL_0.9-3                       
## [17] RColorBrewer_1.0-5                 
## [18] gridExtra_0.9.1                    
## [19] gtable_0.1.2                       
## [20] marray_1.40.0                      
## [21] gplots_2.13.0                      
## [22] GSA_1.03                           
## [23] limma_3.18.13                      
## [24] xtable_1.7-3                       
## [25] cummeRbund_2.7.2                   
## [26] Gviz_1.6.0                         
## [27] rtracklayer_1.22.7                 
## [28] GenomicRanges_1.14.4               
## [29] XVector_0.2.0                      
## [30] IRanges_1.20.7                     
## [31] fastcluster_1.1.13                 
## [32] reshape2_1.4                       
## [33] ggplot2_1.0.0                      
## [34] RSQLite_0.11.4                     
## [35] DBI_0.2-7                          
## [36] BiocGenerics_0.8.0                 
## [37] knitr_1.6                          
## 
## loaded via a namespace (and not attached):
##  [1] biomaRt_2.18.0         biovizBase_1.10.8      bitops_1.0-6          
##  [4] caTools_1.17           cluster_1.15.2         colorspace_1.2-4      
##  [7] dichromat_2.0-0        digest_0.6.4           DO.db_2.7             
## [10] evaluate_0.5.5         formatR_0.10           Formula_1.1-1         
## [13] gdata_2.13.3           GenomicFeatures_1.14.5 GOSemSim_1.20.3       
## [16] graph_1.40.1           graphite_1.8.1         gtools_3.4.1          
## [19] Hmisc_3.14-4           igraph_0.7.1           KEGG.db_2.10.1        
## [22] KernSmooth_2.23-12     labeling_0.2           lattice_0.20-29       
## [25] latticeExtra_0.6-26    MASS_7.3-33            Matrix_1.1-3          
## [28] munsell_0.4.2          org.Hs.eg.db_2.10.1    proto_0.3-10          
## [31] qvalue_1.36.0          Rcpp_0.11.2            RCurl_1.95-4.1        
## [34] reactome.db_1.46.1     Rsamtools_1.14.3       scales_0.2.4          
## [37] splines_3.0.2          stats4_3.0.2           survival_2.37-7       
## [40] tcltk_3.0.2            tools_3.0.2            XML_3.98-1.1          
## [43] zlibbioc_1.8.0
```

## Run Info

```
##           param
## 1      cmd_line
## 2       version
## 3  SVN_revision
## 4 boost_version
## 5        genome
##                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  value
## 1 cuffdiff -p 10 -L WT,Peril -o /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/diffs/Peril_vs_WT_Embryonic /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/annotation/mm10_gencode_vM2_with_lncRNAs_and_LacZ.gtf /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR753/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR750/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR771/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR755/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR811/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR768/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR761/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR815/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR789/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR748/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR716/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR717/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR719/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR756/abundances.cxb /n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR721/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR718/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR720/abundances.cxb,/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/JR792/abundances.cxb 
## 2                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                2.2.1
## 3                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 4237
## 4                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               104700
## 5                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 mm10
```




