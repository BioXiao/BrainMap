diffdir<-"/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/diffs"
library(cummeRbund)
genome="mm10"

#ADULT
dir<-paste(diffdir,"Peril_vs_WT_Adult",sep="/")
cuff<-readCufflinks(dir=dir,gtfFile="/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/annotation/mm10_gencode_vM2_with_lncRNAs_and_LacZ.gtf",genome=genome)
rag1<-getGene(cuff,"Rag1")
rag2<-getGene(cuff,"Rag2")

expressionBarplot(rag1,replicates=TRUE)
expressionBarplot(rag2,replicates=TRUE)

dir<-paste(diffdir,"Peril_vs_WT_Embryonic",sep="/")
cuffe<-readCufflinks(dir=dir,gtfFile="/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/annotation/mm10_gencode_vM2_with_lncRNAs_and_LacZ.gtf",genome=genome)

rag1e<-getGene(cuffe,"Rag1")
rag2e<-getGene(cuffe,"Rag2")

expressionBarplot(rag1e,replicates=TRUE)
expressionBarplot(rag2e,replicates=TRUE)


gene<-mouseBodymap[grep("Rag1",mouseBodymap$gene_short_name),]
name<-"Rag1"
gene$gene_short_name<-NULL
g<-data.frame(t(gene))
colnames(g)[1]<-"fpkm"
g$sampleName<-colnames(gene)
ggplot(g,aes(x=sampleName,y=fpkm))+geom_bar(data=subset(g,g$fpkm>20),stat="identity")+theme(axis.text.x = element_text(angle = 90, hjust = 1))+ggtitle(name)


gene<-mouseBodymap[grep("Rag2",mouseBodymap$gene_short_name),]
name<-"Rag2"
gene$gene_short_name<-NULL
g<-data.frame(t(gene))
colnames(g)[1]<-"fpkm"
g$sampleName<-colnames(gene)
ggplot(g,aes(x=sampleName,y=fpkm))+geom_bar(data=subset(g,g$fpkm>20),stat="identity")+theme(axis.text.x = element_text(angle = 90, hjust = 1))+ggtitle(name)



brain<-read.table("/n/rinn_data1/users/agroff/lincNetwork/mouse/genes.fpkm_table__brain", header=TRUE)
gene<-brain[grep("Rag2",brain$gene_short_name),]
name<-"Rag2"
gene$gene_short_name<-NULL
g<-data.frame(t(gene))
colnames(g)[1]<-"fpkm"
g$sampleName<-colnames(gene)
ggplot(g,aes(x=sampleName,y=fpkm))+geom_bar(data=subset(g,g$fpkm>20),stat="identity")+theme(axis.text.x = element_text(angle = 90, hjust = 1))+ggtitle(name)

