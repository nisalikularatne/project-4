#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=first-docker-application

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run first-docker-application --image=nisalikularatne/first-docker-application --port=80

# Step 3:
# List kubernetes pods
kubectl get pods
# Step 4:
# Forward the container port to a host
kubectl port-forward deployment/first-docker-application 8080:80 
kubectl logs --selector app=first-docker-application

# Step 5 
# Log pods
kubectl logs first-docker-application-67b4f4c54d-wr2sg
