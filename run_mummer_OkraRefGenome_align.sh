#!/bin/bash


date 


module load mummer

nucmer -V 

nucmer --prefix=Okra_ClemsonSpineless_FINAL_vs_ref --maxgap=500 --mincluster=100 --threads=40 /project/gbru_okra/AshYow_Okra_genome/ragtag_run3_withCanu/Canu_patch_RAGTAGrun1-GBRUselectScaffs/added_Canu_tigs_with_telomeres/HiC_edits/LR_gapcloser_output/ragtag_output/Okra_ClemsonSpineless_FINAL.sorted.excludePGAscaf918.fa /project/gbru_okra/Assembly/PublishedReferences/GWHBWBG00000000.genome.fasta 


delta-filter -g -l 5000 -i 99 -u 99 Okra_ClemsonSpineless_FINAL_vs_ref.delta > Okra_ClemsonSpineless_FINAL_vs_ref_l5000i99u99.delta
delta-filter -g -l 2000 -i 99 -u 99 Okra_ClemsonSpineless_FINAL_vs_ref.delta > Okra_ClemsonSpineless_FINAL_vs_ref_l2000i99u99.delta
delta-filter -g -l 2000 -i 98 -u 98 Okra_ClemsonSpineless_FINAL_vs_ref.delta > Okra_ClemsonSpineless_FINAL_vs_ref_l2000i98u98.delta
delta-filter -g -l 2000 -i 95 -u 95 Okra_ClemsonSpineless_FINAL_vs_ref.delta > Okra_ClemsonSpineless_FINAL_vs_ref_l2000i95u95.delta


mummerplot -p Okra_ClemsonSpineless_FINAL_vs_ref_l2000i99u99 --png -large Okra_ClemsonSpineless_FINAL_vs_ref_l2000i99u99.delta
mummerplot -p Okra_ClemsonSpineless_FINAL_vs_ref_l2000i98u98 --png -large Okra_ClemsonSpineless_FINAL_vs_ref_l2000i98u98.delta
mummerplot -p Okra_ClemsonSpineless_FINAL_vs_ref_l2000i95u95 --png -large Okra_ClemsonSpineless_FINAL_vs_ref_l2000i95u95.delta
mummerplot -p Okra_ClemsonSpineless_FINAL_vs_ref_l5000i99u99 --png -large Okra_ClemsonSpineless_FINAL_vs_ref_l5000i99u99.delta
mummerplot -p Okra_ClemsonSpineless_FINAL_vs_ref --png -large Okra_ClemsonSpineless_FINAL_vs_ref.delta


date