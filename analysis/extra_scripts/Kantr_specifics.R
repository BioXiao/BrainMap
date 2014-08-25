library(cummeRbund)
library(ggplot2)



analysisdir<-"/n/rinn_data1/users/agroff/GITHUB/BrainMap/analysis/"
diffdir<-"/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/diffs"

#Kdm5c in male v female 
adult_sexdiff_dir<-"/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/diffs/WT_Adult_Male_v_Female_balanced/"
embryonic_sexdiff_dir<-"/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/diffs/WT_Embryonic_Male_v_Female/"

#ADULT <-*** this is timepoint DE in Kantr wt/ko 
cuff<-readCufflinks(dir=adult_sexdiff_dir,gtfFile="/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/annotation/mm10_gencode_vM2_with_lncRNAs_and_LacZ.gtf",genome=genome)
kdm5c<-getGene(cuff,"Kdm5c")
genes<-getGenes(cuff,c("Xist","Eif2s3y","Kdm5c"))
kdm5c_exp_plot<-expressionBarplot(kdm5c,replicates=TRUE)+theme_bw()
kdm5c_digital_genotyping<-csHeatmap(genes,replicates=TRUE)+coord_equal()
Npas4<-getGene(cuff,"Npas4")
diffData(Npas4)
annotation(Npas4)


library(gridExtra)
plots<-list(kdm5c_digital_genotyping,kdm5c_exp_plot)
names(plots)<-c("Digital Genotyping","Kdm5c Expression")
listnames<-c(plots,list(nrow=1,ncol=2))

pdf("kdm5c_adult_MalevFemale.pdf", height=5,width=10)
do.call(grid.arrange,listnames)  
dev.off()




#EMBRYONIC
cuff<-readCufflinks(dir=embryonic_sexdiff_dir,gtfFile="/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/annotation/mm10_gencode_vM2_with_lncRNAs_and_LacZ.gtf",genome=genome)
kdm5c<-getGene(cuff,"Kdm5c")
genes<-getGenes(cuff,c("Xist","Eif2s3y","Kdm5c"))
kdm5c_exp_plot<-expressionBarplot(kdm5c,replicates=TRUE)+theme_bw()
kdm5c_digital_genotyping<-csHeatmap(genes,replicates=TRUE)+coord_equal()

plots<-list(kdm5c_digital_genotyping,kdm5c_exp_plot)
names(plots)<-c("Digital Genotyping","Kdm5c Expression")
listnames<-c(plots,list(nrow=1,ncol=2))

pdf("kdm5c_embryo_MalevFemale.pdf", height=5,width=10)
do.call(grid.arrange,listnames)  
dev.off()







#kantr_adult **** 
dir<-paste(diffdir,"Kantr_vs_WT_Adult",sep="/")
cuff<-readCufflinks(dir=dir,gtfFile="/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/annotation/mm10_gencode_vM2_with_lncRNAs_and_LacZ.gtf",genome=genome)
kantr<-getGene(cuff,"Kantr")
expressionBarplot(kantr, replicates=TRUE)+theme_bw()+scale_y_continuous(limits=c(0,20))
ggsave("Kantr_kantrAdult.pdf")
kdm5c<-getGene(cuff,"Kdm5c")
genes<-getGenes(cuff,c("Xist","Eif2s3y","Kdm5c"))
kdm5c_exp_plot<-expressionBarplot(kdm5c,replicates=TRUE)+theme_bw()
kdm5c_digital_genotyping<-csHeatmap(genes,replicates=TRUE)+coord_equal()

Npas4<-getGene(cuff,"Npas4")
expressionBarplot(Npas4,replicates=T) #*** Decreased in KO, error bars dont overlap
# Ahh boo, this is DE in adult male v female... 
# highly speculative, but decrease could be associated with overactivation, right? 


plots<-list(kdm5c_digital_genotyping,kdm5c_exp_plot)
names(plots)<-c("Digital Genotyping","Kdm5c Expression")
listnames<-c(plots,list(nrow=1,ncol=2))

pdf("kdm5c_inKantrAdult.pdf", height=5,width=10)
do.call(grid.arrange,listnames)  
dev.off()



#kantr_embryonic
dir<-paste(diffdir,"Kantr_vs_WT_Embryonic",sep="/")
cuff<-readCufflinks(dir=dir,gtfFile="/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/annotation/mm10_gencode_vM2_with_lncRNAs_and_LacZ.gtf",genome=genome)
kantr<-getGene(cuff,"Kantr")
expressionBarplot(kantr, replicates=TRUE)+theme_bw()+scale_y_continuous(limits=c(0,20))
ggsave("Kantr_kantrEmbryonic.pdf")
kdm5c<-getGene(cuff,"Kdm5c")
genes<-getGenes(cuff,c("Xist","Eif2s3y","Kdm5c"))
expressionBarplot(kdm5c,replicates=TRUE)
csHeatmap(genes,replicates=TRUE)





load("DEgenes_list.Rdata")
load("DEiso_list.Rdata")
load("DEcds_list.Rdata")

#GENES 
#5 kantr adult
#18 kantr embryo 
names(DE_genes_list)[18]

kantr_adult_genes<-DE_genes_list[[5]] #315
kantr_embryo_genes<-DE_genes_list[[18]] #766
genes_overlap<-intersect(kantr_adult_genes,kantr_embryo_genes) #27


#ISO 
names(DE_iso_list)[10]
#kantr adult 2
#kantr embryo 10
kantr_adult_iso<-DE_iso_list[[2]] #285
kantr_embryo_iso<-DE_iso_list[[10]] #500
iso_overlap<-intersect(kantr_adult_iso,kantr_embryo_iso) #20


#CDS
names(DE_cds_list)[18]
#5 kantr adult
#18 kantr embryo 
kantr_adult_cds<-DE_cds_list[[5]] #329
kantr_embryo_cds<-DE_cds_list[[18]] #648
cds_overlap<-intersect(kantr_adult_cds,kantr_embryo_cds) #25

#intersections<-lapply(seq(2,length(DE_lists)),function(i){
#  intersectDE<-intersect(DE_lists[[i]],DE_lists[[i-1]])})
#names(intersections)<-unlist(intersectionNames)





