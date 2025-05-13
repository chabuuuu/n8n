#!/bin/bash

# Exit ngay lập tức nếu có bất kỳ lệnh nào lỗi
set -e

# Nhập các biến cần thiết
# echo "Nhập tên người dùng Docker Hub:"
# read DOCKER_USERNAME
# echo "Nhập tên repository trên Docker Hub:"
# read REPOSITORY
echo "Nhập tag cho image (ví dụ: latest hoặc v1.0.0):"
read TAG

# Tên đầy đủ của image
IMAGE_NAME="haphuthinh/n8n:$TAG"

# # Đăng nhập vào Docker Hub
# echo "Đăng nhập vào Docker Hub..."
# docker login

# Build Docker image
echo "Building Docker image $IMAGE_NAME..."
sudo docker build -t "$IMAGE_NAME" -f docker/images/n8n-custom/Dockerfile .

# Thông báo hoàn thành
echo "Docker image đã được build thành công: $IMAGE_NAME"
