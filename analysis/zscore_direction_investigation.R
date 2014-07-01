

r_ucfirst <- function (str) {
  paste(toupper(substring(str, 1, 1)), tolower(substring(str, 2)), sep = "")
}

gene_set_index <- function(genelist, short_names){
  which(short_names %in% genelist)   
}


#brn1b neg z score list
library(cummeRbund)
dir<-"/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/diffs/linc-Brn1b_vs_WT_Embryonic"
GTF<-"/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/annotation/mm10_gencode_vM2_with_lncRNAs_and_LacZ.gtf"
genome<-"mm10"
cuff<-readCufflinks(dir=dir,gtfFile=GTF,genome=genome)
library(GSA)
reactome_gs <- GSA.read.gmt("/n/rinn_data1/users/agroff/GSEA/c2.cp.reactome.v4.0.symbols.gmt")

grep("CELL_CYCLE",reactome_gs$geneset.names)
negZscore<-reactome_gs$genesets[63]
negZscore<-unlist(negZscore)

population<-genes(cuff)
population.diff<-diffData(population)
annotation<-annotation(genes(cuff))
gene_names<-merge(annotation,population.diff)
df.pop<-data.frame("short_name"=toupper(gene_names$gene_short_name),"test_stat"=gene_names$test_stat)
df.pop.unique<-unique(df.pop)
rownames(df.pop.unique)<-NULL
df.pop.unique.ordered<-df.pop.unique[order(df.pop.unique$test_stat),]
Input.df<-df.pop.unique.ordered
Input.df$short_name<-as.character(Input.df$short_name)


inpop<-negZscore[gene_set_index(Input.df$short_name,negZscore)]

formattedinpop<-lapply(inpop,r_ucfirst)
formattedinpop<-unlist(formattedinpop)
negzscoreGenes<-getGenes(cuff,formattedinpop)
csHeatmap(negzscoreGenes,replicates=T)
annotnegzscore<-annotation(negzscoreGenes)
diffnegz<-diffData(negzscoreGenes)
downinKO<-diffnegz[which(diffnegz$test_stat<0),]
upinKO<-diffnegz[which(diffnegz$test_stat>0),]