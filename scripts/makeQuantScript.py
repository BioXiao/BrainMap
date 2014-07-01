from RNASeq.misc import pp

# Setup
project_root = "/n/rinn_data1/seq/lgoff/Projects/BrainMap/"

########################
# Alignment
########################

#Fastq info
bam_root = "data/bam/"
bam_file_handle = open(project_root+"data/samples/"+"bam_files.txt",'r')

headerVals = bam_file_handle.readline().rstrip().split("\t")

samples = {}

#Samples
for line in bam_file_handle:
	line = dict(zip(headerVals,line.rstrip().split("\t")))
	samples[line['sample_name']]={
			'bamfile':line['bamfile'],
			'quantified':line['quantified']
			}

#pp(samples)

#Write alignment script
outHandle = open(project_root+"scripts/quantScript.sh",'w')

sampleNames = [x for x in samples.keys() if samples[x]['quantified']!='True']

sampleNames.sort()

for sample in sampleNames:
	print >>outHandle, "#%s" % sample
	print >>outHandle, "./doquant.sh %s %s\n" % (sample,samples[sample]['bamfile'])
