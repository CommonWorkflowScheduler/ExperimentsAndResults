mkdir data
cd data
wget -q https://github.com/nf-core/test-datasets/raw/eager/testdata/Mammoth/fastq/JK2782_TGGCCGATCAACGA_L007_R1_001.fastq.gz.tengrand.fq.gz
wget -q https://github.com/nf-core/test-datasets/raw/eager/testdata/Mammoth/fastq/JK2782_TGGCCGATCAACGA_L007_R2_001.fastq.gz.tengrand.fq.gz
wget -q https://github.com/nf-core/test-datasets/raw/eager/testdata/Mammoth/fastq/JK2782_TGGCCGATCAACGA_L008_R1_001.fastq.gz.tengrand.fq.gz
wget -q https://github.com/nf-core/test-datasets/raw/eager/testdata/Mammoth/fastq/JK2782_TGGCCGATCAACGA_L008_R2_001.fastq.gz.tengrand.fq.gz
wget -q https://github.com/nf-core/test-datasets/raw/eager/testdata/Mammoth/fastq/JK2802_AGAATAACCTACCA_L007_R1_001.fastq.gz.tengrand.fq.gz
wget -q https://github.com/nf-core/test-datasets/raw/eager/testdata/Mammoth/fastq/JK2802_AGAATAACCTACCA_L007_R2_001.fastq.gz.tengrand.fq.gz
wget -q https://github.com/nf-core/test-datasets/raw/eager/testdata/Mammoth/fastq/JK2802_AGAATAACCTACCA_L008_R1_001.fastq.gz.tengrand.fq.gz
wget -q https://github.com/nf-core/test-datasets/raw/eager/testdata/Mammoth/bam/JK2782_TGGCCGATCAACGA_L008_R1_001.fastq.gz.tengrand.fq.combined.fq.mapped.bam
wget -q https://github.com/nf-core/test-datasets/raw/eager/testdata/Human/bam/JK2067_downsampled_s0.1.bam


i=1
while [ $i -ne 21 ]
do
    
    cp JK2782_TGGCCGATCAACGA_L007_R1_001.fastq.gz.tengrand.fq.gz JK2782_7_R1_l${i}_fq.gz 
    cp JK2782_TGGCCGATCAACGA_L007_R2_001.fastq.gz.tengrand.fq.gz JK2782_7_R2_l${i}_fq.gz 
    cp JK2782_TGGCCGATCAACGA_L008_R1_001.fastq.gz.tengrand.fq.gz JK2782_8_R1_l${i}_fq.gz 
    cp JK2782_TGGCCGATCAACGA_L008_R2_001.fastq.gz.tengrand.fq.gz JK2782_8_R2_l${i}_fq.gz 
    cp JK2802_AGAATAACCTACCA_L007_R1_001.fastq.gz.tengrand.fq.gz JK2802_7_R1_l${i}_fq.gz
    cp JK2802_AGAATAACCTACCA_L007_R2_001.fastq.gz.tengrand.fq.gz JK2802_7_R2_l${i}_fq.gz

    a=0
    while [ $a -ne $i ]
    do
        cat JK2782_TGGCCGATCAACGA_L007_R1_001.fastq.gz.tengrand.fq.gz >> JK2782_7_R1_l${i}_fq.gz 
        cat JK2782_TGGCCGATCAACGA_L007_R2_001.fastq.gz.tengrand.fq.gz >> JK2782_7_R2_l${i}_fq.gz 
        cat JK2782_TGGCCGATCAACGA_L008_R1_001.fastq.gz.tengrand.fq.gz >> JK2782_8_R1_l${i}_fq.gz 
        cat JK2782_TGGCCGATCAACGA_L008_R2_001.fastq.gz.tengrand.fq.gz >> JK2782_8_R2_l${i}_fq.gz 
        cat JK2802_AGAATAACCTACCA_L007_R1_001.fastq.gz.tengrand.fq.gz >> JK2802_7_R1_l${i}_fq.gz
        cat JK2802_AGAATAACCTACCA_L007_R2_001.fastq.gz.tengrand.fq.gz >> JK2802_7_R2_l${i}_fq.gz
        a=$(($a+1))
    done

    i=$(($i+1))
done




cd ..
mkdir reference
cd reference

wget -q https://raw.githubusercontent.com/nf-core/test-datasets/eager/reference/Mammoth/Mammoth_MT_Krause.fasta