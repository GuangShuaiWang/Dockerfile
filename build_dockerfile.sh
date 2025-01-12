#!/bin/bash

DOCKERFILE_PATH="colabfold_dockerfile"
IMAGE_NAME="colabfold_gpu" 
IMAGE_TAG="latest"           

echo "Building Docker image..."
docker build -f $DOCKERFILE_PATH -t $DOCKERHUB_USERNAME/$IMAGE_NAME:$IMAGE_TAG .

echo "Pushing Docker image to Docker Hub..."
docker push $DOCKERHUB_USERNAME/$IMAGE_NAME:$IMAGE_TAG

echo "Build and push completed!"
