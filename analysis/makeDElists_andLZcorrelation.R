#Mouse Data Overview DE genelists 

library(cummeRbund)
library(xtable)
library(limma)
library(GSA)
library(gplots)
library(marray)
library(ggplot2)

analysisdir<-"/n/rinn_data1/users/agroff/GITHUB/BrainMap/analysis/"
diffdir<-"/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/diffs"
GTF<-"/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/annotation/mm10_gencode_vM2_with_lncRNAs_and_LacZ.gtf"

alpha<-0.05


names<-list.files(path=diffdir)
names<-gsub("_vs_WT","",names)
diffGeneSummary<-data.frame(t(names), row.names=NULL)
colnames(diffGeneSummary)<-names
diffGeneSummary$unit_test<-NULL
diffGeneSummary$init<-NULL
diffGeneSummary$Adult_full<-NULL
diffGeneSummary$Embryonic_full<-NULL
diffGeneSummary$WT_Adult_Male_v_Female<-NULL
diffGeneSummary$WT_Adult_Male_v_Female_balanced<-NULL
diffGeneSummary$WT_Embryonic_Male_v_Female<-NULL
names<-colnames(diffGeneSummary)
names<-gsub("-","",names)
colnames(diffGeneSummary)<-names

linc_LZ_correlation<-data.frame(matrix(ncol=length(names),nrow=3))
colnames(linc_LZ_correlation)=names
rownames(linc_LZ_correlation)=c("LZ", "EndogenousLinc","ActinInKOs")



# ADULT KNOCKOUT STRAINS 

### Celrr

dir<-"/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/diffs/Celrr_vs_WT_Adult"
cuff<-readCufflinks(dir=dir,gtfFile="/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/annotation/mm10_gencode_vM2_with_lncRNAs_and_LacZ.gtf",genome="mm10") 

sig<-getSig(cuff, alpha=alpha)
diffGeneSummary$Celrr_Adult<-length(sig)
DEgenes<-getGenes(cuff,sig)
celrr_adult_DE<-annotation(DEgenes)$gene_short_name

sigIso<-getSig(cuff,level="isoforms",alpha=alpha)
sigIsoforms<-getGenes(cuff,sigIso)
celrr_adult_iso<-annotation(sigIsoforms)$gene_short_name

sigCDS<-getSig(cuff,level="CDS",alpha=alpha)
sigCDSgenes<-getGenes(cuff,sigCDS)
celrr_adult_CDS<-annotation(sigCDSgenes)$gene_short_name

strain<-"Celrr"

print(strain);
LZ<-getGene(cuff,"LacZ")
print("got lz gene")
LZ_avg_fpkm<-fpkm(LZ)[which(fpkm(LZ)$sample_name==strain),3] 
linc<-getGene(cuff,"Celrr")
print("got celrr gene")
linc_avg_fpkm<-fpkm(linc)[which(fpkm(linc)$sample_name=="WT"),3] 
actin<-getGene(cuff,"Actb")
print ("got actin gene")
actin_fpkm<-fpkm(actin)[which(fpkm(actin)$sample_name==strain),3]
linc_LZ_correlation$Celrr_Adult<-c(LZ_avg_fpkm,linc_avg_fpkm,actin_fpkm)

rm(sigCDSgenes)
rm(sigIsoforms)
rm(sig)
rm(sigCDS)
rm(sigIso)
rm(dir)
rm(cuff)
rm(DEgenes)


print("removed everything, starting crnde")



### Crnde

dir<-"/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/diffs/Crnde_vs_WT_Adult"
cuff<-readCufflinks(dir=dir,gtfFile="/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/annotation/mm10_gencode_vM2_with_lncRNAs_and_LacZ.gtf",genome="mm10")



sig<-getSig(cuff, alpha=alpha)
diffGeneSummary$Crnde_Adult<-length(sig)
DEgenes<-getGenes(cuff,sig)
crnde_adult_DE<-annotation(DEgenes)$gene_short_name

sigIso<-getSig(cuff,level="isoforms",alpha=alpha)
sigIsoforms<-getGenes(cuff,sigIso)
crnde_adult_iso<-annotation(sigIsoforms)$gene_short_name

sigCDS<-getSig(cuff,level="CDS",alpha=alpha)
sigCDSgenes<-getGenes(cuff,sigCDS)
crnde_adult_CDS<-annotation(sigCDSgenes)$gene_short_name



strain<-"Crnde"
print(strain);LZ<-getGene(cuff,"LacZ")
LZ_avg_fpkm<-fpkm(LZ)[which(fpkm(LZ)$sample_name==strain),3] 
linc<-getGene(cuff,"Crnde")
linc_avg_fpkm<-fpkm(linc)[which(fpkm(linc)$sample_name=="WT"),3] 
actin<-getGene(cuff,"Actb")
actin_fpkm<-fpkm(actin)[which(fpkm(actin)$sample_name==strain),3]
linc_LZ_correlation$Crnde_Adult<-c(LZ_avg_fpkm,linc_avg_fpkm,actin_fpkm)

rm(sigCDSgenes)
rm(sigIsoforms)
rm(sig)
rm(sigCDS)
rm(sigIso)
rm(dir)
rm(cuff)
rm(DEgenes)




### Eldr
dir<-"/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/diffs/Eldr_vs_WT_Adult"

cuff<-readCufflinks(dir=dir,gtfFile="/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/annotation/mm10_gencode_vM2_with_lncRNAs_and_LacZ.gtf",genome="mm10") 

id<-"LacZ"
myGene<-getGene(cuff,id)
expressionBarplot(isoforms(myGene), replicates=T)
ids<-c("Eldr","LacZ")
myGenes<-getGenes(cuff,ids)
#csHeatmap(myGenes,replicates=TRUE)



sig<-getSig(cuff, alpha=alpha)
diffGeneSummary$Eldr_Adult<-length(sig)
DEgenes<-getGenes(cuff,sig)
eldr_adult_DE<-annotation(DEgenes)$gene_short_name

sigIso<-getSig(cuff,level="isoforms",alpha=alpha)
sigIsoforms<-getGenes(cuff,sigIso)
eldr_adult_iso<-annotation(sigIsoforms)$gene_short_name

sigCDS<-getSig(cuff,level="CDS",alpha=alpha)
sigCDSgenes<-getGenes(cuff,sigCDS)
eldr_adult_CDS<-annotation(sigCDSgenes)$gene_short_name



