#/bin/bash
###############
# Master control script for full cuffdiff analysis of BrainMap
###############

#Setup
PROJECT_ROOT=/n/rinn_data1/seq/lgoff/Projects/BrainMap
DIFF_ROOT=$PROJECT_ROOT/data/diffs

REF_GTF=$PROJECT_ROOT/data/annotation/mm10_gencode_vM2_with_lncRNAs_and_LacZ.gtf

LOGBASE=$PROJECT_ROOT/logs

#Slurm
QUEUE=serial_requeue #unrestricted #or general OR serial_requeue
NUM_THREADS=10
MAX_MEM=8000
RUN_TIME=1200

###########
#Main
###########

#Choosing to run on valor as opposed to slurm queues due to size and number of comparisons

#Adult
#Log directory
#LOGDIR=$LOGBASE/diffs/Adult_full
#mkdir -p $LOGDIR

#Output director
#OUTDIR=$DIFF_ROOT/Adult_full
#mkdir -p $OUTDIR

#SAMPLESHEET="brainMap_sample_sheet_adult.tab"
#CONTRASTFILE="brainMap_contrasts_full_adult.tab"
#cuffdiff -p $NUM_THREADS -C $CONTRASTFILE -o $OUTDIR --use-sample-sheet $REF_GTF $SAMPLESHEET >$LOGDIR/cuffdiff.out &

#Embryonic
#Log directory
LOGDIR=$LOGBASE/diffs/Embryonic_full
mkdir -p $LOGDIR

#Output director
OUTDIR=$DIFF_ROOT/Embryonic_full
mkdir -p $OUTDIR

SAMPLESHEET="brainMap_sample_sheet_embryonic.tab"
CONTRASTFILE="brainMap_contrasts_full_embryonic.tab"
cuffdiff -p $NUM_THREADS -C $CONTRASTFILE -o $OUTDIR --use-sample-sheet $REF_GTF $SAMPLESHEET >$LOGDIR/cuffdiff.out &
