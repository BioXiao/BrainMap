

#for i in {1..26};do
#	sbatch -J R_auto -t 600 --mem=7000 -n 4 -p general --wrap="Rscript runScript.R $i"
#done

#sbatch -J R_auto -t 600 --mem=10000 -n 6 -p general --wrap="Rscript runScript.R 2"

#sbatch -J R_auto -t 600 --mem-per-cpu=2000 -n 8 -p general --wrap="Rscript runScript.R 13"

#sbatch -J R_auto -t 600 --mem-per-cpu=2000 -n 8 -p general --wrap="Rscript runScript.R 26"

#sbatch -J R_auto -t 600 --mem-per-cpu=2000 -n 8 -p general --wrap="Rscript runScript.R 23"
#sbatch -J R_auto -t 600 --mem-per-cpu=2000 -n 8 -p general --wrap="Rscript runScript.R 24"

#linc-cox2 15 and 16
sbatch -J R_auto -t 600 --mem-per-cpu=7000 -n 4 -p general --wrap="Rscript runScript.R 15" #adult tracks work in rstudio w margin 8000 
#sbatch -J R_auto -t 600 --mem-per-cpu=7000 -n 4 -p general --wrap="Rscript runScript.R 16" #embryonic worked w margin 5000

#haunt 7
sbatch -J R_auto -t 600 --mem-per-cpu=7000 -n 4 -p general --wrap="Rscript runScript.R 7" #adult tracks work in rstudio w margin 8000
#fixed haunt embryonic cis plot print
#sbatch -J R_auto -t 600 --mem-per-cpu=7000 -n 4 -p general --wrap="Rscript runScript.R 8"



#sbatch -J makeDElists -t 600 --mem=10000 -n 5 -p general --wrap="Rscript makeDElists_andLZcorrelation.R"

#cisregion plots
#sbatch -J cisregionplots -t 600 --mem=10000 -n 5 -p general --wrap="Rscript cisregionpanel.R"
