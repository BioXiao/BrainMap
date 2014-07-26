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