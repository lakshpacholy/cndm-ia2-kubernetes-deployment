#!/bin/bash
echo "Starting minikube..."
minikube start --driver=docker

echo "Pointing shell to minikube's Docker daemon..."
eval $(minikube docker-env)

echo "Building Docker image inside Minikube..."
docker build -t lakshpacholy/flask-k8s-app:v1 .

echo "Applying Kubernetes manifests..."
kubectl apply -f k8s/deployment.yaml
kubectl apply -f k8s/service.yaml

echo "Deployment initiated. Check status with 'kubectl get pods'."
