#!/bin/bash

# 定义变量
DOCKERHUB_USERNAME="wanggsh"  # Docker Hub 用户名
DOCKERFILE_PATH="colabfold_dockerfile"  # Dockerfile 路径
IMAGE_NAME="colabfold_gpu"  # 镜像名
IMAGE_TAG="latest"  # 标签

# 构建镜像
echo "Building Docker image..."
docker build -t $DOCKERHUB_USERNAME/$IMAGE_NAME:$IMAGE_TAG -f $DOCKERFILE_PATH .

# 推送镜像到 Docker Hub
echo "Pushing Docker image to Docker Hub..."
docker push $DOCKERHUB_USERNAME/$IMAGE_NAME:$IMAGE_TAG

# 结束提示
echo "Build and push completed!"
