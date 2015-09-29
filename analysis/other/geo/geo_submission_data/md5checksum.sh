#!/bin/sh
index=0; 
while read line; do 
	index=$[index+1]
	#echo $index	$line	
	md5sum $line 
done < $1
