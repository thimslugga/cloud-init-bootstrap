#!/usr/bin/env bash
#set -e

# Install dependencies
apt-get update && apt-get install -y git

# Install Ansible
apt-get update && apt-get install -y ansible

# Clone your Ansible repository
git clone https://github.com/thimslugga/cloud-init-bootstrap.git /etc/ansible/cloud-init-bootstrap

# Run your initial Ansible playbook
ansible-playbook /etc/ansible/cloud-init-bootstrap/ubuntu.yml