strain<-"Eldr"

print(strain);LZ<-getGene(cuff,"LacZ")
LZ_avg_fpkm<-fpkm(LZ)[which(fpkm(LZ)$sample_name==strain),3] 
linc<-getGene(cuff,"Eldr")
linc_avg_fpkm<-fpkm(linc)[which(fpkm(linc)$sample_name=="WT"),3] 
actin<-getGene(cuff,"Actb")
actin_fpkm<-fpkm(actin)[which(fpkm(actin)$sample_name==strain),3]
linc_LZ_correlation$Eldr_Adult<-c(LZ_avg_fpkm,linc_avg_fpkm,actin_fpkm)

rm(sigCDSgenes)
rm(sigIsoforms)
rm(sig)
rm(sigCDS)
rm(sigIso)
rm(dir)
rm(cuff)
rm(DEgenes)




### Haunt

dir<-"/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/diffs/Haunt_vs_WT_Adult/"
cuff<-readCufflinks(dir=dir,gtfFile="/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/annotation/mm10_gencode_vM2_with_lncRNAs_and_LacZ.gtf",genome="mm10") 
sig<-getSig(cuff, alpha=alpha)
diffGeneSummary$Haunt_Adult<-length(sig)
DEgenes<-getGenes(cuff,sig)
haunt_adult_DE<-annotation(DEgenes)$gene_short_name

sigIso<-getSig(cuff,level="isoforms",alpha=alpha)
sigIsoforms<-getGenes(cuff,sigIso)
haunt_adult_iso<-annotation(sigIsoforms)$gene_short_name

sigCDS<-getSig(cuff,level="CDS",alpha=alpha)
sigCDSgenes<-getGenes(cuff,sigCDS)
haunt_adult_CDS<-annotation(sigCDSgenes)$gene_short_name

strain<-"Haunt"

print(strain);LZ<-getGene(cuff,"LacZ")
LZ_avg_fpkm<-fpkm(LZ)[which(fpkm(LZ)$sample_name==strain),3] 
linc<-getGene(cuff,"Haunt")
linc_avg_fpkm<-fpkm(linc)[which(fpkm(linc)$sample_name=="WT"),3] 
actin<-getGene(cuff,"Actb")
actin_fpkm<-fpkm(actin)[which(fpkm(actin)$sample_name==strain),3]

linc_LZ_correlation$Haunt_Adult<-c(LZ_avg_fpkm,linc_avg_fpkm,actin_fpkm)


rm(sigCDSgenes)
rm(sigIsoforms)
rm(sig)
rm(sigCDS)
rm(sigIso)
rm(dir)
rm(cuff)
rm(DEgenes)






### Kantr (Jarid1C)

dir<-"/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/diffs/Kantr_vs_WT_Adult"

cuff<-readCufflinks(dir=dir,gtfFile="/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/annotation/mm10_gencode_vM2_with_lncRNAs_and_LacZ.gtf",genome="mm10") 




sig<-getSig(cuff, alpha=alpha)
diffGeneSummary$Kantr_Adult<-length(sig)
DEgenes<-getGenes(cuff,sig)
kantr_adult_DE<-annotation(DEgenes)$gene_short_name

sigIso<-getSig(cuff,level="isoforms",alpha=alpha)
sigIsoforms<-getGenes(cuff,sigIso)
kantr_adult_iso<-annotation(sigIsoforms)$gene_short_name

sigCDS<-getSig(cuff,level="CDS",alpha=alpha)
sigCDSgenes<-getGenes(cuff,sigCDS)
kantr_adult_CDS<-annotation(sigCDSgenes)$gene_short_name


strain<-"Kantr"

print(strain);LZ<-getGene(cuff,"LacZ")
LZ_avg_fpkm<-fpkm(LZ)[which(fpkm(LZ)$sample_name==strain),3] 
linc<-getGene(cuff,"Kantr")
linc_avg_fpkm<-fpkm(linc)[which(fpkm(linc)$sample_name=="WT"),3] 
actin<-getGene(cuff,"Actb")
actin_fpkm<-fpkm(actin)[which(fpkm(actin)$sample_name==strain),3]
linc_LZ_correlation$Kantr_Adult<-c(LZ_avg_fpkm,linc_avg_fpkm,actin_fpkm)


rm(sigCDSgenes)
rm(sigIsoforms)
rm(sig)
rm(sigCDS)
rm(sigIso)
rm(dir)
rm(cuff)
rm(DEgenes)






### Brn1a
dir<-"/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/diffs/linc-Brn1a_vs_WT_Adult/"

cuff<-readCufflinks(dir=dir,gtfFile="/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/annotation/mm10_gencode_vM2_with_lncRNAs_and_LacZ.gtf",genome="mm10") 
sig<-getSig(cuff, alpha=alpha)
diffGeneSummary$lincBrn1a_Adult<-length(sig)
DEgenes<-getGenes(cuff,sig)
brn1a_adult_DE<-annotation(DEgenes)$gene_short_name

sigIso<-getSig(cuff,level="isoforms",alpha=alpha)
sigIsoforms<-getGenes(cuff,sigIso)
brn1a_adult_iso<-annotation(sigIsoforms)$gene_short_name

sigCDS<-getSig(cuff,level="CDS",alpha=alpha)
sigCDSgenes<-getGenes(cuff,sigCDS)
brn1a_adult_CDS<-annotation(sigCDSgenes)$gene_short_name



strain<-"linc_Brn1a"
print(strain);LZ<-getGene(cuff,"LacZ")
LZ_avg_fpkm<-fpkm(LZ)[which(fpkm(LZ)$sample_name==strain),3] 
linc<-getGene(cuff,"linc-Brn1a")
linc_avg_fpkm<-fpkm(linc)[which(fpkm(linc)$sample_name=="WT"),3] 
actin<-getGene(cuff,"Actb")
actin_fpkm<-fpkm(actin)[which(fpkm(actin)$sample_name==strain),3]
linc_LZ_correlation$lincBrn1a_Adult<-c(LZ_avg_fpkm,linc_avg_fpkm,actin_fpkm)


rm(sigCDSgenes)
rm(sigIsoforms)
rm(sig)
rm(sigCDS)
rm(sigIso)
rm(dir)
rm(cuff)
rm(DEgenes)






### Brn1b

dir<-"/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/diffs/linc-Brn1b_vs_WT_Adult/"

