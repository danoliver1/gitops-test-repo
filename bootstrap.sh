#!/bin/bash
set -eo pipefail

# Check if the user has provided the cluster name
if [ -z "$1" ]; then
    echo "Please provide the cluster name"
    echo "Usage: bootstrap.sh <cluster-name>"
    exit 1
fi

CLUSTER_NAME=$1

# Install ArgoCD
kubectl create namespace argocd --dry-run=client -o yaml | kubectl apply -f -
kubectl apply -k bootstrap/argocd

# Deploy Argo "App of Apps" resource
kubectl apply -f bootstrap/apps -o yaml --dry-run=client \
    | sed "s/\$CLUSTER_NAME/$CLUSTER_NAME/g" \
    | kubectl apply -f -