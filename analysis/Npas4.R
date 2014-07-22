
# Keeping a lid on it (Gina Turrigiano, Nature V511)
# 
# Npas4 dampens activated excitatory circuits by recruiting inhbitory signals 
# to excitatory neurons. Vice versa in inhibitory neurons. 
# ^ overview article in Nature
# actual research article:
# http://www.sciencedirect.com/science/article/pii/S0092867414005479
# 


for(i in seq(1:26)){
  list<-DE_genes_list[[i]]
  res<-grep("Npas4",list)
  if(length(res)>0){
    print(names(DE_genes_list)[i])
  }
}

[1] "celrr_adult_DE"
[1] "crnde_adult_DE"
[1] "haunt_adult_DE"
[1] "kantr_adult_DE"
[1] "brn1a_adult_DE"
[1] "brn1b_adult_DE"
[1] "peril_adult_DE"

diffdir<-"/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/diffs"
library(cummeRbund)
genome="mm10"


#Celrr Adult
dir<-paste(diffdir,"Celrr_vs_WT_Adult",sep="/")
cuff<-readCufflinks(dir=dir,gtfFile="/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/annotation/mm10_gencode_vM2_with_lncRNAs_and_LacZ.gtf",genome=genome)
Npas4<-getGene(cuff,"Npas4")
expressionPlot(Npas4,replicates=T) #Increased slightly in KO

#Kantr Adult
dir<-paste(diffdir,"Kantr_vs_WT_Adult",sep="/")
cuff<-readCufflinks(dir=dir,gtfFile="/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/annotation/mm10_gencode_vM2_with_lncRNAs_and_LacZ.gtf",genome=genome)
Npas4<-getGene(cuff,"Npas4")
expressionPlot(Npas4,replicates=T) #*** Decreased in KO, error bars dont overlap
# highly speculative, but decrease could be associated with overactivation, right? 


#Brn1b Adult

dir<-paste(diffdir,"linc-Brn1b_vs_WT_Adult",sep="/")
cuff<-readCufflinks(dir=dir,gtfFile="/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/annotation/mm10_gencode_vM2_with_lncRNAs_and_LacZ.gtf",genome=genome)
Npas4<-getGene(cuff,"Npas4")
expressionPlot(Npas4,replicates=T)


#Peril Adult
dir<-paste(diffdir,"Peril_vs_WT_Adult",sep="/")
cuff<-readCufflinks(dir=dir,gtfFile="/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/annotation/mm10_gencode_vM2_with_lncRNAs_and_LacZ.gtf",genome=genome)
Npas4<-getGene(cuff,"Npas4")
expressionPlot(Npas4,replicates=T) #up


#Crnde Adult
dir<-paste(diffdir,"Crnde_vs_WT_Adult",sep="/")
cuff<-readCufflinks(dir=dir,gtfFile="/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/annotation/mm10_gencode_vM2_with_lncRNAs_and_LacZ.gtf",genome=genome)
Npas4<-getGene(cuff,"Npas4")
expressionPlot(Npas4,replicates=T) #down 

#Haunt Adult
dir<-paste(diffdir,"Haunt_vs_WT_Adult",sep="/")
cuff<-readCufflinks(dir=dir,gtfFile="/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/annotation/mm10_gencode_vM2_with_lncRNAs_and_LacZ.gtf",genome=genome)
Npas4<-getGene(cuff,"Npas4")
expressionPlot(Npas4,replicates=T) #up

#Brn1a Adult
dir<-paste(diffdir,"linc-Brn1a_vs_WT_Adult",sep="/")
cuff<-readCufflinks(dir=dir,gtfFile="/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/annotation/mm10_gencode_vM2_with_lncRNAs_and_LacZ.gtf",genome=genome)
Npas4<-getGene(cuff,"Npas4")
expressionPlot(Npas4,replicates=T) #up 
