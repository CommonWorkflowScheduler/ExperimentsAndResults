#!/bin/bash
mkdir data
cd data
wget -q https://github.com/nf-core/test-datasets/raw/mag/test_data/test_minigut_R1.fastq.gz
wget -q https://github.com/nf-core/test-datasets/raw/mag/test_data/test_minigut_R2.fastq.gz
wget -q https://github.com/nf-core/test-datasets/raw/mag/test_data/test_minigut_sample2_R1.fastq.gz
wget -q https://github.com/nf-core/test-datasets/raw/mag/test_data/test_minigut_sample2_R2.fastq.gz
wget -q https://github.com/nf-core/test-datasets/raw/mag/test_data/test_minigut_hg38host_R1.fastq.gz
wget -q https://github.com/nf-core/test-datasets/raw/mag/test_data/test_minigut_hg38host_R2.fastq.gz
wget -q https://github.com/nf-core/test-datasets/raw/mag/test_data/test_minigut_sample2_hg38host_R1.fastq.gz 
wget -q https://github.com/nf-core/test-datasets/raw/mag/test_data/test_minigut_sample2_hg38host_R2.fastq.gz 

cd ..
mkdir reference
cd reference
wget -q https://raw.githubusercontent.com/nf-core/test-datasets/mag/test_data/minigut_cf.tar.gz
wget -q https://raw.githubusercontent.com/nf-core/test-datasets/mag/test_data/minigut_kraken.tgz
wget -q https://busco-data.ezlab.org/v5/data/lineages/bacteria_odb10.2020-03-06.tar.gz