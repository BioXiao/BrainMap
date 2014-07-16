library(cummeRbund)

cuff<-readCufflinks(dir="../../data/diffs/Crnde_vs_WT_Adult/")

Crnde_up_gene_ids<-c(
'Wbp2',
'Klhdc3',
'Sumf2',
'Gpx4',
'Trip10',
'Fat1',
'Cltc',
'Pnpo',
'Impdh2',
'Ergic3'
	)

Crnde_down_gene_ids<-c(
'Kcnip3',
'Micall1',
'Slc6a9',
'Epb41l2',
'Scyl1',
'Eps8l2',
'Notch3',
'Gdpd3',
'Mlxipl',
'Gps2'
	)

Crnde_up_genes<-getGenes(cuff,Crnde_up_gene_ids)
Crnde_down_genes<-getGenes(cuff,Crnde_down_gene_ids)