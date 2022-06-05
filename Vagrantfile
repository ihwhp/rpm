# -*- mode: ruby -*-
# vi: set ft=ruby :

require 'open3'
require 'fileutils'

Vagrant.configure("2") do |config|

config.vm.define "reposrv" do |server|
  config.vm.boot_timeout = 420
  config.vm.box = 'almalinux/8'
  server.vm.host_name = 'reposrv'
  server.vm.network :private_network, ip: "192.168.56.40"
  server.vm.provider "virtualbox" do |vb|
    vb.memory = "2048"
	vb.cpus = "2"
    vb.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
  end


  server.vm.provision "shell",
    name: "Bootstrap configuration",
    path: "bootstrap.sh"
  end

end
