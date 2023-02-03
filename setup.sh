#!/bin/bash
namespace="cws"

kubectl create namespace $namespace
kubectl apply -f setup/pvc.yaml --namespace $namespace
kubectl apply -f setup/management.yaml --namespace $namespace
kubectl wait --for=condition=ready pod management --namespace $namespace

echo "Upload data"
kubectl cp inputs/rnaseq $namespace/management:/input/
kubectl cp inputs/sarek $namespace/management:/input/
kubectl cp inputs/chipseq $namespace/management:/input/
kubectl cp inputs/atacseq $namespace/management:/input/
kubectl cp inputs/mag $namespace/management:/input/
kubectl cp inputs/ampliseq $namespace/management:/input/
kubectl cp inputs/nanoseq $namespace/management:/input/
kubectl cp inputs/viralrecon $namespace/management:/input/
kubectl cp inputs/eager $namespace/management:/input/

kubectl cp setup/nanoseqPatch.diff $namespace/management:/input/
kubectl cp setup/commands.sh $namespace/management:/input/

kubectl apply -f setup/accounts.yaml --namespace $namespace

# if you face any problems, run this manually in the pod.
kubectl exec  --namespace $namespace management -- /bin/bash /input/commands.sh