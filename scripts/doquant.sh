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
MAX_MEM=4000
RUN_TIME=1000

PROJECT_ROOT="/n/rinn_data1/seq/lgoff/Projects/BrainMap"

ALIGN_ROOT=$PROJECT_ROOT/data/bam
QUANT_ROOT=$PROJECT_ROOT/data/quants

BOWTIE_INDEX=$PROJECT_ROOT/data/indexes/mm10/mm10_brainmap

REF_GTF=$PROJECT_ROOT/data/annotation/mm10_gencode_vM2_with_lncRNAs_and_LacZ.gtf

LOGBASE=$PROJECT_ROOT/logs

#ARGUMENTS
SAMPLE_NAME=$1

BAMFILE=$2

#Main
LOGDIR=$LOGBASE/quants/$SAMPLE_NAME
mkdir -p $LOGDIR

OUTDIR=$ALIGN_ROOT/$SAMPLE_NAME
mkdir -p $OUTDIR

echo "$SAMPLE_NAME"
sbatch -J ${SAMPLE_NAME}_quant -t $RUN_TIME --mem-per-cpu=$MAX_MEM -n $NUM_THREADS -p $QUEUE --mail-type=FAIL --wrap="cuffquant --no-update-check -p $NUM_THREADS -o $QUANT_ROOT/$SAMPLE_NAME $REF_GTF $BAMFILE >$LOGDIR/$SAMPLE_NAME.quant.out 2>$LOGDIR/$SAMPLE_NAME.quant.err" >$LOGDIR/${SAMPLE_NAME}_slurm.out 2>$LOGDIR/${SAMPLE_NAME}_slurm.err


