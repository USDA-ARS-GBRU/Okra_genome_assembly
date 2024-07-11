#!/bin/bash


date

module load busco5

busco -m genome -i Okra_ClemsonSpineless_FINAL.sorted.fasta --out_path ./ -o Okra_ClemsonSpineless_FINAL.sorted.busco_out --offline -l /project/reference/data/BUSCO/v5/lineages/embryophyta_odb10 --cpu 40

date