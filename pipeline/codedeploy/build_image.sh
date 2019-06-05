#!/bin/bash
echo "Building docker IMAGE "
#cd  ../dockerimage
echo "Switching directory " `pwd` 
export IMAGE_NAME=239144702963.dkr.ecr.us-east-2.amazonaws.com/octank-cicd
export TAG=latest
docker ps
docker images
docker build -f ../dockerimage/Dockerfile -t $IMAGE_NAME:$TAG .
docker tag $IMAGE_NAME:$TAG $IMAGE_NAME:$TAG
