#!/usr/bin/env bash
# This tags and uploads an image to Docker Hub
# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=theokwesi/app
# Step 2
# Run the Docker Hub container with kubernetes
kubectl run app --image theokwesi/app:latest --port 80
# Step 3:
# List kubernetes pods
sleep 5
kubectl get pods
# Step 4:
# Forward the container port to a host
kubectl port-forward pod/app 8080:80
# Make prediction
./make_prediction.sh