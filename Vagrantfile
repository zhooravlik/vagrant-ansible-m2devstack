# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |vconfig|
    vconfig.vm.box = "m2epam/vivid64"
    vconfig.vm.box_url = "ubuntu-15.04-amd64.box"
    #Remove commented line if you want to to download box
    #vconfig.vm.box_url = "https://cloud-images.ubuntu.com/vagrant/vivid/current/vivid-server-cloudimg-amd64-vagrant-disk1.box"

    vconfig.vm.define :m2box do |config|
        config.vm.provider :virtualbox do |v|
            v.customize [ "modifyvm", :id, "--memory", "6144" ]
        end
        config.vm.host_name = "m2"

        config.vm.network "private_network", ip: "192.168.56.103"

        config.vm.network :forwarded_port, guest: 80, host: 80

        config.vm.provision :shell, :path => "ansible/provision.sh"
    end
end
