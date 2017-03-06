#!/bin/bash
export http_proxy="192.168.56.1:3128"
export https_proxy=$http_proxy
export HTTP_PROXY=$http_proxy
export HTTPS_PROXY=$http_proxy

echo "export http_proxy=$http_proxy" >> ~/.bashrc
echo "export https_proxy=$http_proxy" >> ~/.bashrc

echo "proxy=http://$http_proxy" >> /etc/yum.conf

 mkdir -p /etc/systemd/system/docker.service.d/

echo "[Service]" > /etc/systemd/system/docker.service.d/http-proxy.conf
echo "Environment=\"HTTP_PROXY=http://$http_proxy/\"" > /etc/systemd/system/docker.service.d/http-proxy.conf
