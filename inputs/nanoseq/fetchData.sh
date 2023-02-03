#!/bin/bash
mkdir data
cd data
cd ..

mkdir reference
cd reference

wget -q https://github.com/nf-core/test-datasets/archive/fb3ab1fc25c72b5799a9ebe846796391c22880df.zip -O nanoseq.zip
unzip nanoseq.zip
rm nanoseq.zip
mv test-datasets-fb3ab1fc25c72b5799a9ebe846796391c22880df/modification_fast5_fastq/ .
mv test-datasets-fb3ab1fc25c72b5799a9ebe846796391c22880df/reference/modification_transcriptome_subset.gtf .
mv test-datasets-fb3ab1fc25c72b5799a9ebe846796391c22880df/reference/modification_transcriptome_subset.fa .

rm -rf test-datasets-fb3ab1fc25c72b5799a9ebe846796391c22880df