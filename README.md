Magento 2 development vagrant-lamp-ansible stack.

This is a simple playbook for vagrant that sets up Ubuntu with tools required for Magento 2 web development.

Specifically this recipe automatically installs:
- Ubuntu 16.04
- PHP 7.0.*
- MySQL 5.7.*

To get started, install:
- Vagrant (http://www.vagrantup.com/)
- VirtualBox (https://www.virtualbox.org/)

Install VirtualBox addons:
    vagrant plugin install vagrant-vbguest

Clone this repository to a local directory. After changing into the directory, run:
    vagrant up

This should download, run and provision the virtual machine.
If you don't wont to download box, you can specify path to the box in your local machine.
Link to vagrant box can be specified in Vagrantfile #vconfig.vm.box_url setting. Current set up is capable with ubuntu 16.04.

If something goes wrong, you can look at ansible playbooks, which contain the provisioning recipes.
You can re-provision the VM using:
    vagrant provision

If you don't need this virtual machine any more, you can delete it:
    vagrant destroy

On this virtual machine you can use run Magento CE and Magento EE separately. 

Magento source code directories on virtual machine:

CE directory - /var/www/magento-ce

EE directory - /var/www/magento-ee
Host magento.ee is configured to use /var/www/magento-ce/ee/ as root folder.
To build EE you should:
1)put EE codebase to /var/www/magento-ee/ee/
2)put CE codebase to /var/www/magento-ee/ce/
3)Build EE (see README_EE.md)
If you want to specify another folders for CE and EE, just edit /etc/hosts file and specify another mapping for magento.ee host.

TODO: describe the same to B2B

MySQL Databases: magento-ce, magento, magento_integration_tests

To configure xdebug in IDE use following steps:
1) Create new "Php remote debug" configuration.
2) Specify server (magento.ce or magento.ee) and path mapping.
3) Ide key (session id) - "start-xdebug".

Also you should edit you hosts file and add:
127.0.0.1    magento.ce
127.0.0.1    magento.ee
127.0.0.1    magento.b2b

~~This build contains scripts for integration, integrity, static and unit tests run for CE edition.~~
~~You can find scripts at /var/www/magento-tests/~~

This virtual machine doesn't support automatic Magento installation. You should upload codebase to virtual machine by SSH or configure you IDE to do it.   

In MySQL 5.7 you can allow access from other hosts:
Open /etc/mysql/mysql.conf.d/mysqld.cnf and comment line containing bind-address
@todo add this to playbook

Old VMs for PHP 5.5 and 5.6 you can find on branches V1 and V2.
