mkdir data
cd data
wget -q "https://github.com/nf-core/test-datasets/raw/rnaseq/testdata/GSE110004/SRR6357070_1.fastq.gz"
wget -q "https://github.com/nf-core/test-datasets/raw/rnaseq/testdata/GSE110004/SRR6357070_2.fastq.gz"
wget -q "https://github.com/nf-core/test-datasets/raw/rnaseq/testdata/GSE110004/SRR6357071_1.fastq.gz"
wget -q "https://github.com/nf-core/test-datasets/raw/rnaseq/testdata/GSE110004/SRR6357071_2.fastq.gz"
wget -q "https://github.com/nf-core/test-datasets/raw/rnaseq/testdata/GSE110004/SRR6357072_1.fastq.gz"
wget -q "https://github.com/nf-core/test-datasets/raw/rnaseq/testdata/GSE110004/SRR6357072_2.fastq.gz"
wget -q "https://github.com/nf-core/test-datasets/raw/rnaseq/testdata/GSE110004/SRR6357073_1.fastq.gz"
wget -q "https://github.com/nf-core/test-datasets/raw/rnaseq/testdata/GSE110004/SRR6357073_2.fastq.gz"
wget -q "https://github.com/nf-core/test-datasets/raw/rnaseq/testdata/GSE110004/SRR6357074_1.fastq.gz"
wget -q "https://github.com/nf-core/test-datasets/raw/rnaseq/testdata/GSE110004/SRR6357074_2.fastq.gz"
wget -q "https://github.com/nf-core/test-datasets/raw/rnaseq/testdata/GSE110004/SRR6357075_1.fastq.gz"
wget -q "https://github.com/nf-core/test-datasets/raw/rnaseq/testdata/GSE110004/SRR6357075_2.fastq.gz"
wget -q "https://github.com/nf-core/test-datasets/raw/rnaseq/testdata/GSE110004/SRR6357076_1.fastq.gz"
wget -q "https://github.com/nf-core/test-datasets/raw/rnaseq/testdata/GSE110004/SRR6357076_2.fastq.gz"
wget -q "https://github.com/nf-core/test-datasets/raw/rnaseq/testdata/GSE110004/SRR6357077_1.fastq.gz"
wget -q "https://github.com/nf-core/test-datasets/raw/rnaseq/testdata/GSE110004/SRR6357077_2.fastq.gz"
wget -q "https://github.com/nf-core/test-datasets/raw/rnaseq/testdata/GSE110004/SRR6357078_1.fastq.gz"
wget -q "https://github.com/nf-core/test-datasets/raw/rnaseq/testdata/GSE110004/SRR6357078_2.fastq.gz"
wget -q "https://github.com/nf-core/test-datasets/raw/rnaseq/testdata/GSE110004/SRR6357079_1.fastq.gz"
wget -q "https://github.com/nf-core/test-datasets/raw/rnaseq/testdata/GSE110004/SRR6357079_2.fastq.gz"
wget -q "https://github.com/nf-core/test-datasets/raw/rnaseq/testdata/GSE110004/SRR6357080_1.fastq.gz"
wget -q "https://github.com/nf-core/test-datasets/raw/rnaseq/testdata/GSE110004/SRR6357080_2.fastq.gz"
wget -q "https://github.com/nf-core/test-datasets/raw/rnaseq/testdata/GSE110004/SRR6357081_1.fastq.gz"
wget -q "https://github.com/nf-core/test-datasets/raw/rnaseq/testdata/GSE110004/SRR6357081_2.fastq.gz"


cd ..
mkdir reference
cd reference
wget -q https://github.com/nf-core/test-datasets/raw/rnaseq/reference/genome.fasta
wget -q https://github.com/nf-core/test-datasets/raw/rnaseq/reference/genes.gtf.gz
wget -q https://github.com/nf-core/test-datasets/raw/rnaseq/reference/genes.gff.gz
wget -q https://github.com/nf-core/test-datasets/raw/rnaseq/reference/transcriptome.fasta
wget -q https://github.com/nf-core/test-datasets/raw/rnaseq/reference/gfp.fa.gz
wget -q https://github.com/nf-core/test-datasets/raw/rnaseq/reference/hisat2.tar.gz
wget -q https://github.com/nf-core/test-datasets/raw/rnaseq/reference/salmon.tar.gz
wget -q https://github.com/nf-core/test-datasets/raw/rnaseq/reference/rsem.tar.gz
wget -q https://raw.githubusercontent.com/nf-core/test-datasets/rnaseq/reference/GCA_009858895.3_ASM985889v3_genomic.200409.fna
wget -q https://raw.githubusercontent.com/nf-core/test-datasets/rnaseq/reference/chr22_23800000-23980000.fa
echo "sarscov2,/input/rnaseq/reference/GCA_009858895.3_ASM985889v3_genomic.200409.fna" >> bbsplit_fasta_list.txt
echo "human,/input/rnaseq/reference/chr22_23800000-23980000.fa" >> bbsplit_fasta_list.txt