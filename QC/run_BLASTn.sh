#!/bin/bash

# Run BLAST on contigs with no HiC signal.

date

module load blast+

blastn -db /90daydata/gbru_okra/BLAST/DB/NT/nt -query ClemsonSpineless_hifiasm0.18.1_h2tg000002l.fa -out ClemsonSpineless_hifiasm0.18.1_h2tg000002l.nt_blastn.out -evalue 1e-10 -outfmt 7 -num_threads 8 -perc_identity 90 -ungapped ;

blastn -db /90daydata/gbru_okra/BLAST/DB/NT/nt -query ClemsonSpineless_hifiasm0.18.1_h2tg000010l.fa -out ClemsonSpineless_hifiasm0.18.1_h2tg000010l.nt_blastn.out -evalue 1e-10 -outfmt 7 -num_threads 8 -perc_identity 90 -ungapped ;

blastn -db /90daydata/gbru_okra/BLAST/DB/NT/nt -query ClemsonSpineless_hifiasm0.18.1_h2tg000019l.fa -out ClemsonSpineless_hifiasm0.18.1_h2tg000019l.nt_blastn.out -evalue 1e-10 -outfmt 7 -num_threads 8 -perc_identity 90 -ungapped ;

blastn -db /90daydata/gbru_okra/BLAST/DB/NT/nt -query ClemsonSpineless_hifiasm0.18.1_h2tg000022l.fa -out ClemsonSpineless_hifiasm0.18.1_h2tg000022l.nt_blastn.out -evalue 1e-10 -outfmt 7 -num_threads 8 -perc_identity 90 -ungapped ;

blastn -db /90daydata/gbru_okra/BLAST/DB/NT/nt -query ClemsonSpineless_hifiasm0.18.1_h2tg000023l.fa -out ClemsonSpineless_hifiasm0.18.1_h2tg000023l.nt_blastn.out -evalue 1e-10 -outfmt 7 -num_threads 8 -perc_identity 90 -ungapped


date
