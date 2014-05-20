#!/bin/bash
#
################
#Master Alignment script for fastq files specifically from BrainMap project
################
#

#Usage
# alignreads.sh samplename read1.fq.gz[,read1_rep2.fq.gz] read2.fq.gz[,read2_rep2.fq.gz]

#Setup
QUEUE=serial_requeue #unrestricted #or general OR serial_requeue
NUM_THREADS=8
MAX_MEM=8000
RUN_TIME=600

PROJECT_ROOT = "/n/rinn_data1/seq/lgoff/Projects/BrainMap"

#READS_ROOT=$PROJECT_ROOT/data/fastq
ALIGN_ROOT=$PROJECT_ROOT/data/bam

TMP_DIR=/n/regal/Rinn/loyalgoff

BOWTIE_INDEX = "$PROJECT_ROOT/data/indexes/mm9_brainmap"

REF_GTF = "$PROJECT_ROOT/data/annotation/mm9_ucsc_and_linc_DB_2.0.gtf"

LOGBASE = "$PROJECT_ROOT/logs"

#ARGUMENTS
SAMPLE_NAME = $1

READ1 = $2
READ2 = $3

#Main
LOGDIR = $LOGBASE/alignments/$SAMPLE_NAME
mkdir -p $LOGDIR

OUTDIR = $ALIGN_ROOT/$SAMPLE_NAME
mkdir -p $OUTDIR

echo "#$SAMPLE_NAME"
sbatch -J $SAMPLE_NAME -t $RUN_TIME --mem-per-cpu=$MAX_MEM -n $NUM_THREADS -p $QUEUE --mail-type=END --wrap=\"tophat $REF_GTF -p $NUM_THREADS -o $OUTDIR $BOWTIE_INDEX $READ1 $READ2 >$LOGDIR/$SAMPLE_NAME.out 2>$LOGDIR/$SAMPLE_NAME.err\"


