Magento 2 development vagrant-lamp-ansible stack.

This is a simple playbook for vagrant that sets up Ubuntu with tools required for Magento 2 web development.

Specifically this recipe automatically installs:
- Ubuntu 14.04
- PHP 5.5
- MySQL 5.6

To get started, install:
- Vagrant (http://www.vagrantup.com/)
- VirtualBox (https://www.virtualbox.org/)

Clone this repository to a local directory. After changing into the directory, run:
    vagrant up

This should download, run and provision the virtual machine.
If you don't wont to download box, you can specify path to the box in your local machine.
Link to vagrant box can be specified in Vagrantfile #vconfig.vm.box_url setting. Current set up is capable with ubuntu 14.10.

If something goes wrong, you can look at ansible playbooks, which contains the provisioning recipes.
You can re-provision the VM using:
    vagrant provision

If you don't need this virtual machine any more, you can delete it:
    vagrant destroy

Magento CE directory - /var/www/magento-ce
Magento EE directory - /var/www/magento-ee

MySQL Databases: magento-ce, magento-ee

To configure xdebug in IDE use following steps:
1) Create new "Php remote debug" configuration.
2) Specify server (magento.ce or magento.ee) and path mapping.
3) Ide key (session id) - start-xdebug

Also you should edit you hosts file and add:
127.0.0.1    magento.ce
127.0.0.1    magento.ee