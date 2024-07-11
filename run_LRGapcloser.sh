#!/bin/bash

#install LR_Gapcloser locally

date

export PATH=$PATH:/project/gbru_grasses/LR_Gapcloser/src/

LR_Gapcloser.sh -t 40 -i ragtag.patch.renamed.with_Canu_telo_tigs.review1_renamed.sorted-NEW_checked_telos_scafs.fa -l /project/gbru_okra/AshYow_Okra_genome/Hifi_reads/ALL_HIFI_combined.fa -o LR_gapcloser_output

date