cuff<-readCufflinks(dir=dir,gtfFile="/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/annotation/mm10_gencode_vM2_with_lncRNAs_and_LacZ.gtf",genome="mm10") 
sig<-getSig(cuff, alpha=alpha)
diffGeneSummary$lincBrn1b_Adult<-length(sig)
DEgenes<-getGenes(cuff,sig)
brn1b_adult_DE<-annotation(DEgenes)$gene_short_name

sigIso<-getSig(cuff,level="isoforms",alpha=alpha)
sigIsoforms<-getGenes(cuff,sigIso)
brn1b_adult_iso<-annotation(sigIsoforms)$gene_short_name

sigCDS<-getSig(cuff,level="CDS",alpha=alpha)
sigCDSgenes<-getGenes(cuff,sigCDS)
brn1b_adult_CDS<-annotation(sigCDSgenes)$gene_short_name



strain<-"linc_Brn1b"

print(strain);LZ<-getGene(cuff,"LacZ")
LZ_avg_fpkm<-fpkm(LZ)[which(fpkm(LZ)$sample_name==strain),3] 
linc<-getGene(cuff,"linc-Brn1b")
linc_avg_fpkm<-fpkm(linc)[which(fpkm(linc)$sample_name=="WT"),3] 
actin<-getGene(cuff,"Actb")
actin_fpkm<-fpkm(actin)[which(fpkm(actin)$sample_name==strain),3]
linc_LZ_correlation$lincBrn1b_Adult<-c(LZ_avg_fpkm,linc_avg_fpkm,actin_fpkm)


rm(sigCDSgenes)
rm(sigIsoforms)
rm(sig)
rm(sigCDS)
rm(sigIso)
rm(dir)
rm(cuff)
rm(DEgenes)





### linc-Cox2

dir<-"/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/diffs/linc-Cox2_vs_WT_Adult"

cuff<-readCufflinks(dir=dir, gtfFile="/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/annotation/mm10_gencode_vM2_with_lncRNAs_and_LacZ.gtf",genome="mm10") 

sig<-getSig(cuff, alpha=alpha)
diffGeneSummary$lincCox2_Adult<-length(sig)
DEgenes<-getGenes(cuff,sig)
lincCox2_adult_DE<-annotation(DEgenes)$gene_short_name

sigIso<-getSig(cuff,level="isoforms",alpha=alpha)
sigIsoforms<-getGenes(cuff,sigIso)
lincCox2_adult_iso<-annotation(sigIsoforms)$gene_short_name

sigCDS<-getSig(cuff,level="CDS",alpha=alpha)
sigCDSgenes<-getGenes(cuff,sigCDS)
lincCox2_adult_CDS<-annotation(sigCDSgenes)$gene_short_name
strain<-"linc_Cox2"
print(strain);LZ<-getGene(cuff,"LacZ")
LZ_avg_fpkm<-fpkm(LZ)[which(fpkm(LZ)$sample_name==strain),3] 
linc<-getGene(cuff,"linc-Cox2")
linc_avg_fpkm<-fpkm(linc)[which(fpkm(linc)$sample_name=="WT"),3] 
actin<-getGene(cuff,"Actb")
actin_fpkm<-fpkm(actin)[which(fpkm(actin)$sample_name==strain),3]
linc_LZ_correlation$lincCox2_Adult<-c(LZ_avg_fpkm,linc_avg_fpkm,actin_fpkm)

rm(sigCDSgenes)
rm(sigIsoforms)
rm(sig)
rm(sigCDS)
rm(sigIso)
rm(dir)
rm(cuff)
rm(DEgenes)





### linc-Enc1a

dir<-"/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/diffs/linc-Enc1_vs_WT_Adult"

cuff<-readCufflinks(dir=dir,gtfFile="/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/annotation/mm10_gencode_vM2_with_lncRNAs_and_LacZ.gtf",genome="mm10") 

sig<-getSig(cuff, alpha=alpha)
diffGeneSummary$lincEnc1_Adult<-length(sig)
DEgenes<-getGenes(cuff,sig)
lincEnc1_adult_DE<-annotation(DEgenes)$gene_short_name

sigIso<-getSig(cuff,level="isoforms",alpha=alpha)
sigIsoforms<-getGenes(cuff,sigIso)
lincEnc1_adult_iso<-annotation(sigIsoforms)$gene_short_name

sigCDS<-getSig(cuff,level="CDS",alpha=alpha)
sigCDSgenes<-getGenes(cuff,sigCDS)
lincEnc1_adult_CDS<-annotation(sigCDSgenes)$gene_short_name
strain<-"linc_Enc1"
print(strain);LZ<-getGene(cuff,"LacZ")
LZ_avg_fpkm<-fpkm(LZ)[which(fpkm(LZ)$sample_name==strain),3] 
linc<-getGene(cuff,"linc-Enc1")
linc_avg_fpkm<-fpkm(linc)[which(fpkm(linc)$sample_name=="WT"),3] 
actin<-getGene(cuff,"Actb")
actin_fpkm<-fpkm(actin)[which(fpkm(actin)$sample_name==strain),3]
linc_LZ_correlation$lincEnc1_Adult<-c(LZ_avg_fpkm,linc_avg_fpkm,actin_fpkm)

rm(sigCDSgenes)
rm(sigIsoforms)
rm(sig)
rm(sigCDS)
rm(sigIso)
rm(dir)
rm(cuff)
rm(DEgenes)


### Manr
dir<-"/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/diffs/Manr_vs_WT_Adult"

cuff<-readCufflinks(dir=dir, gtfFile="/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/annotation/mm10_gencode_vM2_with_lncRNAs_and_LacZ.gtf",genome="mm10") 

sig<-getSig(cuff, alpha=alpha)
diffGeneSummary$Manr_Adult<-length(sig)
DEgenes<-getGenes(cuff,sig)
manr_adult_DE<-annotation(DEgenes)$gene_short_name

sigIso<-getSig(cuff,level="isoforms",alpha=alpha)
sigIsoforms<-getGenes(cuff,sigIso)
manr_adult_iso<-annotation(sigIsoforms)$gene_short_name

sigCDS<-getSig(cuff,level="CDS",alpha=alpha)
sigCDSgenes<-getGenes(cuff,sigCDS)
manr_adult_CDS<-annotation(sigCDSgenes)$gene_short_name



strain<-"Manr"

