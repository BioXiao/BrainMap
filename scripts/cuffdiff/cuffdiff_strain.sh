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
SAMPLE_NAME=$1

AGE=$2

KO_CXB=$3

WT_CXB=$4

#Log directory
LOGDIR=$LOGBASE/diffs/${SAMPLE_NAME}_vs_WT_${AGE}
mkdir -p $LOGDIR

#Output director
OUTDIR=$DIFF_ROOT/${SAMPLE_NAME}_vs_WT_${AGE}
mkdir -p $OUTDIR

# Submit cuffdiff
sbatch -J "${SAMPLE_NAME}_vs_WT_${AGE}" -t $RUN_TIME --mem-per-cpu=$MAX_MEM -n $NUM_THREADS -p $QUEUE --mail-type=FAIL --wrap="cuffdiff -p $NUM_THREADS -L WT,$SAMPLE_NAME -o $OUTDIR $REF_GTF $WT_CXB $KO_CXB >$LOGDIR/cuffdiff.out 2>$LOGDIR/cuffdiff.err" >$LOGDIR/slurm.out 2>$LOGDIR/slurm.err
