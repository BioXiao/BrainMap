```{r linc embryonic dendro}
dir<-""
setwd(dir)
cuff<-readCufflinks()

csDendro(genes(cuff),replicates=TRUE)

id<-""
myGene<-getGene(cuff,id)

```

```{r linc embryonic}
dir<-""
setwd(dir)
cuff<-readCufflinks()
id<-""
myGene<-getGene(cuff,id)
expressionBarplot(isoforms(myGene), replicates=T)
```

LacZ and genotyping heatmap
```{r linc lz embryonic}
lz<-""
myGene<-getGene(cuff,lz)
expressionBarplot(isoforms(myGene), replicates=T)
ids<-c(id,lz)
myGenes<-getGenes(cuff,ids)
csHeatmap(myGenes,replicates=TRUE)
```

```{r linc embryonic diff}
dir<-""
setwd(dir)
cuff<-readCufflinks()
sig<-getSig(cuff, alpha=alpha)
diffGeneSummary$
```
Number of differentially expressed genes:`r length(sig)`
