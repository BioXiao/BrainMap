from RNASeq.misc import pp

# Setup
project_root = "/n/rinn_data1/seq/lgoff/Projects/BrainMap/"
diff_root = "/n/rinn_data1/seq/lgoff/Projects/BrainMap/analysis"


#Quant info
quant_root = "data/quants/"
quant_file_handle = open(project_root+"data/samples/"+"quant_files.txt",'r')

headerVals = quant_file_handle.readline().rstrip().split("\t")

samples = []
strains = ([])
#Samples
for line in quant_file_handle:
	line = dict(zip(headerVals,line.rstrip().split("\t")))
	samples.append(line)
	strains.add(line['strain'])

for strain in strains:


