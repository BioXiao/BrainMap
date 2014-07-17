#make barplots for cis fig 4

library(cummeRbund)

#Eldr Embryonic 
dir<-"/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/diffs/Eldr_vs_WT_Embryonic"
cuff<-readCufflinks(dir=dir,gtfFile="/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/annotation/mm10_gencode_vM2_with_lncRNAs_and_LacZ.gtf",genome="mm10") 
egfr<-getGene(cuff,"Egfr")
egfr_fpkms<-fpkm(egfr)
egfr_fpkms$sample_name<-as.character(egfr_fpkms$sample_name)
egfr_fpkms[egfr_fpkms$sample_name=="Eldr",2]<-"KO"
egfr_fpkms$gene_name<-"Egfr"
egfr_fpkms$timepoint<-"Embryonic"



#Kantr Adult
dir<-"/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/diffs/Kantr_vs_WT_Adult"
cuff<-readCufflinks(dir=dir,gtfFile="/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/annotation/mm10_gencode_vM2_with_lncRNAs_and_LacZ.gtf",genome="mm10") 
kdm5c<-getGene(cuff,"Kdm5c")
kdm5c_fpkms<-fpkm(kdm5c)
kdm5c_fpkms$sample_name<-as.character(kdm5c_fpkms$sample_name)
kdm5c_fpkms[kdm5c_fpkms$sample_name=="Kantr",2]<-"KO"
kdm5c_fpkms$gene_name<-"Kdm5c"
kdm5c_fpkms$timepoint<-"Adult"

#LincCox2 adult
dir<-"/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/diffs/linc-Cox2_vs_WT_Adult"
cuff<-readCufflinks(dir=dir, gtfFile="/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/annotation/mm10_gencode_vM2_with_lncRNAs_and_LacZ.gtf",genome="mm10") 
ptgs2<-getGene(cuff,"Ptgs2")
ptgs2_fpkms<-fpkm(ptgs2)
ptgs2_fpkms$sample_name<-as.character(ptgs2_fpkms$sample_name)
ptgs2_fpkms[ptgs2_fpkms$sample_name=="linc_Cox2",2]<-"KO"
ptgs2_fpkms$gene_name<-"Ptgs2"
ptgs2_fpkms$timepoint<-"Adult"


dat<-rbind(egfr_fpkms,kdm5c_fpkms,ptgs2_fpkms)

#LincEnc1 embryonic
dir<-"/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/diffs/linc-Enc1_vs_WT_Embryonic/"
cuff<-readCufflinks(dir=dir, gtfFile="/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/annotation/mm10_gencode_vM2_with_lncRNAs_and_LacZ.gtf",genome="mm10") 
enc1_emb<-getGene(cuff,"Enc1")
enc1_emb_fpkms<-fpkm(enc1_emb)
enc1_emb_fpkms$sample_name<-as.character(enc1_emb_fpkms$sample_name)
enc1_emb_fpkms[enc1_emb_fpkms$sample_name=="linc_Enc1",2]<-"KO"
enc1_emb_fpkms$gene_name<-"Enc1"
enc1_emb_fpkms$timepoint<-"Embryonic"
dat<-rbind(dat,enc1_emb_fpkms)

#LincEnc1 adult
dir<-"/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/diffs/linc-Enc1_vs_WT_Adult"
cuff<-readCufflinks(dir=dir,gtfFile="/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/annotation/mm10_gencode_vM2_with_lncRNAs_and_LacZ.gtf",genome="mm10") 
enc1_adult<-getGene(cuff,"Enc1")
enc1_adult_fpkms<-fpkm(enc1_adult)
enc1_adult_fpkms$sample_name<-as.character(enc1_adult_fpkms$sample_name)
enc1_adult_fpkms[enc1_adult_fpkms$sample_name=="linc_Enc1",2]<-"KO" ###
enc1_adult_fpkms$gene_name<-"Enc1"
enc1_adult_fpkms$timepoint<-"Adult"

dat<-rbind(dat,enc1_adult_fpkms)

#Trp53cor1 adult
dir<-"/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/diffs/Trp53cor1_vs_WT_Adult/"
cuff<-readCufflinks(dir=dir,gtfFile="/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/annotation/mm10_gencode_vM2_with_lncRNAs_and_LacZ.gtf",genome="mm10") 
cdkn1a<-getGene(cuff,"Cdkn1a")
cdkn1a_fpkms<-fpkm(cdkn1a)
cdkn1a_fpkms$sample_name<-as.character(cdkn1a_fpkms$sample_name)
cdkn1a_fpkms[cdkn1a_fpkms$sample_name=="Trp53cor",2]<-"KO"
cdkn1a_fpkms$gene_name<-"Cdkn1a"
cdkn1a_fpkms$timepoint<-"Adult"

dat<-rbind(dat,cdkn1a_fpkms)

#Tug1 Embryonic
dir<-"/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/diffs/Tug1_vs_WT_Embryonic/"
cuff<-readCufflinks(dir=dir, gtfFile="/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/annotation/mm10_gencode_vM2_with_lncRNAs_and_LacZ.gtf",genome="mm10") 
morc2a_emb<-getGene(cuff,"Morc2a")
morc2a_emb_fpkms<-fpkm(morc2a_emb)
morc2a_emb_fpkms$sample_name<-as.character(morc2a_emb_fpkms$sample_name)
morc2a_emb_fpkms[morc2a_emb_fpkms$sample_name=="Tug1",2]<-"KO"
morc2a_emb_fpkms$gene_name<-"Morc2a"
morc2a_emb_fpkms$timepoint<-"Embryonic"

dat<-rbind(dat,morc2a_emb_fpkms)

#Tug1 Adult
dir<-"/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/diffs/Tug1_vs_WT_Adult/"
cuff<-readCufflinks(dir=dir,gtfFile="/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/annotation/mm10_gencode_vM2_with_lncRNAs_and_LacZ.gtf",genome="mm10") 
morc2a_adult<-getGene(cuff,"Morc2a")
morc2a_adult_fpkms<-fpkm(morc2a_adult)
morc2a_adult_fpkms$sample_name<-as.character(morc2a_adult_fpkms$sample_name)
morc2a_adult_fpkms[morc2a_adult_fpkms$sample_name=="Tug1",2]<-"KO"
morc2a_adult_fpkms$gene_name<-"Morc2a"
morc2a_adult_fpkms$timepoint<-"Adult"

dat<-rbind(dat,morc2a_adult_fpkms)

dat$sample_id<-paste(dat$gene_name,dat$timepoint,dat$sample_name,sep=" ")
dat$order[dat$sample_name=="WT"]<-1
dat$order[dat$sample_name=="KO"]<-2
dat$sample_order<-paste(dat$gene_name,dat$order)
dat<-dat[order(dat$sample_order),]

dat_save<-dat
dat$sample_id<-factor(dat$sample_id,levels=dat$sample_id)
dat$sample_name<-factor(dat$sample_name,levels=c("WT","KO"))

library(ggplot2)
#library(RColorBrewer)
#colors<-brewer.pal(8,"Blues")
colors<-c("#084594","#C6DBEF")
p<-ggplot(dat, aes(x=sample_name,y=fpkm,fill=sample_name))+theme_bw()
limits<-aes(ymax=conf_hi,ymin=conf_lo)
p<-p+geom_bar(stat="identity")+geom_errorbar(limits)+scale_fill_manual(values = colors)
p+facet_wrap(timepoint~gene_name,scales="free",nrow=2)
  #facet_grid(timepoint~gene_name,scales="free",space="free")
ggsave("Barplots_fig4_neighborgenes.pdf")