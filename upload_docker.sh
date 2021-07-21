#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath="vipavani85/flashapp"

# Step 2:  
# Authenticate & tag
eccho "Docker ID and Image: $dockerpath"
docker login
docker tag flaskapp $dockerpath:latest

# Step 3:
# Push image to a docker repository
docker push $dockerpath:latest
