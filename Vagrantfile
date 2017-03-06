# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
    config.vm.define "ansible" do |ctl|
        ctl.vm.box = "boxcutter/ubuntu1604"
        ctl.vm.hostname = "ansible"
        ctl.vm.network "private_network",ip: "192.168.2.5"
        ctl.vm.provider "virtualbox" do |vb|
            vb.memory = 2048
        end
    end
end