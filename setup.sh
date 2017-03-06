#!/bin/bash

echo "### install docker ###"

source ./proxy.sh

yum install -y yum-utils

yum-config-manager \
    --add-repo \
    https://download.docker.com/linux/centos/docker-ce.repo

yum makecache fast

yum -y install docker-ce

systemctl start docker

docker run hello-world

echo "### install ansible ###"

yum -y install python python-pip ansible

pip install docker-py
