

for i in {1..26};do
	#echo $i
	srun R CMD BATCH Rscript runScript.R $i
done
