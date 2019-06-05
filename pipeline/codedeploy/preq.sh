#!/bin/bash
sudo su
apt update
wget -qO- https://get.docker.com/ | sh
docker --version
apt update
apt install unzip
apt install python-minimal -y
#pip install awscli --upgrade
curl "https://s3.amazonaws.com/aws-cli/awscli-bundle.zip" -o "awscli-bundle.zip"
unzip awscli-bundle.zip
./awscli-bundle/install -i /usr/local/aws -b /usr/local/bin/aws

apt install awscli -y
cp /usr/local/bin/aws /usr/bin/