print(strain);LZ<-getGene(cuff,"LacZ")
LZ_avg_fpkm<-fpkm(LZ)[which(fpkm(LZ)$sample_name==strain),3] 
linc<-getGene(cuff,"Manr")
linc_avg_fpkm<-fpkm(linc)[which(fpkm(linc)$sample_name=="WT"),3] 
actin<-getGene(cuff,"Actb")
actin_fpkm<-fpkm(actin)[which(fpkm(actin)$sample_name==strain),3]
linc_LZ_correlation$Manr_Adult<-c(LZ_avg_fpkm,linc_avg_fpkm,actin_fpkm)

rm(sigCDSgenes)
rm(sigIsoforms)
rm(sig)
rm(sigCDS)
rm(sigIso)
rm(dir)
rm(cuff)
rm(DEgenes)





### Peril

dir<-"/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/diffs/Peril_vs_WT_Adult"

cuff<-readCufflinks(dir=dir,gtfFile="/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/annotation/mm10_gencode_vM2_with_lncRNAs_and_LacZ.gtf",genome="mm10") 


sig<-getSig(cuff, alpha=alpha)
diffGeneSummary$Peril_Adult<-length(sig)
DEgenes<-getGenes(cuff,sig)
peril_adult_DE<-annotation(DEgenes)$gene_short_name

sigIso<-getSig(cuff,level="isoforms",alpha=alpha)
sigIsoforms<-getGenes(cuff,sigIso)
peril_adult_iso<-annotation(sigIsoforms)$gene_short_name

sigCDS<-getSig(cuff,level="CDS",alpha=alpha)
sigCDSgenes<-getGenes(cuff,sigCDS)
peril_adult_CDS<-annotation(sigCDSgenes)$gene_short_name


strain<-"Peril"
print(strain);LZ<-getGene(cuff,"LacZ")
LZ_avg_fpkm<-fpkm(LZ)[which(fpkm(LZ)$sample_name==strain),3] 
linc<-getGene(cuff,"Peril")
linc_avg_fpkm<-fpkm(linc)[which(fpkm(linc)$sample_name=="WT"),3] 
actin<-getGene(cuff,"Actb")
actin_fpkm<-fpkm(actin)[which(fpkm(actin)$sample_name==strain),3]
linc_LZ_correlation$Peril_Adult<-c(LZ_avg_fpkm,linc_avg_fpkm, actin_fpkm)

rm(sigCDSgenes)
rm(sigIsoforms)
rm(sig)
rm(sigCDS)
rm(sigIso)
rm(dir)
rm(cuff)
rm(DEgenes)






### Trp53cor1 (linc-p21)

dir<-"/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/diffs/Trp53cor1_vs_WT_Adult/"

cuff<-readCufflinks(dir=dir,gtfFile="/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/annotation/mm10_gencode_vM2_with_lncRNAs_and_LacZ.gtf",genome="mm10") 
sig<-getSig(cuff, alpha=alpha)
diffGeneSummary$Trp53cor1_Adult<-length(sig)
DEgenes<-getGenes(cuff,sig)
trp53cor1_adult_DE<-annotation(DEgenes)$gene_short_name

sigIso<-getSig(cuff,level="isoforms",alpha=alpha)
sigIsoforms<-getGenes(cuff,sigIso)
trp53cor1_adult_iso<-annotation(sigIsoforms)$gene_short_name

sigCDS<-getSig(cuff,level="CDS",alpha=alpha)
sigCDSgenes<-getGenes(cuff,sigCDS)
trp53cor1_adult_CDS<-annotation(sigCDSgenes)$gene_short_name



strain<-"Trp53cor"

print(strain);LZ<-getGene(cuff,"LacZ")
LZ_avg_fpkm<-fpkm(LZ)[which(fpkm(LZ)$sample_name==strain),3] 
linc<-getGene(cuff,"Trp53cor1")
linc_avg_fpkm<-fpkm(linc)[which(fpkm(linc)$sample_name=="WT"),3] 
actin<-getGene(cuff,"Actb")
actin_fpkm<-fpkm(actin)[which(fpkm(actin)$sample_name==strain),3]
linc_LZ_correlation$Trp53cor1_Adult<-c(LZ_avg_fpkm,linc_avg_fpkm,actin_fpkm)


rm(sigCDSgenes)
rm(sigIsoforms)
rm(sig)
rm(sigCDS)
rm(sigIso)
rm(dir)
rm(cuff)
rm(DEgenes)





### Tug1

dir<-"/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/diffs/Tug1_vs_WT_Adult/"

cuff<-readCufflinks(dir=dir,gtfFile="/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/annotation/mm10_gencode_vM2_with_lncRNAs_and_LacZ.gtf",genome="mm10") 
sig<-getSig(cuff, alpha=alpha)
diffGeneSummary$Tug1_Adult<-length(sig)
DEgenes<-getGenes(cuff,sig)
tug1_adult_DE<-annotation(DEgenes)$gene_short_name

sigIso<-getSig(cuff,level="isoforms",alpha=alpha)
sigIsoforms<-getGenes(cuff,sigIso)
tug1_adult_iso<-annotation(sigIsoforms)$gene_short_name

sigCDS<-getSig(cuff,level="CDS",alpha=alpha)
sigCDSgenes<-getGenes(cuff,sigCDS)
tug1_adult_CDS<-annotation(sigCDSgenes)$gene_short_name



strain<-"Tug1"
print(strain);LZ<-getGene(cuff,"LacZ")
LZ_avg_fpkm<-fpkm(LZ)[which(fpkm(LZ)$sample_name==strain),3] 
linc<-getGene(cuff,"Tug1")
linc_avg_fpkm<-fpkm(linc)[which(fpkm(linc)$sample_name=="WT"),3] 
actin<-getGene(cuff,"Actb")
actin_fpkm<-fpkm(actin)[which(fpkm(actin)$sample_name==strain),3]
linc_LZ_correlation$Tug1_Adult<-c(LZ_avg_fpkm,linc_avg_fpkm, actin_fpkm)


rm(sigCDSgenes)
rm(sigIsoforms)
rm(sig)
rm(sigCDS)
rm(sigIso)
rm(dir)
rm(cuff)
rm(DEgenes)



# Embryonic Samples

### Celrr

dir<-"/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/diffs/Celrr_vs_WT_Embryonic"

