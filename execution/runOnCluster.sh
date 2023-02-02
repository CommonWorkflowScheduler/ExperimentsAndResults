#!/bin/bash
nextflowVersion=`cat nextflowVersion.txt`
cluster=$1
workflow=$2
profile=$3
strategy=$4

mkdir $cluster
cd $cluster

nextflow kuberun /input/pipelines/$workflow/ \
    -v api-exp-data:/data \
    -v api-exp-input:/input \
    -head-image $nextflowVersion \
    -config ../nextflow.config \
    -config ../configs/$workflow.config \
    --save_reference false \
    --outdir /data/output \
    -remoteProfile $profile \
    -profile $strategy,$cluster
