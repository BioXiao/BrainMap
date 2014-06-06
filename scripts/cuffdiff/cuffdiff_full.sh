#/bin/bash
###############
# Master control script for full cuffdiff analysis of BrainMap
###############

#Setup
PROJECT_ROOT=/n/rinn_data1/seq/lgoff/Projects/BrainMap
DIFF_ROOT=$PROJECT_ROOT/data/diffs
SAMPLESHEET="brainMap_sample_sheet.tab"
CONTRASTFILE="brainMap_contrasts_full.tab"

REF_GTF=$PROJECT_ROOT/data/annotation/BrainMap_ucsc_coding_AND_lnc_DB2.0.gtf

LOGBASE=$PROJECT_ROOT/logs

#Slurm
QUEUE=serial_requeue #unrestricted #or general OR serial_requeue
NUM_THREADS=10
MAX_MEM=8000
RUN_TIME=1200

###########
#Main
###########

#Log directory
LOGDIR=$LOGBASE/diffs/unit_test
mkdir -p $LOGDIR

#Output director
OUTDIR=$DIFF_ROOT/unit_test
mkdir -p $OUTDIR

# Submit cuffdiff
#sbatch -J "BrainMap_test_diff" -t $RUN_TIME --mem-per-cpu=$MAX_MEM -n $NUM_THREADS -p $QUEUE --mail-type=END --wrap="cuffdiff -p $NUM_THREADS -C $CONTRASTFILE -o $OUTDIR --use-sample-sheet $REF_GTF $SAMPLESHEET >$LOGDIR/cuffdiff.out 2>$LOGDIR/cuffdiff.err" >$LOGDIR/slurm.out 2>$LOGDIR/slurm.err

#Choosing to run on valor as opposed to slurm queues due to size and number of comparisons
cuffdiff -p $NUM_THREADS -C $CONTRASTFILE -o $OUTDIR --use-sample-sheet $REF_GTF $SAMPLESHEET >$LOGDIR/cuffdiff.out