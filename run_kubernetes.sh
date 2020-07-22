#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=udacityproj04

# Step 2
# Running the Docker Hub container with kubernetes
kubectl run $dockerpath --image=dhruveshshah1/udacityproj04:v01 --port=80

# Step 3:
# Listing kubernetes pods
kubectl get pods
# Step 4:
# Forwarding the container port to a host
kubectl expose deployment udacityproj04 --type=LoadBalancer --port=80
minikube service udacityproj04


