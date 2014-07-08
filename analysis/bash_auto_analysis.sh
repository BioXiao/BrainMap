

for i in {1..26};do
	sbatch -J R_auto -t 600 --mem-per-cpu=2000 -n 8 -p general --wrap="Rscript runScript.R $i"
done

#sbatch -J R_auto -t 600 --mem-per-cpu=2000 -n 8 -p general --wrap="Rscript runScript.R 13"

#sbatch -J R_auto -t 600 --mem-per-cpu=2000 -n 8 -p general --wrap="Rscript runScript.R 26"

#sbatch -J R_auto -t 600 --mem-per-cpu=2000 -n 8 -p general --wrap="Rscript runScript.R 23"
#sbatch -J R_auto -t 600 --mem-per-cpu=2000 -n 8 -p general --wrap="Rscript runScript.R 24"

#linc-cox2 15 and 16
#sbatch -J R_auto -t 600 --mem-per-cpu=2000 -n 8 -p general --wrap="Rscript runScript_cummerbund_genetracking.R 15"
#sbatch -J R_auto -t 600 --mem-per-cpu=2000 -n 8 -p general --wrap="Rscript runScript_cummerbund_genetracking.R 16"

#haunt 7
#sbatch -J R_auto -t 600 --mem-per-cpu=2000 -n 8 -p general --wrap="Rscript runScript_cummerbund_genetracking.R 7"
