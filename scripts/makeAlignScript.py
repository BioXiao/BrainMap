from RNASeq.misc import pp

# Setup
project_root = "/n/rinn_data1/seq/lgoff/Projects/BrainMap/"

########################
# Alignment
########################

#Fastq info
fastq_root = "data/flowcells/"
fastq_file_handle = open(project_root+"data/samples/"+"fastq_files.txt",'r')

headerVals = fastq_file_handle.readline().rstrip().split("\t")

samples = {}

#Samples
for line in fastq_file_handle:
	line = dict(zip(headerVals,line.rstrip().split("\t")))
	samples.setdefault(line['sample_id'],{}).setdefault(line['read_id'],[]).append(line['filename'])

#pp(samples)

#Write alignment script
outHandle = open(project_root+"scripts/alignScript.sh",'w')


for sample in samples.keys():
	print >>outHandle, "#%s" % sample
	print >>outHandle, "./alignreads.sh %s %s %s\n" % (sample,",".join(samples[sample]['R1']),",".join(samples[sample]['R2']))
