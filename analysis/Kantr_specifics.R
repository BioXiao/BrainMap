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
expressionBarplot(kdm5c,replicates=TRUE)
csHeatmap(genes,replicates=TRUE)
Npas4<-getGene(cuff,"Npas4")
diffData(Npas4)
annotation(Npas4)

#EMBRYONIC
cuff<-readCufflinks(dir=embryonic_sexdiff_dir,gtfFile="/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/annotation/mm10_gencode_vM2_with_lncRNAs_and_LacZ.gtf",genome=genome)
kdm5c<-getGene(cuff,"Kdm5c")
genes<-getGenes(cuff,c("Xist","Eif2s3y","Kdm5c"))
expressionBarplot(kdm5c,replicates=TRUE)
csHeatmap(genes,replicates=TRUE)


#kantr_adult **** 
dir<-paste(diffdir,"Kantr_vs_WT_Adult",sep="/")
cuff<-readCufflinks(dir=dir,gtfFile="/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/annotation/mm10_gencode_vM2_with_lncRNAs_and_LacZ.gtf",genome=genome)
kdm5c<-getGene(cuff,"Kdm5c")
genes<-getGenes(cuff,c("Xist","Eif2s3y","Kdm5c"))
expressionBarplot(kdm5c,replicates=TRUE)
csHeatmap(genes,replicates=TRUE)

Npas4<-getGene(cuff,"Npas4")
expressionBarplot(Npas4,replicates=T) #*** Decreased in KO, error bars dont overlap
# Ahh boo, this is DE in adult male v female... 
# highly speculative, but decrease could be associated with overactivation, right? 



#kantr_embryonic
dir<-paste(diffdir,"Kantr_vs_WT_Embryonic",sep="/")
cuff<-readCufflinks(dir=dir,gtfFile="/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/annotation/mm10_gencode_vM2_with_lncRNAs_and_LacZ.gtf",genome=genome)
kdm5c<-getGene(cuff,"Kdm5c")
genes<-getGenes(cuff,c("Xist","Eif2s3y","Kdm5c"))
expressionBarplot(kdm5c,replicates=TRUE)
csHeatmap(genes,replicates=TRUE)


