

#for i in {1..26};do
for i in {9..10};do
	#echo $i
	#srun R CMD BATCH Rscript runScript.R $i
	#srun Rscript runScript.R $i
	sbatch run.sh $i
done
