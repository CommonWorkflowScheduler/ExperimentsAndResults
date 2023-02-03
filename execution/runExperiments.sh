#!/bin/bash
workflows=( rnaseq atacseq chipseq ampliseq mag viralrecon nanoseq sarek eager )
prios=( fifo rank random max min rank_max rank_min )
assigns=( random roundrobin fair )
pod="management"
cluster=$1
namespace="cws"

storeAll () {
    mkdir -p $1
    kubectl cp $namespace/$pod:/data/output/report.html $1/report.html
    kubectl cp $namespace/$pod:/data/output/trace.csv $1/trace.csv
    kubectl cp $namespace/$pod:/data/launch/.nextflow.log $1/nextflow.log
    kubectl cp $namespace/$pod:/data/launch/nextflow.config $1/nextflow.config
    kubectl cp $namespace/$pod:/data/output/dag.html $1/dag.html
    mv $cluster/console.log $1/console.log
    mv $cluster/.nextflow.log $1/local.log
}

cleanup () {
    kubectl exec management -n $namespace -- rm /data/launch -rf
    kubectl exec management -n $namespace -- rm /data/output -rf
    kubectl exec management -n $namespace -- rm /data/work -rf
    rm -r $cluster
    pods=`kubectl get pods -n $namespace | grep "nf-" | awk '{print$1}'`
    kubectl delete pod --force -n $namespace $pods
    pods=`kubectl get pods -n $namespace | grep "Completed" | awk '{print$1}'`
    kubectl delete pod --force -n $namespace $pods
    pods=`kubectl get pods -n $namespace | grep "Error" | awk '{print$1}'`
    kubectl delete pod --force -n $namespace $pods
}

for workflow in "${workflows[@]}"
do
    # load all containers into cache -> avoid pulling
    kubectl apply -f "loadToCache/$workflow.yaml" -n $namespace
    kubectl rollout status daemonset workflow-prepare -n $namespace
    kubectl delete -f "loadToCache/$workflow.yaml" --wait -n $namespace
    trial=1

    profile="test"
    if [ "$workflow" == "nanoseq" ]; then
        profile="test_nobc_nodx_rnamod"
    fi

    while [ $trial -ne 6 ]
    do
        mkdir $cluster
        strategy="original"
        experiment=../evaluation/$cluster/$workflow/$strategy/$trial/
        if [ ! -d "$experiment" ]; then
            echo "workflow: $workflow strategy: $strategy"
            bash runOnClusterOrig.sh $cluster $workflow $profile | tee $cluster/console.log
            storeAll $experiment
            cleanup 
        else
            echo "Skipping $workflow $strategy"
        fi
        for prio in "${prios[@]}"
        do
            for assign in "${assigns[@]}"
            do

                mkdir $cluster
                strategy="$prio"_"$assign"
                experiment=../evaluation/$cluster/$workflow/$strategy/$trial/
                if [ ! -d "$experiment" ]; then
                    echo "workflow: $workflow strategy: $strategy"
                    kubectl delete -f workflow-scheduler.yaml --wait -n $namespace
                    kubectl apply -f workflow-scheduler.yaml -n $namespace
                    sleep 10
                    bash runOnCluster.sh $cluster $workflow $profile $strategy | tee $cluster/console.log
                    storeAll $experiment
                    kubectl logs workflow-scheduler -n $namespace > $experiment/scheduler.log
                    cleanup
                    kubectl delete -f workflow-scheduler.yaml -n $namespace --wait
                else
                    echo "Skipping $workflow $strategy"
                fi
            done
        done
        trial=$(($trial+1))
    done
done
