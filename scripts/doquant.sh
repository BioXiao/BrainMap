#!/bin/bash
#
################
# Creates .cxb file from individual bam + ref_gtf
################
#

# Usage
# doquant.sh samplename bam_file.bam



#Setup
QUEUE=serial_requeue #unrestricted #or general OR serial_requeue
NUM_THREADS=8
MAX_MEM=8000
RUN_TIME=600

PROJECT_ROOT="/n/rinn_data1/seq/lgoff/Projects/BrainMap"

ALIGN_ROOT=$PROJECT_ROOT/data/bam
QUANT_ROOT=$PROJECT_ROOT/data/quants

TMP_DIR=/n/scratch2/rinn_lab/lgoff

BOWTIE_INDEX=$PROJECT_ROOT/data/indexes/mm9_brainmap

REF_GTF=$PROJECT_ROOT/data/annotation/mm9_ucsc_and_linc_DB_2.0.gtf

LOGBASE=$PROJECT_ROOT/logs

#ARGUMENTS
SAMPLE_NAME=$1

BAMFILE=$2

#Main
LOGDIR=$LOGBASE/alignments/$SAMPLE_NAME
mkdir -p $LOGDIR

OUTDIR=$ALIGN_ROOT/$SAMPLE_NAME
mkdir -p $OUTDIR

echo "$SAMPLE_NAME"
sbatch -J $SAMPLE_NAME -t $RUN_TIME --mem-per-cpu=$MAX_MEM -n $NUM_THREADS -p $QUEUE --mail-type=END --wrap="cuffquant --no-update-check -p $NUM_THREADS -o $QUANT_ROOT/$SAMPLE_NAME $REF_GTF $BAMFILE >$LOGDIR/$SAMPLE_NAME.quant.out 2>$LOGDIR/$SAMPLE_NAME.quant.err"


