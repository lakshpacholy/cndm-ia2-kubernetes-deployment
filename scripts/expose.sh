#!/bin/bash
# Forwards the Minikube NodePort to the EC2 instance's public IP on port 30080
echo "Exposing Minikube NodePort on EC2 Public IP..."
echo "Press Ctrl+C to stop."
minikube kubectl -- port-forward --address 0.0.0.0 service/flask-app-service 30080:80
