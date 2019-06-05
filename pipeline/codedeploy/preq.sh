#!/bin/bash
sudo su
apt update
apt-get remove docker docker-engine docker.io
apt-get update
apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common \
    docker-ce \
    docker

# apt update
# apt install unzip
# apt install python-minimal -y
#pip install awscli --upgrade
curl "https://s3.amazonaws.com/aws-cli/awscli-bundle.zip" -o "awscli-bundle.zip"
unzip awscli-bundle.zip
./awscli-bundle/install -i /usr/local/aws -b /usr/local/bin/aws

apt install awscli -y
cp /usr/local/bin/aws /usr/bin/