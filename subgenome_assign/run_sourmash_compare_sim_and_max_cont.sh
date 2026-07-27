while read i ;

do
	echo "$i";

# Calc similarity
	sourmash compare -p 16 --similarity-matrix -k ${i} --csv compare-allWGs_k${i}_defaultparams_sim.out.csv Okra_ChrsOnly.sig Aficulneus_contigs.sig Amoschatus_contigs.sig Atuberculatus_contigs.sig > compare-allWGs_k${i}_defaultparams_sim.out.mat ;

# Calc max containment
	sourmash compare -p 16 --max-containment -k ${i} --csv compare-allWGs_k${i}_defaultparams_maxcont.out.csv Okra_ChrsOnly.sig Aficulneus_contigs.sig Amoschatus_contigs.sig Atuberculatus_contigs.sig > compare-allWGs_k${i}_defaultparams_maxcont.out.mat;


done < k-mer_sizes.txt
