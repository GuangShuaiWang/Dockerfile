#!/bin/bash

$DOCKERHUB_USERNAME="wanggsh"
DOCKERFILE_PATH="colabfold_dockerfile"
IMAGE_NAME="colabfold_gpu" 
IMAGE_TAG="latest"           

echo "Building Docker image..."
docker build -t $DOCKERHUB_USERNAME/$IMAGE_NAME -f $DOCKERFILE_PATH .

echo "Pushing Docker image to Docker Hub..."
docker push $DOCKERHUB_USERNAME/$IMAGE_NAME:$IMAGE_TAG

echo "Build and push completed!"
