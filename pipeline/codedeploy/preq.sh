#!/bin/bash
apt-get update
apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common \
    unzip

echo Installed apt preqs
curl -fsSL https://get.docker.com -o get-docker.sh
bash get-docker.sh
docker --version
apt-get install docker docker-engine docker.io
docker --version
echo Installed Docker



curl "https://s3.amazonaws.com/aws-cli/awscli-bundle.zip" -o "awscli-bundle.zip"
unzip awscli-bundle.zip
./awscli-bundle/install -i /usr/local/aws -b /usr/local/bin/aws

apt install awscli -y

aws --version

cp /usr/local/bin/aws /usr/bin/