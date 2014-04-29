#!/bin/bash
#
################
#Master Alignment script for fastq files specifically from BrainMap project
################
#

#Usage
# alignreads.sh samplename read1.fq.gz read2.fq.gz
#


#Setup
QUEUE=serial_requeue #unrestricted #or general OR serial_requeue
NUM_THREADS=8
MAX_MEM=8000
RUN_TIME=600

GROUP="sethlab"

READS_ROOT=../data/fastq
ALIGN_ROOT=../data/bam

TMP_DIR=/n/scratch2/rinn_lab/lgoff

BOWTIE_INDEX = "../data/indexes/mm9_brainmap"

REF_GTF = "../data/annotation/mm9_ucsc_and_linc_DB_2.0.gtf"

LOGBASE = "../logs"

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


