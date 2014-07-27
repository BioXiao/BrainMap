#Crnde

diffdir<-"/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/diffs"
library(cummeRbund)
genome="mm10"


#Crnde Adult
dir<-paste(diffdir,"Crnde_vs_WT_Adult",sep="/")
cuff<-readCufflinks(dir=dir,gtfFile="/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/annotation/mm10_gencode_vM2_with_lncRNAs_and_LacZ.gtf",genome=genome)
adult<-getGene(cuff,"Crnde")
expressionBarplot(adult, replicates=TRUE)+theme_bw()+scale_y_continuous(limits=c(0,20))
ggsave("crnde_expression_adult.pdf")

#Crnde Embryo
dir<-paste(diffdir,"Crnde_vs_WT_Embryonic",sep="/")
cuff<-readCufflinks(dir=dir,gtfFile="/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/annotation/mm10_gencode_vM2_with_lncRNAs_and_LacZ.gtf",genome=genome)
embryo<-getGene(cuff,"Crnde")
expressionBarplot(embryo,replicates=TRUE)+theme_bw()+scale_y_continuous(limits=c(0,20))
ggsave("crnde_expression_embryo.pdf")



#Venn
load("DEgenes_list.Rdata")
load("DEiso_list.Rdata")
load("DEcds_list.Rdata")

#GENES 
#2 crnde adult
#15 crnde embryo 
names(DE_genes_list)[15]

genes_a<-DE_genes_list[[2]] #42
genes_e<-DE_genes_list[[15]] #80
genes_overlap<-intersect(genes_a,genes_e) #2


#ISO 
names(DE_iso_list)[8]
#crnde adult  == 0
#crnde embryo 8
iso_e<-DE_iso_list[[8]] #53
length(iso_e)

#CDS
names(DE_cds_list)[15]
#crnde adult 2
#crnde embryo 15
cds_a<-DE_cds_list[[2]] #34
cds_e<-DE_cds_list[[15]] #74
cds_overlap<-intersect(cds_a,cds_e) #1
length(cds_a)
length(cds_e)
length(cds_overlap)