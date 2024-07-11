#!/bin/bash

#install RAGTAG in a conda environment and activate the environment

date

module load miniconda
module load minimap2
module load bbtools
source activate /home/ashley.yow/.conda/envs/RAGTAG

ragtag.py scaffold -t 40 -f 100000 --remove-small /project/gbru_okra/Assembly/PublishedReferences/GWHBWBG00000000.genome.renamed_scafs.fa /project/gbru_okra/AshYow_Okra_genome/ragtag_run3_withCanu/Canu_patch_RAGTAGrun1-GBRUselectScaffs/added_Canu_tigs_with_telomeres/HiC_edits/LR_gapcloser_output/iteration-3/gapclosed.fasta


date