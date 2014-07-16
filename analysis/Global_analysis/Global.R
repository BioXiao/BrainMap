library(ggplot2)
library(reshape2)
library(stringr)
library(VennDiagram)
library(cummeRbund)
library(gridExtra)


# Setup 
adult_cuff<-readCufflinks(dir="../../data/diffs/Adult_full/")
embryonic_cuff<-readCufflinks(dir="../../data/diffs/Embryonic_full/")

#######################
# QC supplement
#######################
adult_SCV<-fpkmSCVPlot(genes(adult_cuff))
embryonic_SCV<-fpkmSCVPlot(genes(embryonic_cuff))

pdf("QC_SCV_plots.pdf",width=10,height=5)
grid.arrange(embryonic_SCV + scale_y_continuous(limits=c(0,0.3)),adult_SCV + scale_y_continuous(limits=c(0,0.3)),ncol=2)
dev.off()

#######################
# Genes
#######################
DEGeneListFile<-"DEgenes_lists_transpose.tab"
DEGeneLists<-read.table(DEGeneListFile,header=T,sep="\t",stringsAsFactors=F,na.string="")
DEGenes<-as.list(DEGeneLists)
DEGenes<-lapply(DEGenes, function (x) x[!is.na(x)]) 

## Strain names
strains<-unique(str_split_fixed(pattern="_",string=names(DEGenes),n=2)[,1])

## Adult
DEGenes_adult<-DEGenes[grepl("_adult_",names(DEGenes))]
DEGenes_adult_all<-unique(unlist(DEGenes_adult,use.names=FALSE))
write.table(DEGenes_adult_all,"DEGene_adult_all.tab",sep="\t",quote=F,col.names=F,row.names=F)

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
DEAdult_GO<-read.table("DEGene_adult_GO_enrichment.tab",sep="\t",header=T,stringsAsFactors=F)

DEAdult_GO$Term<-factor(DEAdult_GO$Term,levels=DEAdult_GO$Term[order(DEAdult_GO$PValue,decreasing=F)])

pdf("DEAdult_GO_plot.pdf",width=10,height=10)
p <-ggplot(DEAdult_GO[1:20,])
#p <- p + geom_point(aes(x=Term,y=-log10(PValue),size=Count,color=-log10(PValue))) + theme_bw() + scale_color_gradient(low="cornsilk1",high="darkred") + theme(axis.text.x=element_text(angle=-90,hjust=0))
p <- p + geom_bar(aes(x=Term,y=-log10(PValue),fill=-log10(PValue)),stat="identity",color="black",size=0.2) + theme_bw() + scale_fill_gradient(low="cornsilk1",high="darkred") + theme(axis.text.x=element_text(angle=-90,hjust=0))
p
dev.off()


## Embryonic
DEGenes_emb<-DEGenes[grepl("_embryo_",names(DEGenes))]
DEGenes_emb_all<-unique(unlist(DEGenes_emb,use.names=FALSE))
write.table(DEGenes_emb_all,"DEGene_emb_all.tab",sep="\t",quote=F,col.names=F,row.names=F)

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
DEEmb_GO<-read.table("DEGene_emb_GO_enrichment.tab",sep="\t",header=T,stringsAsFactors=F)

DEEmb_GO$Term<-factor(DEEmb_GO$Term,levels=DEEmb_GO$Term[order(DEEmb_GO$PValue,decreasing=F)])

pdf("DEEmb_GO_plot.pdf",width=10,height=10)
p <-ggplot(DEEmb_GO[1:20,])
#p <- p + geom_point(aes(x=Term,y=-log10(PValue),size=Count,color=-log10(PValue))) + theme_bw() + scale_color_gradient(low="cornsilk1",high="darkred") + theme(axis.text.x=element_text(angle=-90,hjust=0))
p <- p + geom_bar(aes(x=Term,y=-log10(PValue),fill=-log10(PValue)),stat="identity",color="black",size=0.2) + theme_bw() + scale_fill_gradient(low="cornsilk1",high="darkred") + theme(axis.text.x=element_text(angle=-90,hjust=0))
p
dev.off()

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

