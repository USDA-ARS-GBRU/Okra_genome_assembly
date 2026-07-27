#!/bin/bash

date

module load mummer

nucmer -V

# Perform this pipeline for alignment of Clemson Spineless against all wild okra genomes.
# Run nucmer alignment
nucmer --prefix=esculentus_vs_ficulneus --maxgap=500 --mincluster=100 --threads=40 ClemsonSpineless_hifiasm0.18.1.asm.bp.COMBINED_HAPS.p_ctg.fasta HifiASM_18_9_A.ficulneus_PI639670.asm.bp.p_ctg.fasta

# Filter delta file
delta-filter -g -l 5000 -i 99 -u 99 esculentus_vs_ficulneus.delta > esculentus_vs_ficulneus_l5000i99u99.delta
delta-filter -g -l 5000 -i 98 -u 98 esculentus_vs_ficulneus.delta > esculentus_vs_ficulneus_l5000i98u98.delta
delta-filter -g -l 2000 -i 99 -u 99 esculentus_vs_ficulneus.delta > esculentus_vs_ficulneus_l2000i99u99.delta
delta-filter -g -l 2000 -i 98 -u 98 esculentus_vs_ficulneus.delta > esculentus_vs_ficulneus_l2000i98u98.delta
delta-filter -g -l 2000 -i 95 -u 95 esculentus_vs_ficulneus.delta > esculentus_vs_ficulneus_l2000i95u95.delta

# Run plots
mummerplot -p esculentus_vs_ficulneus --png -large esculentus_vs_ficulneus.delta
mummerplot -p esculentus_vs_ficulneus_l2000i99u99 --png -large esculentus_vs_ficulneus_l2000i99u99.delta
mummerplot -p esculentus_vs_ficulneus_l2000i98u98 --png -large esculentus_vs_ficulneus_l2000i98u98.delta
mummerplot -p esculentus_vs_ficulneus_l2000i95u95 --png -large esculentus_vs_ficulneus_l2000i95u95.delta
mummerplot -p esculentus_vs_ficulneus_l5000i99u99 --png -large esculentus_vs_ficulneus_l5000i99u99.delta
mummerplot -p esculentus_vs_ficulneus_l5000i98u98 --png -large esculentus_vs_ficulneus_l5000i98u98.delta

date
