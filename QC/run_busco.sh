#!/bin/bash


date

module load busco5

busco -m genome -i genome.fasta --out_path ./ -o genome.busco_out --offline -l /project/reference/data/BUSCO/v5/lineages/eudicots_odb10 --cpu 40

date
