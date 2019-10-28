#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=first-docker-application

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"

# Step 3:
# Push image to a docker repository
export DOCKER_ID_USER="nisalikularatne"
docker login
docker tag first-docker-application $DOCKER_ID_USER/first-docker-application
docker push $DOCKER_ID_USER/first-docker-application
