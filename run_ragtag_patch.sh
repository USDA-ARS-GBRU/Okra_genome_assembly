#!/bin/bash


date

module load miniconda
module load mummer
module load minimap2

conda activate RAGTAG

ragtag.py patch -u --fill-only -t 40 /project/gbru_okra/AshYow_Okra_genome/ragtag/NEW_Okra_Esculentus.BothSubs.renamed.sorted.fa /project/gbru_okra/AshYow_Okra_genome/ragtag_run3_withCanu/BayerCanu_okra_contigs_NoCircular.fa

date