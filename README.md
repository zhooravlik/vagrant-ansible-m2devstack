Magento 2 development vagrant-lamp-ansible stack.

This is a simple playbook for vagrant that sets up Ubuntu with tools required for Magento 2 web development.

Specifically this recipe automatically installs:
- Ubuntu 15.04
- PHP 5.6.*
- MySQL 5.6.*

To get started, install:
- Vagrant (http://www.vagrantup.com/)
- VirtualBox (https://www.virtualbox.org/)

Install VirtualBox addons:
    vagrant plugin install vagrant-vbguest

Clone this repository to a local directory. After changing into the directory, run:
    vagrant up

This should download, run and provision the virtual machine.
If you don't wont to download box, you can specify path to the box in your local machine.
Link to vagrant box can be specified in Vagrantfile #vconfig.vm.box_url setting. Current set up is capable with ubuntu 15.10.

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

MySQL Databases: magento-ce, magento-ee, magento_integration_tests

To configure xdebug in IDE use following steps:
1) Create new "Php remote debug" configuration.
2) Specify server (magento.ce or magento.ee) and path mapping.
3) Ide key (session id) - "start-xdebug".

Also you should edit you hosts file and add:
127.0.0.1    magento.ce
127.0.0.1    magento.ee

This build contains scripts for integration, integrity, static and unit tests run for CE edition.
You can find scripts at /var/www/magento-tests/
To run all tests use `./run-all.sh` command.

If you would like to specific tests:

Integration tests: `./run-integration.sh`

Integrity tests: `./run-integrity.sh`

Static tests: `./run-static.sh`

Unit tests: `./run-unit.sh`

Legacy tests: `./run-legacy.sh`

If you want ot run tests under EE, you should configure this bash scripts to use EE folder

If you want to run static tests only on diff between branches, you can use next commands to generate files containing changed files and upload them to virtual host. Don't forget to specify branches.


`git log origin/develop..HEAD --name-status --oneline | grep -e "^[MA]" | cut -f 2 | xargs git diff origin/develop -- | grep "+++" | cut -d "/" -f 2-100 > dev/tests/static/testsuite/Magento/Test/Php/_files/changed_files_ce.txt`


`git log origin/develop..HEAD --name-status --oneline | grep -e "^[MA]" | cut -f 2 | xargs git diff origin/develop -- | grep "+++" | cut -d "/" -f 2-100 > dev/tests/static/testsuite/Magento/Test/Legacy/_files/changed_files_ce.txt`

This virtual machine doesn't support automatic Magento installation. You should upload codebase to virtual machine by SSH or configure you IDE to do it.   
