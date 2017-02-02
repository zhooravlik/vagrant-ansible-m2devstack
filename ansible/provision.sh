#!/usr/bin/env bash
# Update Repositories
sudo apt-get update
sudo apt-get install -y software-properties-common
# Add Ansible Repository & Install Ansible
sudo add-apt-repository -y ppa:ansible/ansible
sudo apt-get update
sudo apt-get install -y ansible
sudo mkdir -p /etc/ansible
printf '[vagrant]\nlocalhost\n' | sudo tee /etc/ansible/hosts > /dev/null
sudo ansible-playbook /vagrant/ansible/playbook.yml --connection=local