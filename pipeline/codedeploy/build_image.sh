#!/bin/bash
echo "Building docker IMAGE "
#cd  ../dockerimage
echo "Switching directory " `pwd` 
echo "ls" `ls`

pgrep -f docker > /dev/null || echo "starting docker"
export IMAGE_NAME=239144702963.dkr.ecr.us-east-2.amazonaws.com/octank-cicd
export TAG=v2
docker ps
docker images
docker build -f pipeline/dockerimage/Dockerfile -t $IMAGE_NAME:latest .
docker tag $IMAGE_NAME:latest $IMAGE_NAME:$TAG
