# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
    config.vm.define "ansible" do |ctl|
        ctl.vm.box = "geerlingguy/centos7"
        ctl.vm.hostname = "ansible"
        ctl.vm.synced_folder ".", "/vagrant", type: "virtualbox"
        ctl.vm.network "private_network",ip: "10.0.0.5"
        config.vm.network "forwarded_port", guest: 80, host: 8080, auto_correct: true
        ctl.vm.provider "virtualbox" do |vb|
            vb.memory = 2048
        end
    end
end