cuff<-readCufflinks(dir=dir,gtfFile="/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/annotation/mm10_gencode_vM2_with_lncRNAs_and_LacZ.gtf",genome="mm10") 



sig<-getSig(cuff, alpha=alpha)
diffGeneSummary$Celrr_Embryonic<-length(sig)
DEgenes<-getGenes(cuff,sig)
cellr_embryo_DE<-annotation(DEgenes)$gene_short_name

sigIso<-getSig(cuff,level="isoforms",alpha=alpha)
sigIsoforms<-getGenes(cuff,sigIso)
celrr_embryo_iso<-annotation(sigIsoforms)$gene_short_name

sigCDS<-getSig(cuff,level="CDS",alpha=alpha)
sigCDSgenes<-getGenes(cuff,sigCDS)
celrr_embryo_CDS<-annotation(sigCDSgenes)$gene_short_name

strain<-"Celrr"
print(strain);LZ<-getGene(cuff,"LacZ")
LZ_avg_fpkm<-fpkm(LZ)[which(fpkm(LZ)$sample_name==strain),3] 
linc<-getGene(cuff,"Celrr")
linc_avg_fpkm<-fpkm(linc)[which(fpkm(linc)$sample_name=="WT"),3] 
actin<-getGene(cuff,"Actb")
actin_fpkm<-fpkm(actin)[which(fpkm(actin)$sample_name==strain),3]
linc_LZ_correlation$Celrr_Embryonic<-c(LZ_avg_fpkm,linc_avg_fpkm, actin_fpkm)

rm(sigCDSgenes)
rm(sigIsoforms)
rm(sig)
rm(sigCDS)
rm(sigIso)
rm(dir)
rm(cuff)
rm(DEgenes)


### Crnde

dir<-"/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/diffs/Crnde_vs_WT_Embryonic"

cuff<-readCufflinks(dir=dir, gtfFile="/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/annotation/mm10_gencode_vM2_with_lncRNAs_and_LacZ.gtf",genome="mm10") 

sig<-getSig(cuff, alpha=alpha)
diffGeneSummary$Crnde_Embryonic<-length(sig)
DEgenes<-getGenes(cuff,sig)
crnde_embryo_DE<-annotation(DEgenes)$gene_short_name

sigIso<-getSig(cuff,level="isoforms",alpha=alpha)
sigIsoforms<-getGenes(cuff,sigIso)
crnde_embryo_iso<-annotation(sigIsoforms)$gene_short_name

sigCDS<-getSig(cuff,level="CDS",alpha=alpha)
sigCDSgenes<-getGenes(cuff,sigCDS)
crnde_embryo_CDS<-annotation(sigCDSgenes)$gene_short_name



strain<-"Crnde"

print(strain);LZ<-getGene(cuff,"LacZ")
LZ_avg_fpkm<-fpkm(LZ)[which(fpkm(LZ)$sample_name==strain),3] 
linc<-getGene(cuff,"Crnde")
linc_avg_fpkm<-fpkm(linc)[which(fpkm(linc)$sample_name=="WT"),3] 
actin<-getGene(cuff,"Actb")
actin_fpkm<-fpkm(actin)[which(fpkm(actin)$sample_name==strain),3]
linc_LZ_correlation$Crnde_Embryonic<-c(LZ_avg_fpkm,linc_avg_fpkm, actin_fpkm)


rm(sigCDSgenes)
rm(sigIsoforms)
rm(sig)
rm(sigCDS)
rm(sigIso)
rm(dir)
rm(cuff)
rm(DEgenes)






### Eldr

dir<-"/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/diffs/Eldr_vs_WT_Embryonic"

cuff<-readCufflinks(dir=dir,gtfFile="/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/annotation/mm10_gencode_vM2_with_lncRNAs_and_LacZ.gtf",genome="mm10") 


sig<-getSig(cuff, alpha=alpha)
diffGeneSummary$Eldr_Embryonic<-length(sig)
DEgenes<-getGenes(cuff,sig)
eldr_embryo_DE<-annotation(DEgenes)$gene_short_name

sigIso<-getSig(cuff,level="isoforms",alpha=alpha)
sigIsoforms<-getGenes(cuff,sigIso)
eldr_embryo_iso<-annotation(sigIsoforms)$gene_short_name

sigCDS<-getSig(cuff,level="CDS",alpha=alpha)
sigCDSgenes<-getGenes(cuff,sigCDS)
eldr_embryo_CDS<-annotation(sigCDSgenes)$gene_short_name


strain<-"Eldr"


print(strain);LZ<-getGene(cuff,"LacZ")
LZ_avg_fpkm<-fpkm(LZ)[which(fpkm(LZ)$sample_name==strain),3] 
linc<-getGene(cuff,"Eldr")
linc_avg_fpkm<-fpkm(linc)[which(fpkm(linc)$sample_name=="WT"),3] 
actin<-getGene(cuff,"Actb")
actin_fpkm<-fpkm(actin)[which(fpkm(actin)$sample_name==strain),3]
linc_LZ_correlation$Eldr_Embryonic<-c(LZ_avg_fpkm,linc_avg_fpkm, actin_fpkm)



rm(sigCDSgenes)
rm(sigIsoforms)
rm(sig)
rm(sigCDS)
rm(sigIso)
rm(dir)
rm(cuff)
rm(DEgenes)



### Haunt


dir<-"/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/diffs/Haunt_vs_WT_Embryonic"

cuff<-readCufflinks(dir=dir, gtfFile="/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/annotation/mm10_gencode_vM2_with_lncRNAs_and_LacZ.gtf",genome="mm10") 

sig<-getSig(cuff, alpha=alpha)
diffGeneSummary$Haunt_Embryonic<-length(sig)
DEgenes<-getGenes(cuff,sig)
haunt_embryo_DE<-annotation(DEgenes)$gene_short_name

sigIso<-getSig(cuff,level="isoforms",alpha=alpha)
sigIsoforms<-getGenes(cuff,sigIso)
haunt_embryo_iso<-annotation(sigIsoforms)$gene_short_name

sigCDS<-getSig(cuff,level="CDS",alpha=alpha)
sigCDSgenes<-getGenes(cuff,sigCDS)
haunt_embryo_CDS<-annotation(sigCDSgenes)$gene_short_name



strain<-"Haunt"

