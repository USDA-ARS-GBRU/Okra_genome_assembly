# Okra Genome Assembly

## Citation
If you use this assembly or scripts in your research, please cite:
_(Insert DOI / citation when available)_

## Corresponding contact 
[Amanda Hulse-Kemp](amanda.hulse-kemp@usda.gov)

## Overview
This repository supports genome assembly and analysis for okra (_Abelmoschus_ spp.), centered on the first near telomere-to-telomere (T2T) assembly of the main commercial cultivar in the US market, _A. esculentus_ ‘Clemson Spineless’, along with assemblies for three additional related _Abelmoschus_ species. It includes scripts and pipelines used to facilitate assembly, phasing, and subgenome identification.
**Key highlights from the accompanying manuscript:**
- Near T2T assembly for all 65 chromosomes of _A. esculentus_ with telomeric repeats on each end.
- Phased subgenomes:
  - **Subgenome A** (29 chromosomes) from _A. tuberculatus_ or a close relative.
  - **Subgenome B** (36 chromosomes) from a lineage related to _A. ficulneus_ and _A. moschatus_.
- Gene annotation, homeolog assignments, and evolutionary analysis across _Abelmoschus_.
- Candidate genetic mechanisms for the spinelessness trait in _A. esculentus_ cv. ‘Clemson Spineless’.

## Data and Results
All data used and results obtained from this pipeline are available at the following databases:
- **Raw read data and genome assemblies:** NCBI (Bioproject #PRJNA1117931)
- **Assembly and Annotation data:** Phytozome
- **Data tables and other supplementary materials:** AgDataCommons (_add link when made public_)

## Prerequisites
**Sequencing data:**
- PacBio HiFi and Illumina Hi-C reads for _A. esculentus_
- HiFi reads for related species
**Software tools used:**
- **Assembly:** Hifiasm, HiCanu, RagTag, Juicebox, LR_gapcloser
- **Phasing:** MuMMer, RagTag
- **QC:** MuMMer, Tidk, BUSCO, BLAST+, LTR_retriever, LTR_finder_parallel, genometools
- **Other utilities:** bwa, samtools, minimap2, bedtools, 3D-DNA, Sourmash, JCVI
- **Scripting environment:** bash, Python 3.x, R, Java

## Pipeline
### 1. Genome Assembly
- Located in [genome_assembly](https://github.com/USDA-ARS-GBRU/Okra_genome_assembly/tree/main/genome_assembly)
- Scripts:
  - `run_hifi.sh`
  - `run_ragtag_scaffold_withRemoveSmall.sh`
  - `run_ragtag_patch.sh`
  - `run_BWA_HiC.sh`
  - `run_LRGapcloser.sh`
- Assembles PacBio HiFi reads into contigs and scaffolds them to achieve full-chromosome coverage.
### 2. Assembly QC
- Located in [QC](https://github.com/USDA-ARS-GBRU/Okra_genome_assembly/tree/main/QC)
- Scripts:
  - `run_tidk.sh`
  - `run_BLASTn.sh`
  - `run_busco.sh`
  - `run_mummer_OkraRefGenome_align.sh`
  - LAI scripts
- Assesses the quality and completeness of genome assemblies, including telomeric repeat detection.
### 3. Subgenome Assignment & Homeology
- Located in [subgenome_assign](https://github.com/USDA-ARS-GBRU/Okra_genome_assembly/tree/main/subgenome_assign)
- Scripts:
  - `run_sourmash_compare_sim_and_max_cont.sh`
  - `run_mummer_WildOkraGenome_align.sh`
  - `plot_okra_karyotype_MCScan.sh`
  - `rename_scafs.sh`
- Tools/scripted workflows to phase haplotypes and assign chromosomes into subgenome A and B by comparative genomics.

## Funding
List funding sources here

## Acknowledgments
Developed by USDA-ARS Genomics & Bioinformatics Research Unit. Thanks to collaborators at Bayer, University of California Davis, University of Ghent, and University of Florida.
