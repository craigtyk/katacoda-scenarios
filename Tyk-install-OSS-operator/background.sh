#!/bin/bash
helm repo add tyk-helm https://helm.tyk.io/public/helm/charts/
helm repo update
kubectl create namespace tyk
helm install redis tyk-helm/simple-redis -n tyk &
process_id=$!
wait $process_id
helm install tyk-ce tyk-helm/tyk-headless -n tyk &
process_id=$!
wait $process_id
echo "Tyk Gateway deployment complete"