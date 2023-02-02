mkdir data
cd data
wget -q https://raw.githubusercontent.com/nf-core/test-datasets/atacseq/testdata/SRR1822153_1.fastq.gz
wget -q https://raw.githubusercontent.com/nf-core/test-datasets/atacseq/testdata/SRR1822153_2.fastq.gz
wget -q https://raw.githubusercontent.com/nf-core/test-datasets/atacseq/testdata/SRR1822154_1.fastq.gz
wget -q https://raw.githubusercontent.com/nf-core/test-datasets/atacseq/testdata/SRR1822154_2.fastq.gz
wget -q https://raw.githubusercontent.com/nf-core/test-datasets/atacseq/testdata/SRR1822157_1.fastq.gz
wget -q https://raw.githubusercontent.com/nf-core/test-datasets/atacseq/testdata/SRR1822157_2.fastq.gz
wget -q https://raw.githubusercontent.com/nf-core/test-datasets/atacseq/testdata/SRR1822158_1.fastq.gz
wget -q https://raw.githubusercontent.com/nf-core/test-datasets/atacseq/testdata/SRR1822158_2.fastq.gz
wget -q https://raw.githubusercontent.com/nf-core/test-datasets/chipseq/testdata/SRR5204809_Spt5-ChIP_Input1_SacCer_ChIP-Seq_ss100k_R1.fastq.gz
wget -q https://raw.githubusercontent.com/nf-core/test-datasets/chipseq/testdata/SRR5204809_Spt5-ChIP_Input1_SacCer_ChIP-Seq_ss100k_R2.fastq.gz
wget -q https://raw.githubusercontent.com/nf-core/test-datasets/chipseq/testdata/SRR5204810_Spt5-ChIP_Input2_SacCer_ChIP-Seq_ss100k_R1.fastq.gz
wget -q https://raw.githubusercontent.com/nf-core/test-datasets/chipseq/testdata/SRR5204810_Spt5-ChIP_Input2_SacCer_ChIP-Seq_ss100k_R2.fastq.gz

cd ..
mkdir reference
cd reference
wget -q https://raw.githubusercontent.com/nf-core/test-datasets/atacseq/reference/genome.fa
wget -q https://raw.githubusercontent.com/nf-core/test-datasets/atacseq/reference/genes.gtf