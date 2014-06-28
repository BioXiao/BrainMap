#!/bin/bash
args=("$@")
#echo ${args[0]}
Rscript runScript.R ${args[0]}
