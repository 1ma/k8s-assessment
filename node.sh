#!/bin/bash
set -xeu

TOKEN=
MASTER_IP=

sudo apt-get install -y docker-engine
sudo usermod -a -G docker ubuntu
sudo service docker restart


sudo apt-get install -y kubeadm
sudo kubeadm join --token=$TOKEN $MASTER_IP
