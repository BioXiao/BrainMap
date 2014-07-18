for i in {1..26};do
        sbatch -J difftables -t 60 --mem=7000 -n 4 -p general --wrap="Rscript makeDiffTables.R $i"
done
