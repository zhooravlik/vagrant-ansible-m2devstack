# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |vconfig|
    vconfig.vm.box = "bento/ubuntu-16.04"
    #vconfig.vm.box_url = "xenial-server-cloudimg-amd64-vagrant.box"

    vconfig.vm.define :m2box7 do |config|
        config.vm.provider :virtualbox do |v|
            v.customize [ "modifyvm", :id, "--memory", "6144" ]
        end
        config.vm.host_name = "m27"

        config.vm.network "private_network", ip: "192.168.56.103"

        config.vm.network :forwarded_port, guest: 80, host: 80

        config.vm.provision :shell, :path => "ansible/provision.sh"
    end
end
