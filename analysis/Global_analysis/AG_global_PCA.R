library(ggplot2)
library(reshape2)
library(stringr)
library(VennDiagram)
library(cummeRbund)
library(gridExtra)


# Setup 
adult_cuff<-readCufflinks(dir="/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/diffs/Adult_full",gtfFile="/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/annotation/mm10_gencode_vM2_with_lncRNAs_and_LacZ.gtf",genome="mm10")
embryonic_cuff<-readCufflinks(dir="/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/diffs/Embryonic_full",gtfFile="/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/annotation/mm10_gencode_vM2_with_lncRNAs_and_LacZ.gtf",genome="mm10")

DE_adult<-read.table("Global_analysis/DEGene_adult_all.tab")
DE_emb<-read.table("Global_analysis/DEGene_emb_all.tab")

DE_adule_genes<-getGenes(adult_cuff,DE_adult$V1)
DE_emb_genes<-getGenes(embryonic_cuff,DE_emb$V1)

pdf("adult_PCA_sigDEgenes.pdf")
PCAplot(DE_adule_genes,"PC2","PC3", replicates=T)+theme_bw()
dev.off()

reps<-replicates(adult_cuff)
files<-lapply(reps$file,function(x){strsplit(x, "/")})
#field 9 will be JR number 
files<-as.data.frame(files)
samples<-(t(files[10,]))
rownames(samples)<-NULL
samples<-data.frame(samples)
samples$repname<-reps$rep_name

pdf("adult_PCA_sigDEgenes_norep.pdf")
PCAplot(DE_adule_genes,"PC2","PC3")+theme_bw()
dev.off()

pdf("Emb_PCA_sigDEgenes.pdf")
PCAplot(DE_emb_genes,"PC2","PC3", replicates=T)+theme_bw()
dev.off()

pdf("Emb_PCA_sigDEgenes_norep.pdf")
PCAplot(DE_emb_genes,"PC2","PC3",)+theme_bw()
dev.off()