for (strain in strains[-c(1,12)]){
	write(strain,stderr())
	pdf(paste(strain,"strain_venns.pdf",sep="_"),width=4,height=3)
	emb <-DEGenes_emb[grepl(strain,names(DEGenes_emb))][[1]]
	adult <-DEGenes_adult[grepl(strain,names(DEGenes_adult))][[1]]
	draw.pairwise.venn(	length(emb),
								length(adult),
								length(intersect(emb,adult)),
								category=c("E14.5","Adult"),
								scaled=TRUE,
								euler.d=TRUE,
								fontfamily=rep("sans",3),
								cat.fontfamily = rep("sans",2), 
								fill=c("tomato","steelblue"),
								alpha=rep(0.5,2),
								lwd=rep(0.5,2),
								main=strain
								)
dev.off()
}

#######################
# Isoforms
#######################
DEIsoformListFile<-"DEiso_lists_transpose.tab"
DEIsoformLists<-read.table(DEIsoformListFile,header=T,sep="\t",stringsAsFactors=F,na.string="")
DEIsoforms<-as.list(DEIsoformLists)
DEIsoforms<-lapply(DEIsoforms, function (x) x[!is.na(x)]) 

## Adult
DEIsoforms_adult<-DEIsoforms[grepl("_adult_",names(DEIsoforms))]
DEIsoforms_adult_all<-unique(unlist(DEIsoforms_adult,use.names=FALSE))

### Lengths
DEIsoforms_adult_length<-as.data.frame(unlist(lapply(DEIsoforms_adult,length)))
colnames(DEIsoforms_adult_length)<-c("length")
rownames(DEIsoforms_adult_length)<-str_split_fixed(pattern="_",string=rownames(DEIsoforms_adult_length),n=2)[,1]
DEIsoforms_adult_length$name<-rownames(DEIsoforms_adult_length)

p <- ggplot(DEIsoforms_adult_length)

p <- p + geom_tile(aes(x=name,y=1,fill=length),line="black") + geom_text(aes(x=name,y=1,label=length))+ scale_fill_gradient(limits=c(0,500),low="white",high="darkred") + theme_bw() + coord_equal(1)

pdf("DEIsoforms_adult_length_tile.pdf",width=10,height=3)
p
dev.off()

## Embryonic
DEIsoforms_emb<-DEIsoforms[grepl("_embryo_",names(DEIsoforms))]
DEIsoforms_emb_all<-unique(unlist(DEIsoforms_emb,use.names=FALSE))

### Lengths
DEIsoforms_emb_length<-as.data.frame(unlist(lapply(DEIsoforms_emb,length)))
colnames(DEIsoforms_emb_length)<-c("length")
rownames(DEIsoforms_emb_length)<-str_split_fixed(pattern="_",string=rownames(DEIsoforms_emb_length),n=2)[,1]
DEIsoforms_emb_length$name<-rownames(DEIsoforms_emb_length)

p <- ggplot(DEIsoforms_emb_length)

p <- p + geom_tile(aes(x=name,y=1,fill=length),line="black") + geom_text(aes(x=name,y=1,label=length))+ scale_fill_gradient(limits=c(0,500),low="white",high="darkred") + theme_bw() + coord_equal(1)

pdf("DEIsoforms_emb_length_tile.pdf",width=10,height=3)
p
dev.off()

