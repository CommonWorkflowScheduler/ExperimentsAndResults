#!/bin/bash
nextflowVersion='nextflow/nextflow:22.10.1'
cluster=$1
workflow=$2
profile=$3

mkdir $cluster
cd $cluster

nextflow kuberun /input/pipelines/$workflow/ \
    -v api-exp-data:/data \
    -v api-exp-input:/input \
    -head-image $nextflowVersion \
    -config ../nextflow.config \
    -config ../configs/$workflow.config \
    --save_reference false \
    --outdir /data/output/ \
    -profile $cluster \
    -remoteProfile $profile
