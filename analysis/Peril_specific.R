#Peril

diffdir<-"/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/diffs"
library(cummeRbund)
genome="mm10"


#Peril Adult
dir<-paste(diffdir,"Peril_vs_WT_Adult",sep="/")
cuff<-readCufflinks(dir=dir,gtfFile="/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/annotation/mm10_gencode_vM2_with_lncRNAs_and_LacZ.gtf",genome=genome)
adult<-getGene(cuff,"Peril")
expressionBarplot(adult, replicates=TRUE)+theme_bw()+scale_y_continuous(limits=c(0,.20))
ggsave("Peril_expression_adult.pdf")

#Peril Embryo
dir<-paste(diffdir,"Peril_vs_WT_Embryonic",sep="/")
cuff<-readCufflinks(dir=dir,gtfFile="/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/annotation/mm10_gencode_vM2_with_lncRNAs_and_LacZ.gtf",genome=genome)
embryo<-getGene(cuff,"Peril")
expressionBarplot(embryo,replicates=TRUE)+theme_bw()+scale_y_continuous(limits=c(0,.20))
ggsave("Peril_expression_embryo.pdf")



#Venn
load("DEgenes_list.Rdata")
load("DEiso_list.Rdata")
load("DEcds_list.Rdata")

#GENES 
#11 Peril adult
#24 Peril embryo 
names(DE_genes_list)[24]

genes_a<-DE_genes_list[[11]]
length(genes_a) #215
genes_e<-DE_genes_list[[24]] #80
length(genes_e) #254
genes_overlap<-intersect(genes_a,genes_e)
length(genes_overlap) #22

#ISO 
names(DE_iso_list)[15]
#Peril adult  6
#Peril embryo 15
iso_a<-DE_iso_list[[6]]
length(iso_a) #159
iso_e<-DE_iso_list[[15]]
length(iso_e) #147
iso_overlap<-intersect(iso_a,iso_e)
length(iso_overlap) #13 



#CDS
names(DE_cds_list)[23]
#Peril adult 11
#Peril embryo 23
cds_a<-DE_cds_list[[11]] #202
length(cds_a)
cds_e<-DE_cds_list[[23]] #214
length(cds_e)
cds_overlap<-intersect(cds_a,cds_e) #22
length(cds_overlap)

#GO

library(ReactomePA)
library(DOSE)


genes<-getGenes(cuff,cds_overlap)
geneAnnot<-annotation(sigGenes)
geneNames<-geneAnnot$gene_short_name
sigDiff<-diffData(sigGenes)
sigDiff$foldChange<-sigDiff$value_1/sigDiff$value_2


library(clusterProfiler)
require(biomaRt)

ensembl <- useMart("ENSEMBL_MART_ENSEMBL","mmusculus_gene_ensembl", 
                   host="www.ensembl.org")

#Get entrezIDs
getEntrezIDs<-function (geneNames)
{
  tmp <- getBM(attributes = c("entrezgene"), filters = "mgi_symbol", values = geneNames, mart = ensembl)
  tmp
}
sigEntrez<-getEntrezIDs(geneNames)
sigEZ<-strsplit(as.character(sigEntrez), ", ")
sigEZ<-unlist(sigEZ)
require(org.Mm.eg.db) #mapping of entrez IDs to genbank

goBP<-enrichGO(gene=sigEZ, organism="mouse",ont="BP",pvalueCutoff=0.01,readable=T)

goMF<-enrichGO(gene=sigEZ, organism="mouse",ont="MF",pvalueCutoff=0.01,readable=T)

goCC<-enrichGO(gene=sigEZ, organism="mouse",ont="CC",pvalueCutoff=0.01,readable=T)

kegg<-enrichKEGG(gene=sigEZ, organism="mouse",pvalueCutoff=1, readable=T)

pathway<-enrichPathway(gene=sigEZ,organism="mouse",pvalueCutoff=0.01, readable=T)

plot(goBP,showCategory=20) + theme(axis.text.x=element_text(angle=-90,hjust=0)) + ggtitle("Enriched BP")+theme_bw()

plot(goMF,showCategory=20) + theme(axis.text.x=element_text(angle=-90,hjust=0)) + ggtitle("Enriched MF")+theme_bw()

plot(goCC,showCategory=20) + theme(axis.text.x=element_text(angle=-90,hjust=0)) + ggtitle("Enriched CC")+theme_bw()

plot(kegg, showCategory=20) + ggtitle("Kegg Pathways")+theme_bw()

plot(pathway,showCategory=20) + ggtitle("Reactome pathway enrichment")+theme_bw()
detach("package:biomaRt")