print(strain);LZ<-getGene(cuff,"LacZ")
LZ_avg_fpkm<-fpkm(LZ)[which(fpkm(LZ)$sample_name==strain),3] 
linc<-getGene(cuff,"Haunt")
linc_avg_fpkm<-fpkm(linc)[which(fpkm(linc)$sample_name=="WT"),3] 
actin<-getGene(cuff,"Actb")
actin_fpkm<-fpkm(actin)[which(fpkm(actin)$sample_name==strain),3]
linc_LZ_correlation$Haunt_Embryonic<-c(LZ_avg_fpkm,linc_avg_fpkm, actin_fpkm)

rm(sigCDSgenes)
rm(sigIsoforms)
rm(sig)
rm(sigCDS)
rm(sigIso)
rm(dir)
rm(cuff)
rm(DEgenes)




### Kantr

dir<-"/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/diffs/Kantr_vs_WT_Embryonic"

cuff<-readCufflinks(dir=dir, gtfFile="/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/annotation/mm10_gencode_vM2_with_lncRNAs_and_LacZ.gtf",genome="mm10") 



sig<-getSig(cuff, alpha=alpha)
diffGeneSummary$Kantr_Embryonic<-length(sig)
DEgenes<-getGenes(cuff,sig)
kantr_embryo_DE<-annotation(DEgenes)$gene_short_name

sigIso<-getSig(cuff,level="isoforms",alpha=alpha)
sigIsoforms<-getGenes(cuff,sigIso)
kantr_embryo_iso<-annotation(sigIsoforms)$gene_short_name

sigCDS<-getSig(cuff,level="CDS",alpha=alpha)
sigCDSgenes<-getGenes(cuff,sigCDS)
kantr_embryo_CDS<-annotation(sigCDSgenes)$gene_short_name


strain<-"Kantr"
print(strain);LZ<-getGene(cuff,"LacZ")
LZ_avg_fpkm<-fpkm(LZ)[which(fpkm(LZ)$sample_name==strain),3] 
linc<-getGene(cuff,"Kantr")
linc_avg_fpkm<-fpkm(linc)[which(fpkm(linc)$sample_name=="WT"),3]
actin<-getGene(cuff,"Actb")
actin_fpkm<-fpkm(actin)[which(fpkm(actin)$sample_name==strain),3]
linc_LZ_correlation$Kantr_Embryonic<-c(LZ_avg_fpkm,linc_avg_fpkm, actin_fpkm)



rm(sigCDSgenes)
rm(sigIsoforms)
rm(sig)
rm(sigCDS)
rm(sigIso)
rm(dir)
rm(cuff)
rm(DEgenes)



### Brn1a

dir<-"/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/diffs/linc-Brn1a_vs_WT_Embryonic/"

cuff<-readCufflinks(dir=dir, gtfFile="/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/annotation/mm10_gencode_vM2_with_lncRNAs_and_LacZ.gtf",genome="mm10") 

sig<-getSig(cuff, alpha=alpha)
diffGeneSummary$lincBrn1a_Embryonic<-length(sig)
DEgenes<-getGenes(cuff,sig)
lincBrn1a_embryo_DE<-annotation(DEgenes)$gene_short_name

sigIso<-getSig(cuff,level="isoforms",alpha=alpha)
sigIsoforms<-getGenes(cuff,sigIso)
lincBrn1a_embryo_iso<-annotation(sigIsoforms)$gene_short_name

sigCDS<-getSig(cuff,level="CDS",alpha=alpha)
sigCDSgenes<-getGenes(cuff,sigCDS)
lincBrn1a_embryo_CDS<-annotation(sigCDSgenes)$gene_short_name

strain<-"linc_Brn1a"
print(strain);LZ<-getGene(cuff,"LacZ")
LZ_avg_fpkm<-fpkm(LZ)[which(fpkm(LZ)$sample_name==strain),3] 
linc<-getGene(cuff,"linc-Brn1a")
linc_avg_fpkm<-fpkm(linc)[which(fpkm(linc)$sample_name=="WT"),3]
actin<-getGene(cuff,"Actb")
actin_fpkm<-fpkm(actin)[which(fpkm(actin)$sample_name==strain),3]
linc_LZ_correlation$lincBrn1a_Embryonic<-c(LZ_avg_fpkm,linc_avg_fpkm, actin_fpkm)


rm(sigCDSgenes)
rm(sigIsoforms)
rm(sig)
rm(sigCDS)
rm(sigIso)
rm(dir)
rm(cuff)
rm(DEgenes)






### Brn1b 

dir<-"/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/diffs/linc-Brn1b_vs_WT_Embryonic"

cuff<-readCufflinks(dir=dir,gtfFile="/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/annotation/mm10_gencode_vM2_with_lncRNAs_and_LacZ.gtf",genome="mm10") 
sig<-getSig(cuff, alpha=alpha)
diffGeneSummary$lincBrn1b_Embryonic<-length(sig)
DEgenes<-getGenes(cuff,sig)
lincbrn1b_embryo_DE<-annotation(DEgenes)$gene_short_name

sigIso<-getSig(cuff,level="isoforms",alpha=alpha)
sigIsoforms<-getGenes(cuff,sigIso)
lincbrn1b_embryo_iso<-annotation(sigIsoforms)$gene_short_name

sigCDS<-getSig(cuff,level="CDS",alpha=alpha)
sigCDSgenes<-getGenes(cuff,sigCDS)
lincbrn1b_embryo_CDS<-annotation(sigCDSgenes)$gene_short_name
strain<-"linc_Brn1b"
print(strain);LZ<-getGene(cuff,"LacZ")
LZ_avg_fpkm<-fpkm(LZ)[which(fpkm(LZ)$sample_name==strain),3] 
linc<-getGene(cuff,"linc-Brn1b")
linc_avg_fpkm<-fpkm(linc)[which(fpkm(linc)$sample_name=="WT"),3] 
actin<-getGene(cuff,"Actb")
actin_fpkm<-fpkm(actin)[which(fpkm(actin)$sample_name==strain),3]
linc_LZ_correlation$lincBrn1b_Embryonic<-c(LZ_avg_fpkm,linc_avg_fpkm, actin_fpkm)

rm(sigCDSgenes)
rm(sigIsoforms)
rm(sig)
rm(sigCDS)
rm(sigIso)
rm(dir)
rm(cuff)
rm(DEgenes)


### linc-Cox2

dir<-"/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/diffs/linc-Cox2_vs_WT_Embryonic/"

