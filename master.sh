#!/bin/bash
set -xeu

sudo apt-get install -y docker-engine
sudo usermod -a -G docker ubuntu
sudo service docker restart

sudo apt-get install -y kubeadm
sudo kubeadm init --api-advertise-addresses 192.168.33.10
