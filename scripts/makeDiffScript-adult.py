from RNASeq.misc import pp

# Setup
project_root = "/n/rinn_data1/seq/lgoff/Projects/BrainMap/"
diff_root = "/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/diffs/"

#Cuff command
cuffdiff_cmd = project_root + "scripts/cuffdiff/cuffdiff_strain.sh"

#Quant info
quant_root = "/n/rinn_data1/seq/lgoff/Projects/BrainMap/data/quants/"
quant_file_handle = open(project_root+"data/samples/"+"quants_adult.txt",'r')

headerVals = quant_file_handle.readline().rstrip().split("\t")

#pp(headerVals)

samples = []
background = {}
#Samples
for line in quant_file_handle:
	line = dict(zip(headerVals,line.rstrip().split("\t")))
	samples.append(line)
	background[line['Strain']]=line['Genetic background']

#pp(samples)

#pp(background)

outFile = open("diffScript_adult.sh",'w')

for strain,bg in background.iteritems():

	KOSamples = ",".join([quant_root+x['sample_id']+'/abundances.cxb' for x in samples if x['Genotype']=="KO" and x['Strain']==strain])
	WTSamples = ",".join([quant_root+x['sample_id']+'/abundances.cxb' for x in samples if x['Genotype']=="WT" and x['Genetic background']==bg])

	print >>outFile, "#%s\n%s %s %s %s %s\n" % (strain,cuffdiff_cmd,strain,"Adult",KOSamples,WTSamples)