cuff<-readCufflinks(dir=dir, gtfFile="/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/annotation/mm10_gencode_vM2_with_lncRNAs_and_LacZ.gtf",genome="mm10") 

sig<-getSig(cuff, alpha=alpha)
diffGeneSummary$lincCox2_Embryonic<-length(sig)
DEgenes<-getGenes(cuff,sig)
lincCox2_embryo_DE<-annotation(DEgenes)$gene_short_name

sigIso<-getSig(cuff,level="isoforms",alpha=alpha)
sigIsoforms<-getGenes(cuff,sigIso)
lincCox2_embryo_iso<-annotation(sigIsoforms)$gene_short_name

sigCDS<-getSig(cuff,level="CDS",alpha=alpha)
sigCDSgenes<-getGenes(cuff,sigCDS)
lincCox2_embryo_CDS<-annotation(sigCDSgenes)$gene_short_name



strain<-"linc_Cox2"

print(strain);LZ<-getGene(cuff,"LacZ")
LZ_avg_fpkm<-fpkm(LZ)[which(fpkm(LZ)$sample_name==strain),3] 
linc<-getGene(cuff,"linc-Cox2")
linc_avg_fpkm<-fpkm(linc)[which(fpkm(linc)$sample_name=="WT"),3] 
actin<-getGene(cuff,"Actb")
actin_fpkm<-fpkm(actin)[which(fpkm(actin)$sample_name==strain),3]
linc_LZ_correlation$lincCox2_Embryonic<-c(LZ_avg_fpkm,linc_avg_fpkm, actin_fpkm)


rm(sigCDSgenes)
rm(sigIsoforms)
rm(sig)
rm(sigCDS)
rm(sigIso)
rm(dir)
rm(cuff)
rm(DEgenes)

### linc-Enc1a


dir<-"/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/diffs/linc-Enc1_vs_WT_Embryonic/"

cuff<-readCufflinks(dir=dir, gtfFile="/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/annotation/mm10_gencode_vM2_with_lncRNAs_and_LacZ.gtf",genome="mm10") 




sig<-getSig(cuff, alpha=alpha)
diffGeneSummary$lincEnc1_Embryonic<-length(sig)
DEgenes<-getGenes(cuff,sig)
lincEnc1_embryo_DE<-annotation(DEgenes)$gene_short_name

sigIso<-getSig(cuff,level="isoforms",alpha=alpha)
sigIsoforms<-getGenes(cuff,sigIso)
lincEnc1_embryo_iso<-annotation(sigIsoforms)$gene_short_name

sigCDS<-getSig(cuff,level="CDS",alpha=alpha)
sigCDSgenes<-getGenes(cuff,sigCDS)
lincEnc1_embryo_CDS<-annotation(sigCDSgenes)$gene_short_name


strain<-"linc_Enc1"
print(strain);LZ<-getGene(cuff,"LacZ")
LZ_avg_fpkm<-fpkm(LZ)[which(fpkm(LZ)$sample_name==strain),3] 
linc<-getGene(cuff,"linc-Enc1")
linc_avg_fpkm<-fpkm(linc)[which(fpkm(linc)$sample_name=="WT"),3] 
actin<-getGene(cuff,"Actb")
actin_fpkm<-fpkm(actin)[which(fpkm(actin)$sample_name==strain),3]
linc_LZ_correlation$lincEnc1_Embryonic<-c(LZ_avg_fpkm,linc_avg_fpkm, actin_fpkm)



rm(sigCDSgenes)
rm(sigIsoforms)
rm(sig)
rm(sigCDS)
rm(sigIso)
rm(dir)
rm(cuff)
rm(DEgenes)



### Manr 

dir<-"/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/diffs/Manr_vs_WT_Embryonic/"

cuff<-readCufflinks(dir=dir,gtfFile="/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/annotation/mm10_gencode_vM2_with_lncRNAs_and_LacZ.gtf",genome="mm10") 




sig<-getSig(cuff, alpha=alpha)
diffGeneSummary$Manr_Embryonic<-length(sig)
DEgenes<-getGenes(cuff,sig)
manr_embryo_DE<-annotation(DEgenes)$gene_short_name

sigIso<-getSig(cuff,level="isoforms",alpha=alpha)
sigIsoforms<-getGenes(cuff,sigIso)
manr_embryo_iso<-annotation(sigIsoforms)$gene_short_name

sigCDS<-getSig(cuff,level="CDS",alpha=alpha)
sigCDSgenes<-getGenes(cuff,sigCDS)
manr_embryo_CDS<-annotation(sigCDSgenes)$gene_short_name



strain<-"Manr"

print(strain);LZ<-getGene(cuff,"LacZ")
LZ_avg_fpkm<-fpkm(LZ)[which(fpkm(LZ)$sample_name==strain),3] 
linc<-getGene(cuff,"Manr")
linc_avg_fpkm<-fpkm(linc)[which(fpkm(linc)$sample_name=="WT"),3] 
actin<-getGene(cuff,"Actb")
actin_fpkm<-fpkm(actin)[which(fpkm(actin)$sample_name==strain),3]
linc_LZ_correlation$Manr_Embryonic<-c(LZ_avg_fpkm,linc_avg_fpkm, actin_fpkm)

rm(sigCDSgenes)
rm(sigIsoforms)
rm(sig)
rm(sigCDS)
rm(sigIso)
rm(dir)
rm(cuff)
rm(DEgenes)


### Peril


dir<-"/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/diffs/Peril_vs_WT_Embryonic/"

cuff<-readCufflinks(dir=dir, gtfFile="/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/annotation/mm10_gencode_vM2_with_lncRNAs_and_LacZ.gtf",genome="mm10") 




sig<-getSig(cuff, alpha=alpha)
diffGeneSummary$Peril_Embryonic<-length(sig)
DEgenes<-getGenes(cuff,sig)
peril_embryo_DE<-annotation(DEgenes)$gene_short_name

sigIso<-getSig(cuff,level="isoforms",alpha=alpha)
sigIsoforms<-getGenes(cuff,sigIso)
peril_embryo_iso<-annotation(sigIsoforms)$gene_short_name

sigCDS<-getSig(cuff,level="CDS",alpha=alpha)
sigCDSgenes<-getGenes(cuff,sigCDS)
peril_embryo_CDS<-annotation(sigCDSgenes)$gene_short_name



strain<-"Peril"

