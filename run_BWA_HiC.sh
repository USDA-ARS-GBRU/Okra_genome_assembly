#!/bin/bash

date

module load bwa/0.7.17
module load samtools/1.17

bwa index ragtag.patch.renamed.with_Canu_telo_tigs.fa

bwa mem -t 40 -5SPM ragtag.patch.renamed.with_Canu_telo_tigs.fa /project/gbru_okra/Raw_HiC/A.esculentus_HiC/All_fwd.fastq /project/gbru_okra/Raw_HiC/A.esculentus_HiC/All_rev.fastq | samtools view -@ 40 -S -h -b -F 2316 > ragtag.patch.renamed.with_Canu_telo_tigs.omniC_align.bam

date