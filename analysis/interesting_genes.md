Interesting Strains 
========================================================

# Kantr

## Adult Kantr


```r
dir<-"/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/diffs/Kantr_vs_WT_Adult"
alpha<-0.05
setwd(dir)
id<-"Kantr"
cuff<-readCufflinks(gtfFile="/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/annotation/mm10_gencode_vM2_with_lncRNAs_and_LacZ.gtf",genome="mm10") 
```

```
## Error: could not find function "readCufflinks"
```

```r
csDendro(genes(cuff),replicates=TRUE)
```

```
## Error: could not find function "csDendro"
```

```r
myGene<-getGene(cuff,id)
```

```
## Error: could not find function "getGene"
```


```r
sigAdult<-getSig(cuff, alpha=alpha)
```

```
## Error: could not find function "getSig"
```


```r
library(ReactomePA)
```

```
## Loading required package: DBI
## Loading required package: AnnotationDbi
## Loading required package: BiocGenerics
## Loading required package: parallel
## 
## Attaching package: 'BiocGenerics'
## 
## The following objects are masked from 'package:parallel':
## 
##     clusterApply, clusterApplyLB, clusterCall, clusterEvalQ,
##     clusterExport, clusterMap, parApply, parCapply, parLapply,
##     parLapplyLB, parRapply, parSapply, parSapplyLB
## 
## The following object is masked from 'package:stats':
## 
##     xtabs
## 
## The following objects are masked from 'package:base':
## 
##     anyDuplicated, append, as.data.frame, as.vector, cbind,
##     colnames, duplicated, eval, evalq, Filter, Find, get,
##     intersect, is.unsorted, lapply, Map, mapply, match, mget,
##     order, paste, pmax, pmax.int, pmin, pmin.int, Position, rank,
##     rbind, Reduce, rep.int, rownames, sapply, setdiff, sort,
##     table, tapply, union, unique, unlist
## 
## Loading required package: Biobase
## Welcome to Bioconductor
## 
##     Vignettes contain introductory material; view with
##     'browseVignettes()'. To cite Bioconductor, see
##     'citation("Biobase")', and for packages 'citation("pkgname")'.
```

```
## Warning: Can't find a usable tk.tcl in the following directories: 
##     /n/sw/centos6/tcl8.5.14/lib/tcl8.5/tk8.5 /n/sw/centos6/tcl8.5.14/lib/tk8.5 ./lib/tk8.5 ./library
## 
## 
## 
## This probably means that tk wasn't installed properly.
```

```
## 
```

```r
library(DOSE)
```

```
## Loading required package: ggplot2
## 
## Attaching package: 'DOSE'
## 
## The following object is masked from 'package:ReactomePA':
## 
##     gseAnalyzer
```

```r
library(clusterProfiler)
```

```
## 
## KEGG.db contains mappings based on older data because the original
##   resource was removed from the the public domain before the most
##   recent update was produced. This package should now be
##   considered deprecated and future versions of Bioconductor may
##   not have it available.  Users who want more current data are
##   encouraged to look at the KEGGREST or reactome.db packages
```

```r
require(biomaRt)
```

```
## Loading required package: biomaRt
```

```r
ensembl <- useMart("ENSEMBL_MART_ENSEMBL","mmusculus_gene_ensembl", 
host="www.ensembl.org")

#Get entrezIDs
getEntrezIDs<-function (geneNames)
{
    tmp <- getBM(attributes = c("entrezgene"), filters = "mgi_symbol", values = geneNames, mart = ensembl)
    tmp
}
```


```r
sigGeneIDs<-getSig(cuff, alpha=alpha)
```

```
## Error: could not find function "getSig"
```

```r
sigGenes<-getGenes(cuff,sigGeneIDs)
```

```
## Error: could not find function "getGenes"
```

```r
geneAnnot<-annotation(sigGenes)
```

```
## Error: error in evaluating the argument 'object' in selecting a method for function 'annotation': Error: object 'sigGenes' not found
```

```r
geneNames<-geneAnnot$gene_short_name
```

```
## Error: object 'geneAnnot' not found
```

```r
sigDiff<-diffData(sigGenes)
```

```
## Error: could not find function "diffData"
```

```r
sigEntrez<-getEntrezIDs(geneNames)
```

```
## Error: object 'geneNames' not found
```

```r
sigEZ<-strsplit(as.character(sigEntrez), ", ")
```

```
## Error: object 'sigEntrez' not found
```

```r
sigEZ<-unlist(sigEZ)
```

```
## Error: error in evaluating the argument 'x' in selecting a method for function 'unlist': Error: object 'sigEZ' not found
```

```r
require(org.Mm.eg.db) #mapping of entrez IDs to genbank
```

```
## Loading required package: org.Mm.eg.db
```

```r
#goBP<-enrichGO(gene=sigEZ, organism="mouse",ont="BP",pvalueCutoff=0.01,readable=T)

goMF<-enrichGO(gene=sigEZ, organism="mouse",ont="MF",pvalueCutoff=0.01,readable=T)
```

```
## Error: object 'sigEZ' not found
```

```r
#goCC<-enrichGO(gene=sigEZ, organism="mouse",ont="CC",pvalueCutoff=0.01,readable=T)

kegg<-enrichKEGG(gene=sigEZ, organism="mouse",pvalueCutoff=1, readable=T)
```

```
## Error: object 'sigEZ' not found
```

```r
#pathway<-enrichPathway(gene=sigEZ,organism="mouse",pvalueCutoff=0.01, readable=T)
```


```r
#plot(goBP,showCategory=10) + theme(axis.text.x=element_text(angle=-90,hjust=0)) + ggtitle("Enriched BP")

plot(goMF,showCategory=10) + theme(axis.text.x=element_text(angle=-90,hjust=0)) + ggtitle("Enriched MF")
```

```
## Error: error in evaluating the argument 'x' in selecting a method for function 'plot': Error: object 'goMF' not found
```

```r
#plot(goCC,showCategory=10) + theme(axis.text.x=element_text(angle=-90,hjust=0)) + ggtitle("Enriched CC")

plot(kegg, showCategory=10) + ggtitle("Kegg Pathways")
```

```
## Error: error in evaluating the argument 'x' in selecting a method for function 'plot': Error: object 'kegg' not found
```

```r
#plot(pathway,showCategory=10) + ggtitle("Reactome pathway enrichment")
detach("package:biomaRt")
```


## Embryo Kantr


```r
dir<-"/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/diffs/Kantr_vs_WT_Embryonic"
setwd(dir)
cuff<-readCufflinks(gtfFile="/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/annotation/mm10_gencode_vM2_with_lncRNAs_and_LacZ.gtf",genome="mm10") 
```

```
## Error: could not find function "readCufflinks"
```

```r
csDendro(genes(cuff),replicates=TRUE)
```

```
## Error: could not find function "csDendro"
```

```r
myGene<-getGene(cuff,id)
```

```
## Error: could not find function "getGene"
```


```r
sigEmbryo<-getSig(cuff, alpha=alpha)
```

```
## Error: could not find function "getSig"
```



















































































