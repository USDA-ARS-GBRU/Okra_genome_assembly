date

ml genometools

# run genometools
gt suffixerator -db genome.fa -indexname genome.fa -tis -suf -lcp -des -ssp -sds -dna

gt ltrharvest -index genome.fa -minlenltr 100 -maxlenltr 7000 -mintsd 4 -maxtsd 6 -motif TGCA -motifmis 1 -similar 85 -vic 10 -seed 20 -seqids yes > genome.fa.harvest.scn

# LTR_FINDER_parallel is installed locally
/path/LTR_FINDER_parallel -seq genome.fa -threads 8 -harvest_out -size 5000000 -time 1500 -try1 1

cat genome.fa.harvest.scn genome.fa.finder.combine.scn > genome.fa.rawLTR.scn

# run LTR_retriever
LTR_retriever -genome genome.fa -inharvest genome.fa.rawLTR.scn -threads 40

#run LAI
LAI -genome genome.fa -intact genome.fa.pass.list -all genome.fa.out

date
