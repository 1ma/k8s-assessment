#!/bin/bash
set -xeu

sudo apt-get install -y kubeadm
sudo kubeadm init
