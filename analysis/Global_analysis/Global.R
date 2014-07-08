library(ggplot2)
library(reshape2)
library(stringr)


# Setup 
adult_cuff<-readCufflinks(dir="../../data/diffs/Adult_full/")
embryonic_cuff<-readCufflinks(dir="../../data/diffs/Embryonic_full/")

# Genes
DEGeneListFile<-"DEgenes_lists_transpose.tab"
DEGeneLists<-read.table(DEGeneListFile,header=T,sep="\t",stringsAsFactors=F,na.string="")
DEGenes<-as.list(DEGeneLists)
DEGenes<-lapply(DEGenes, function (x) x[!is.na(x)]) 

## Strain names
strains<-unique(str_split_fixed(pattern="_",string=names(DEGenes),n=2)[,1])

## Adult
DEGenes_adult<-DEGenes[grepl("_adult_",names(DEGenes))]
DEGenes_adult_all<-unique(unlist(DEGenes_adult,use.names=FALSE))

### Lengths
DEGenes_adult_length<-as.data.frame(unlist(lapply(DEGenes_adult,length)))
colnames(DEGenes_adult_length)<-c("length")
rownames(DEGenes_adult_length)<-str_split_fixed(pattern="_",string=rownames(DEGenes_adult_length),n=2)[,1]
DEGenes_adult_length$name<-rownames(DEGenes_adult_length)

p <- ggplot(DEGenes_adult_length)

p <- p + geom_tile(aes(x=name,y=1,fill=length),line="black") + geom_text(aes(x=name,y=1,label=length))+ scale_fill_gradient(limits=c(0,500),low="white",high="steelblue") + theme_bw() + coord_equal(1)

pdf("DEGenes_adult_length_tile.pdf",width=10,height=3)
p
dev.off()

### Gene Set
DEGenes_adult_all_genes<-getGenes(adult_cuff,DEGenes_adult_all)
pdf("Degenes_adult_heatmap.pdf",width=10,height=15)
csFoldChangeHeatmap(DEGenes_adult_all_genes,cluster="both",labRow=F,control_condition="WT")
dev.off()

pdf("DEGenes_adult_dendro.pdf",width=10,height=5)
csDendro(DEGenes_adult_all_genes)
dev.off()

### GO enrichment



## Embryonic
DEGenes_emb<-DEGenes[grepl("_embryo_",names(DEGenes))]
DEGenes_emb_all<-unique(unlist(DEGenes_emb,use.names=FALSE))

### Lengths
DEGenes_emb_length<-as.data.frame(unlist(lapply(DEGenes_emb,length)))
colnames(DEGenes_emb_length)<-c("length")
rownames(DEGenes_emb_length)<-str_split_fixed(pattern="_",string=rownames(DEGenes_emb_length),n=2)[,1]
DEGenes_emb_length$name<-rownames(DEGenes_emb_length)

p <- ggplot(DEGenes_emb_length)

p <- p + geom_tile(aes(x=name,y=1,fill=length),line="black") + geom_text(aes(x=name,y=1,label=length))+ scale_fill_gradient(limits=c(0,500),low="white",high="steelblue") + theme_bw() + coord_equal(1)

pdf("DEGenes_emb_length_tile.pdf",width=10,height=3)
p
dev.off()

### Gene Set
DEGenes_emb_all_genes<-getGenes(embryonic_cuff,DEGenes_emb_all)
pdf("Degenes_emb_heatmap.pdf",width=10,height=15)
csFoldChangeHeatmap(DEGenes_emb_all_genes,cluster="both",labRow=F,control_condition="WT")
dev.off()

pdf("DEGenes_emb_dendro.pdf",width=10,height=5)
csDendro(DEGenes_emb_all_genes)
dev.off()

### GO enrichment


## Adult vs Embryonic
pdf("All_adult_vs_embryonic_genes_venn.pdf",width=4,height=4)
draw.pairwise.venn(	length(DEGenes_emb_all),
					length(DEGenes_adult_all),
					length(intersect(DEGenes_emb_all,DEGenes_adult_all)),
					category=c("E14.5","Adult"),
					scaled=TRUE,
					euler.d=TRUE,
					fontfamily=rep("sans",3),
					cat.fontfamily = rep("sans",2), 
					fill=c("tomato","steelblue"),
					alpha=rep(0.5,2),
					lwd=rep(0.5,2)
					)
dev.off()