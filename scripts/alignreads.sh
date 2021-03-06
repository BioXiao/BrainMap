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
MAX_MEM=6000
RUN_TIME=1200

PROJECT_ROOT="/n/rinn_data1/seq/lgoff/Projects/BrainMap"

#READS_ROOT=$PROJECT_ROOT/data/fastq
ALIGN_ROOT=$PROJECT_ROOT/data/bam

TMP_DIR=/n/regal/rinn_lab/lgoff/BrainMap

BOWTIE_INDEX="$PROJECT_ROOT/data/indexes/mm10/mm10_brainmap"

#REF_GTF="-G $PROJECT_ROOT/data/annotation/mm10_gencode_vM2_with_lncRNAs_and_LacZ.gtf"
REF_GTF=""

LOGBASE="$PROJECT_ROOT/logs"

#ARGUMENTS
SAMPLE_NAME=$1

READ1=$2
READ2=$3

#Main
LOGDIR=$LOGBASE/alignments/$SAMPLE_NAME
mkdir -p $LOGDIR

OUTDIR=$ALIGN_ROOT/$SAMPLE_NAME
mkdir -p $OUTDIR

SCRATCHDIR=$TMP_DIR/$SAMPLE_NAME
mkdir -p $SCRATCHDIR

echo "$SAMPLE_NAME"
sbatch -J $SAMPLE_NAME -t $RUN_TIME --mem-per-cpu=$MAX_MEM -n $NUM_THREADS -p $QUEUE --mail-type=FAIL --wrap="tophat --no-coverage-search --tmp-dir $SCRATCHDIR $REF_GTF --max-multihits 10 -p $NUM_THREADS -o $OUTDIR $BOWTIE_INDEX $READ1 $READ2 >$LOGDIR/$SAMPLE_NAME.out 2>$LOGDIR/$SAMPLE_NAME.err" >$LOGDIR/${SAMPLE_NAME}_align_slurm.out 2>$LOGDIR/${SAMPLE_NAME}_align_slurm.err

#TODO
# - remove coverage search (not necessary and probably wrong) ((--no-coverage-search))
# - Use regal as scratch space. ( --tmp-dir $SCRATCHDIR )


