#install tidk in a conda environment and activate the environment

conda activate tidk

tidk search --string TTTAGGG --output tidk_search_out --dir ./ genome.fasta

tidk plot --tsv tidk_search_out.tsv
