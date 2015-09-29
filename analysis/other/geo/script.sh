#!/bin/sh
index=0; 
while read line; do 
	index=$[index+1]
	echo $index
	echo $line
	cp $line /n/scratch2/rinn_lab/agroff/PNAS_GEO/lane1/
done < $1
