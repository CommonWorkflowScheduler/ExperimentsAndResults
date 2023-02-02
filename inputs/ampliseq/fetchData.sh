mkdir data
cd data
wget -q https://github.com/nf-core/test-datasets/raw/ampliseq/testdata/1a_S103_L001_R1_001.fastq.gz	
wget -q https://github.com/nf-core/test-datasets/raw/ampliseq/testdata/1a_S103_L001_R2_001.fastq.gz
wget -q https://github.com/nf-core/test-datasets/raw/ampliseq/testdata/1_S103_L001_R1_001.fastq.gz	
wget -q https://github.com/nf-core/test-datasets/raw/ampliseq/testdata/1_S103_L001_R2_001.fastq.gz
wget -q https://github.com/nf-core/test-datasets/raw/ampliseq/testdata/2a_S115_L001_R1_001.fastq.gz	
wget -q https://github.com/nf-core/test-datasets/raw/ampliseq/testdata/2a_S115_L001_R2_001.fastq.gz
wget -q https://github.com/nf-core/test-datasets/raw/ampliseq/testdata/2_S115_L001_R1_001.fastq.gz	
wget -q https://github.com/nf-core/test-datasets/raw/ampliseq/testdata/2_S115_L001_R2_001.fastq.gz

cd ..
mkdir reference
cd reference

wget -q https://data.qiime2.org/2021.8/tutorials/training-feature-classifiers/85_otus.fasta
wget -q https://data.qiime2.org/2021.8/tutorials/training-feature-classifiers/85_otu_taxonomy.txt
wget -q https://data.ace.uq.edu.au/public/gtdb/data/releases/release207/207.0/genomic_files_reps/bac120_ssu_reps_r207.tar.gz
wget -q https://data.ace.uq.edu.au/public/gtdb/data/releases/release207/207.0/genomic_files_reps/ar53_ssu_reps_r207.tar.gz