## Adult vs Embryonic
pdf("All_adult_vs_embryonic_Isoforms_venn.pdf",width=4,height=4)
draw.pairwise.venn(	length(DEIsoforms_emb_all),
					length(DEIsoforms_adult_all),
					length(intersect(DEIsoforms_emb_all,DEIsoforms_adult_all)),
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

#######################
# CDS
#######################
DECDSListFile<-"DECDS_lists_transpose.tab"
DECDSLists<-read.table(DECDSListFile,header=T,sep="\t",stringsAsFactors=F,na.string="")
DECDSs<-as.list(DECDSLists)
DECDSs<-lapply(DECDSs, function (x) x[!is.na(x)]) 

## Adult
DECDSs_adult<-DECDSs[grepl("_adult_",names(DECDSs))]
DECDSs_adult_all<-unique(unlist(DECDSs_adult,use.names=FALSE))

### Lengths
DECDSs_adult_length<-as.data.frame(unlist(lapply(DECDSs_adult,length)))
colnames(DECDSs_adult_length)<-c("length")
rownames(DECDSs_adult_length)<-str_split_fixed(pattern="_",string=rownames(DECDSs_adult_length),n=2)[,1]
DECDSs_adult_length$name<-rownames(DECDSs_adult_length)

p <- ggplot(DECDSs_adult_length)

p <- p + geom_tile(aes(x=name,y=1,fill=length),line="black") + geom_text(aes(x=name,y=1,label=length))+ scale_fill_gradient(limits=c(0,500),low="white",high="darkgreen") + theme_bw() + coord_equal(1)

pdf("DECDSs_adult_length_tile.pdf",width=10,height=3)
p
dev.off()

## Embryonic
DECDSs_emb<-DECDSs[grepl("_embryo_",names(DECDSs))]
DECDSs_emb_all<-unique(unlist(DECDSs_emb,use.names=FALSE))

### Lengths
DECDSs_emb_length<-as.data.frame(unlist(lapply(DECDSs_emb,length)))
colnames(DECDSs_emb_length)<-c("length")
rownames(DECDSs_emb_length)<-str_split_fixed(pattern="_",string=rownames(DECDSs_emb_length),n=2)[,1]
DECDSs_emb_length$name<-rownames(DECDSs_emb_length)

p <- ggplot(DECDSs_emb_length)

p <- p + geom_tile(aes(x=name,y=1,fill=length),line="black") + geom_text(aes(x=name,y=1,label=length))+ scale_fill_gradient(limits=c(0,500),low="white",high="darkgreen") + theme_bw() + coord_equal(1)

pdf("DECDSs_emb_length_tile.pdf",width=10,height=3)
p
dev.off()

## Adult vs Embryonic
pdf("All_adult_vs_embryonic_CDSs_venn.pdf",width=4,height=4)
draw.pairwise.venn(	length(DECDSs_emb_all),
					length(DECDSs_adult_all),
					length(intersect(DECDSs_emb_all,DECDSs_adult_all)),
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


###############
# Hox Genes
###############

HoxMatches<-findGene(adult_cuff,'Hox')
HoxMatches<-HoxMatches[grepl("^Hox",HoxMatches[,2]),]
HoxGenes_emb<-getGenes(embryonic_cuff,HoxMatches[,2])
HoxGenes_adult<-getGenes(adult_cuff,HoxMatches[,2])

pdf("HoxGenes_rep.pdf",width=10,height=8)
csHeatmap(HoxGenes_emb,rep=T) + ggtitle("E14.5 Hox Gene Expression")
csHeatmap(HoxGenes_adult,rep=T) + ggtitle("Adult Hox Gene Expression")
dev.off()


############
# Brn1 locus
############
Brn1GeneIDs<-c("Pou3f3",'linc-Brn1a','linc-Brn1b','Pou3f2','Pou3f1','Pou3f4','Oct6')
Brn1Genes_emb<-getGenes(embryonic_cuff,Brn1GeneIDs,sampleIdList=c("WT","linc_Brn1a","linc_Brn1b"))
Brn1Genes_adult<-getGenes(adult_cuff,Brn1GeneIDs,sampleIdList=c("WT","linc_Brn1a","linc_Brn1b"))

pdf("Pou3_family_genes_barplot.pdf",height=5,width=10)
expressionBarplot(Brn1Genes_adult,rep=T) + theme_bw() + scale_y_log10(limits=c(1,300)) + scale_fill_manual(values=c("#DDDDFF","#8888DD","#2222BB")) + theme(legend.justification=c(1,0), legend.position=c(1,0.8))
expressionBarplot(Brn1Genes_emb,rep=T) + theme_bw() + scale_y_log10(limits=c(1,300)) + scale_fill_manual(values=c("#FFDDDD","#DD8888","#BB2222")) + theme(legend.justification=c(1,0), legend.position=c(1,0.8))
dev.off()
