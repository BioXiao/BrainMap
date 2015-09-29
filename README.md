BrainMap
========

Mouse lncRNA Brain Map Project Data and Analysis

#### Dependencies
- >= TopHat 2.0.11
- >= Cufflinks 2.2.1
- >= cummeRBund 2.2

## Overview

## Workflow
1. Aquire reads from sequencing runs
    -   Aggregate .fastq files as needed for each library
2. Align reads
    -   Run alignReads.sh for each sample (read1 and read2 aggregate fastqs) to create aligned .bam
    -   Update sample sheet with all information for a given sample included .bam location
3. Define contrasts (generally WT vs KO for each strain)
4. Run cuffdiff/cuffnorm
    - scripts/cuffdiff/cuffdiff_full.sh
5. Analysis? 

## FASTQ Alignments

## Cuffdiff run

## CummeRbund analysis
To view the wt-v-ko sequencing reports for each timepoint for each strain, click "analysis" and then the appropriate folder. 

Click the ".md" file to view the report in your browser. Print as a pdf to take it to go! If you'd like the individual images, those are located in the "figure" folder in each directory. 
