#!/bin/bash

kubectl create -f ./kubernetes/spark-master-deployment.yaml -n hadoop-geekyouth
kubectl create -f ./kubernetes/spark-master-service.yaml -n hadoop-geekyouth

sleep 10

kubectl create -f ./kubernetes/spark-worker-deployment.yaml -n hadoop-geekyouth
kubectl create -f ./kubernetes/spark-worker-service.yaml -n hadoop-geekyouth

# kubectl apply -f ./kubernetes/minikube-ingress.yaml -n hadoop-geekyouth

kubectl get pods -o wide -n hadoop-geekyouth
