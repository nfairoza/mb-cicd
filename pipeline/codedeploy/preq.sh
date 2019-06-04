#!/bin/bash
sudo su
apt update
wget -qO- https://get.docker.com/ | sh
docker --version
apt update
apt install unzip
apt install python-minimal -y
pip install awscli --upgrade
cp /usr/local/bin/aws /usr/bin/