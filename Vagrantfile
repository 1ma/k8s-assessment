# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/xenial64"

  # Machine-specific provider-specific config (names)
  config.vm.define "k8s-master" do |machineconfig|
    machineconfig.vm.provider "virtualbox" do |vb|
      vb.name = "k8s-master"
    end
    machineconfig.vm.network "private_network", ip: "192.168.33.10"
  end

  config.vm.define "k8s-node" do |machineconfig|
    machineconfig.vm.provider "virtualbox" do |vb|
      vb.name = "k8s-node"
    end
    machineconfig.vm.network "private_network", ip: "192.168.33.11"
  end

  # Common provider-specific config
  config.vm.provider "virtualbox" do |vb|
    vb.gui = false
    vb.memory = "1024"
    vb.cpus = 1
    vb.customize ["modifyvm", :id, "--vram", "8"]
  end

  config.vm.provision "shell", inline: <<-SHELL
    locale-gen en_US.UTF-8 es_ES.UTF-8

    curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add -
    apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D

    sh -c 'echo "deb http://apt.kubernetes.io/ kubernetes-xenial main" > /etc/apt/sources.list.d/kubernetes.list'
    sh -c 'echo "deb https://apt.dockerproject.org/repo ubuntu-xenial main" > /etc/apt/sources.list.d/docker.list'

    apt-get update -y
  SHELL
end
