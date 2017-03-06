# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
    config.vm.define "ansible" do |ctl|
        ctl.vm.box = "geerlingguy/centos7"
        ctl.vm.hostname = "ansible"
        ctl.vm.synced_folder ".", "/vagrant", type: "virtualbox"
        ctl.vm.network "private_network",ip: "192.168.2.5"
        ctl.vm.provider "virtualbox" do |vb|
            vb.memory = 2048
        end
    end
end