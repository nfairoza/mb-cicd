#!/bin/bash
apt-get update
apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common \
    unzip \
    apt-utils \
    python-minimal

echo  ********************************* Installed apt preqs  *********************************
curl -fsSL https://get.docker.com -o get-docker.sh
bash get-docker.sh
docker --version
echo  ********************************* Installed Docker  *********************************

# curl "https://s3.amazonaws.com/aws-cli/awscli-bundle.zip" -o "awscli-bundle.zip"
# unzip awscli-bundle.zip
# ./awscli-bundle/install -i /usr/local/aws -b /usr/local/bin/aws
# apt install awscli -y

curl -O https://bootstrap.pypa.io/get-pip.py
python get-pip.py
/usr/local/bin/pip install awscli --upgrade 

cp /usr/local/bin/aws /usr/bin/

aws --version
aws ecr

#cp /usr/local/bin/aws /usr/bin/

echo  ********************************* End of preq.sh *********************************