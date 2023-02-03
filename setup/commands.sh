#!/bin/bash
apt update > /dev/null
apt install -y git wget unzip  > /dev/nulldata
mkdir /input/pipelines

echo "Download rnaseq (1/9)"
cd /input/pipelines
git clone https://github.com/nf-core/rnaseq.git > /dev/null
cd rnaseq
git checkout e049f51f0214b2aef7624b9dd496a404a7c34d14 2> /dev/null

echo "Download sarek (2/9)"
cd /input/pipelines
git clone https://github.com/nf-core/sarek.git > /dev/null
cd sarek
git checkout bcd7bf9cb98cddec27bb54fb47ee122c09388c02 2> /dev/null

echo "Download chipseq (3/9)"
cd /input/pipelines
git clone https://github.com/nf-core/chipseq.git > /dev/null
cd chipseq
git checkout 51eba00b32885c4d0bec60db3cb0a45eb61e34c5 2> /dev/null

echo "Download atacseq (4/9)"
cd /input/pipelines
git clone https://github.com/nf-core/atacseq.git > /dev/null
cd atacseq
git checkout f327c86324427c64716be09c98634ae0bc8165f6 2> /dev/null

echo "Download mag (5/9)"
cd /input/pipelines
git clone https://github.com/nf-core/mag.git > /dev/null
cd mag
git checkout a8e92af70eca59a92b72262e6cdde11e69375801 2> /dev/null

echo "Download ampliseq (6/9)"
cd /input/pipelines
git clone https://github.com/nf-core/ampliseq.git > /dev/null
cd ampliseq
git checkout 708b8398d007d9a8c907ce6da478717e1ab5f5bc 2> /dev/null

echo "Download nanoseq (7/9)"
cd /input/pipelines
git clone https://github.com/nf-core/nanoseq.git > /dev/null
cd nanoseq
git checkout 1e60482a2c4621234393a6eef8e9a104309c20ae 2> /dev/null
cd workflows
patch nanoseq.nf < /input/nanoseqPatch.diff > /dev/null

echo "Download viralrecon (8/9)"
cd /input/pipelines
git clone https://github.com/nf-core/viralrecon.git > /dev/null
cd viralrecon
git checkout 3ee1fe98fdf17a80922aa8cf4da4afaf483f3429 2> /dev/null

echo "Download eager (9/9)"
cd /input/pipelines
git clone https://github.com/nf-core/eager.git > /dev/null
cd eager
git checkout bb32ae3b0110b9a26b791f73a5324828d849271a 2> /dev/null


echo "Fetch data for: rnaseq (1/9)"
cd /input/rnaseq/
bash fetchData.sh > /dev/null
echo "Fetch data for: sarek (2/9)"
cd /input/sarek/
bash fetchData.sh > /dev/null
echo "Fetch data for: chipseq (3/9)"
cd /input/chipseq/
bash fetchData.sh > /dev/null
echo "Fetch data for: atacseq (4/9)"
cd /input/atacseq/
bash fetchData.sh > /dev/null
echo "Fetch data for: mag (5/9)"
cd /input/mag/
bash fetchData.sh > /dev/null
echo "Fetch data for: ampliseq (6/9)"
cd /input/ampliseq/
bash fetchData.sh > /dev/null
echo "Fetch data for: nanoseq (7/9)"
cd /input/nanoseq/
bash fetchData.sh > /dev/null
echo "Fetch data for: viralrecon (8/9)"
cd /input/viralrecon/
bash fetchData.sh > /dev/null
echo "Fetch data for: eager (9/9)"
cd /input/eager/
bash fetchData.sh > /dev/null