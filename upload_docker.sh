#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=udacityproj04

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login --username dhruveshshah1
docker tag udacityproj04 dhruveshshah1/udacityproj04:v01
# Step 3:
# Push image to a docker repository
docker push dhruveshshah1/udacityproj04:v01
