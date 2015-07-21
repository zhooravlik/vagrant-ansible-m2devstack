# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |vconfig|
    vconfig.vm.box = "m2epam/trusty64"
    vconfig.vm.box_url = "trusty-server-cloudimg-amd64-vagrant-disk1.box"
    #vconfig.vm.box_url = "https://cloud-images.ubuntu.com/vagrant/utopic/current/utopic-server-cloudimg-amd64-vagrant-disk1.box"

    vconfig.vm.define :magento2devbox do |config|
        config.vm.provider :virtualbox do |v|
            v.customize [ "modifyvm", :id, "--memory", "4096" ]
        end
        config.vm.host_name = "m2dev"

        config.vm.synced_folder "./", "/vagrant", :mount_options => ['dmode=777', 'fmode=666'] #, :nfs=>true

        config.vm.network "private_network", ip: "192.168.56.103"

        config.vm.network :forwarded_port, guest: 80, host: 80

        config.vm.provision :shell, :path => "ansible/provision.sh"
    end
end