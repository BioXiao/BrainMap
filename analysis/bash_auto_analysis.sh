

#for i in {1..26};do
for i in {1..2};do
	#echo $i
	#srun R CMD BATCH Rscript runScript.R $i
	#srun R CMD BATCH runScript.R $i #Rscript runScript.R $i
	#sbatch run.sh $i
	sbatch -J R_auto -t 600 --mem-per-cpu=2000 -n 8 -p general --wrap="Rscript runScript.R $i"
done