print(strain);LZ<-getGene(cuff,"LacZ")
LZ_avg_fpkm<-fpkm(LZ)[which(fpkm(LZ)$sample_name==strain),3] 
linc<-getGene(cuff,"Peril")
linc_avg_fpkm<-fpkm(linc)[which(fpkm(linc)$sample_name=="WT"),3] 

actin<-getGene(cuff,"Actb")
actin_fpkm<-fpkm(actin)[which(fpkm(actin)$sample_name==strain),3]
linc_LZ_correlation$Peril_Embryonic<-c(LZ_avg_fpkm,linc_avg_fpkm,actin_fpkm)


rm(sigCDSgenes)
rm(sigIsoforms)
rm(sig)
rm(sigCDS)
rm(sigIso)
rm(dir)
rm(cuff)
rm(DEgenes)



### Trp53cor1 (linc-p21)

dir<-"/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/diffs/Trp53cor1_vs_WT_Embryonic/"

cuff<-readCufflinks(dir=dir, gtfFile="/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/annotation/mm10_gencode_vM2_with_lncRNAs_and_LacZ.gtf",genome="mm10") 



sig<-getSig(cuff, alpha=alpha)
diffGeneSummary$Trp53cor1_Embryonic<-length(sig)
DEgenes<-getGenes(cuff,sig)
trp53cor1_embryo_DE<-annotation(DEgenes)$gene_short_name

sigIso<-getSig(cuff,level="isoforms",alpha=alpha)
sigIsoforms<-getGenes(cuff,sigIso)
trp53cor1_embryo_iso<-annotation(sigIsoforms)$gene_short_name

sigCDS<-getSig(cuff,level="CDS",alpha=alpha)
sigCDSgenes<-getGenes(cuff,sigCDS)
trp53cor1_embryo_CDS<-annotation(sigCDSgenes)$gene_short_name


strain<-"Trp53cor"
print(strain);LZ<-getGene(cuff,"LacZ")
LZ_avg_fpkm<-fpkm(LZ)[which(fpkm(LZ)$sample_name==strain),3] 
linc<-getGene(cuff,"Trp53cor1")
linc_avg_fpkm<-fpkm(linc)[which(fpkm(linc)$sample_name=="WT"),3] 
actin<-getGene(cuff,"Actb")
actin_fpkm<-fpkm(actin)[which(fpkm(actin)$sample_name==strain),3]
linc_LZ_correlation$Trp53cor1_Embryonic<-c(LZ_avg_fpkm,linc_avg_fpkm, actin_fpkm)

rm(sigCDSgenes)
rm(sigIsoforms)
rm(sig)
rm(sigCDS)
rm(sigIso)
rm(dir)
rm(cuff)
rm(DEgenes)



### Tug1

dir<-"/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/diffs/Tug1_vs_WT_Embryonic/"

cuff<-readCufflinks(dir=dir, gtfFile="/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/annotation/mm10_gencode_vM2_with_lncRNAs_and_LacZ.gtf",genome="mm10") 

sig<-getSig(cuff, alpha=alpha)
diffGeneSummary$Tug1_Embryonic<-length(sig)
DEgenes<-getGenes(cuff,sig)
tug1_embryo_DE<-annotation(DEgenes)$gene_short_name

sigIso<-getSig(cuff,level="isoforms",alpha=alpha)
sigIsoforms<-getGenes(cuff,sigIso)
tug1_embryo_iso<-annotation(sigIsoforms)$gene_short_name

sigCDS<-getSig(cuff,level="CDS",alpha=alpha)
sigCDSgenes<-getGenes(cuff,sigCDS)
tug1_embryo_CDS<-annotation(sigCDSgenes)$gene_short_name



strain<-"Tug1"

print(strain);LZ<-getGene(cuff,"LacZ")
LZ_avg_fpkm<-fpkm(LZ)[which(fpkm(LZ)$sample_name==strain),3]
linc<-getGene(cuff,"Tug1")
linc_avg_fpkm<-fpkm(linc)[which(fpkm(linc)$sample_name=="WT"),3]
actin<-getGene(cuff,"Actb")
actin_fpkm<-fpkm(actin)[which(fpkm(actin)$sample_name==strain),3]
linc_LZ_correlation$Tug1_Embryonic<-c(LZ_avg_fpkm,linc_avg_fpkm, actin_fpkm)

rm(sigCDSgenes)
rm(sigIsoforms)
rm(sig)
rm(sigCDS)
rm(sigIso)
rm(dir)
rm(cuff)
rm(DEgenes)



k <- 100
myColors<-maPalette(low="white",high="green",k=k)
myBreaks<-seq(0,800,length.out=(k+1))

x<-as.numeric(diffGeneSummary[1,])

con<-file("diffGeneSummary.csv")
writeLines(paste(names(diffGeneSummary),diffGeneSummary,sep=","),con)
close(con)

write.csv(linc_LZ_correlation,"/n/rinn_data1/users/agroff/GITHUB/BrainMap/analysis/linc_lz_correlation.csv")



list_names<-ls()[grep("_DE",ls())]
DE_lists<-lapply(list_names,get)
names(DE_lists)<-list_names
DE_lists[12]<-NULL
DE_lists[3]<-NULL
list_names<-names(DE_lists)

sink("DEgenes_lists.tab")
for(i in seq(1,length(DE_lists))){
  list<-paste(unlist(DE_lists[[i]]),sep=",")
  name<-list_names[[i]]
  final<-c(name,list)
  cat(final,sep="\t")
  cat("\n")
}
sink()


iso_list_names<-ls()[grep("_iso",ls())]
iso_DE_lists<-lapply(iso_list_names,get)
names(iso_DE_lists)<-iso_list_names

sink("DEiso_lists.tab")
for(i in seq(1,length(iso_DE_lists))){
  list<-paste(unlist(iso_DE_lists[[i]]),sep=",")
  name<-iso_list_names[[i]]
  final<-c(name,list)
  cat(final,sep="\t")
  cat("\n")
}
sink()

cds_list_names<-ls()[grep("_CDS",ls())]
cds_DE_lists<-lapply(cds_list_names,get)
names(cds_DE_lists)<-cds_list_names

sink("DECDS_lists.tab")
for(i in seq(1,length(cds_DE_lists))){
  list<-paste(unlist(cds_DE_lists[[i]]),sep=",")
  name<-cds_list_names[[i]]
  final<-c(name,list)
  cat(final,sep="\t")
  cat("\n")
}
sink()