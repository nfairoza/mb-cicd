#!/bin/bash
sudo su
echo "Building docker IMAGE "
#cd  pipeline/dockerimage
echo "Switching directory " `pwd` 
export IMAGE_NAME=239144702963.dkr.ecr.us-east-2.amazonaws.com/octank-cicd
export TAG=latest
docker build -f pipeline/dockerimage/Dockerfile -t $IMAGE_NAME:$TAG .
docker tag $IMAGE_NAME:$TAG $IMAGE_NAME:$TAG
