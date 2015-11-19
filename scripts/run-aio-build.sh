#!/bin/bash

set -o xtrace

# Install basic packages for this script.
apt-get update
apt-get -y install git

# GIT clone our playbook to CWD.
git clone https://github.com/pantarei/ansible-playbook-jira.git /opt/ansible-playbook-jira
cd /opt/ansible-playbook-jira

# Bootstrap Ansible then run all playbooks.
scripts/bootstrap-ansible.sh
scripts/bootstrap-roles.sh
scripts/bootstrap-vars.sh
scripts/bootstrap-hosts.sh
scripts/run-playbooks.sh