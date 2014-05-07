#/bin/bash
###############
# Master control script for full cuffdiff analysis of BrainMap
###############

#Setup
PROJECT_ROOT = ""
DIFF_ROOT = $PROJECT_ROOT/data/diffs
SAMPLESHEET = "brainMap_sample_sheet.tab"
CONTRASTFILE = "brainMap_contrasts_full.tab"

REF_GTF = ""

LOGBASE = "../logs"

#Slurm
QUEUE=serial_requeue #unrestricted #or general OR serial_requeue
NUM_THREADS=8
MAX_MEM=8000
RUN_TIME=600

###########
#Main
###########

#Log directory
LOGDIR = $LOGBASE/alignments/$SAMPLE_NAME
mkdir -p $LOGDIR

#Output director
OUTDIR = $DIFF_ROOT/full
mkdir -p $OUTDIR

# Submit cuffdiff
sbatch -J "BrainMap_full_diff" -t $RUN_TIME --mem-per-cpu=$MAX_MEM -n $NUM_THREADS -p $QUEUE --mail-type=END --wrap=\"cuffdiff -C $CONTRASTFILE -o $OUTDIR --use-sample-sheet $REF_GTF $SAMPLESHEET >$LOGDIR/cuffdiff.out 2>$LOGDIR/cuffdiff.err\""

