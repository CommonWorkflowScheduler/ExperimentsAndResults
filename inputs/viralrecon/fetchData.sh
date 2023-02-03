#!/bin/bash
mkdir data
cd data
wget -q https://raw.githubusercontent.com/nf-core/test-datasets/viralrecon/illumina/amplicon/sample1_R1.fastq.gz
wget -q https://raw.githubusercontent.com/nf-core/test-datasets/viralrecon/illumina/amplicon/sample1_R2.fastq.gz
wget -q https://raw.githubusercontent.com/nf-core/test-datasets/viralrecon/illumina/amplicon/sample2_R1.fastq.gz
wget -q https://raw.githubusercontent.com/nf-core/test-datasets/viralrecon/illumina/amplicon/sample2_R2.fastq.gz

cd ..
mkdir reference
cd reference

wget -q https://raw.githubusercontent.com/nf-core/test-datasets/viralrecon/genome/kraken2/kraken2_hs22.tar.gz
wget -q https://github.com/artic-network/artic-ncov2019/raw/master/primer_schemes/nCoV-2019/V1/nCoV-2019.reference.fasta
wget -q https://github.com/nf-core/test-datasets/raw/viralrecon/genome/MN908947.3/GCA_009858895.3_ASM985889v3_genomic.200409.gff.gz
wget -q https://github.com/artic-network/artic-ncov2019/raw/master/primer_schemes/nCoV-2019/V1/nCoV-2019.primer.bed
wget -q https://github.com/nf-core/test-datasets/raw/viralrecon/genome/MN908947.3/nextclade_sars-cov-2_MN908947_2022-06-14T12_00_00Z.tar.gz