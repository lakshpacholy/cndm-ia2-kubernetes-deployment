# CNDM IA2: Containerization & Kubernetes Deployment

**Author:** Laksh Pacholy

## Architecture Overview
This project contains a Python Flask application deployed on Kubernetes (Minikube on AWS EC2). 
- **Part A:** Multi-stage Docker build with a non-root user and healthchecks.
- **Part B:** Kubernetes Deployment (3 replicas) and NodePort Service exposing the app.

## Repository Layout
- `app.py`, `requirements.txt`: Application source code.
- `Dockerfile`, `.dockerignore`: Container build instructions.
- `k8s/`: Kubernetes manifests (Deployment and Service).
- `scripts/`: Bash scripts for setting up the environment, deploying, and exposing the app.
