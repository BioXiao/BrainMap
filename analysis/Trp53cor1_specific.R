#linc-p21 specific (Trp53cor1)

diffdir<-"/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/diffs"
library(cummeRbund)
genome="mm10"

#Trp53cor1 Adult
dir<-paste(diffdir,"Trp53cor1_vs_WT_Adult",sep="/")
cuff<-readCufflinks(dir=dir,gtfFile="/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/annotation/mm10_gencode_vM2_with_lncRNAs_and_LacZ.gtf",genome=genome)

#lincp21
trp53cor1<-getGene(cuff,"Trp53cor1")
trp<-expressionBarplot(trp53cor1,replicates=TRUE)+theme_bw()+scale_y_continuous(limits=c(0,35))


#Cdkn1a
cdkn1a_adult<-getGene(cuff,"Cdkn1a")
ca<-expressionBarplot(cdkn1a_adult,replicates=TRUE)+theme_bw()+scale_y_continuous(limits=c(0,35))

ca<-ca + ggtitle("Cdkn1a in Adult") #0-40
trp<-trp + ggtitle("Trp53cor1 in Adult") # 0-0.4

#Trp53cor1 embryo 
dir<-paste(diffdir,"Trp53cor1_vs_WT_Embryonic",sep="/")
cuffe<-readCufflinks(dir=dir,gtfFile="/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/annotation/mm10_gencode_vM2_with_lncRNAs_and_LacZ.gtf",genome=genome)

#lincp21
trp53cor1_e<-getGene(cuffe,"Trp53cor1")
trp_e<-expressionBarplot(trp53cor1_e,replicates=TRUE)+theme_bw()+scale_y_continuous(limits=c(0,35))

#Cdkn1a
cdkn1a_e<-getGene(cuffe,"Cdkn1a")
ce<-expressionBarplot(cdkn1a_e,replicates=TRUE)+theme_bw()+scale_y_continuous(limits=c(0,35))

ce<-ce + ggtitle("Cdkn1a in Embryo") #0-20 
trp_e<-trp_e + ggtitle("Trp53cor1 in Embryo") # 0-0.3 

library(gridExtra)
plots2<-list(trp_e,trp,ce,ca)
names(plots2)<-c("trpe","trpa","ce","ca")
listnames2<-c(plots2,list(nrow=2,ncol=2))

pdf("trp53cor1_and_cdkn1a_expression.pdf", height=10,width=10)
do.call(grid.arrange,listnames2)  
dev.off()


