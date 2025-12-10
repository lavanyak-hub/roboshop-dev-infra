#!/bin/bash

component=$1      # mongodb / redis / rabbitmq
environment=$2    # dev / prod

dnf install ansible -y

REPO_URL=https://github.com/lavanyak-hub/ansible-roboshop-roles-tf.git
REPO_DIR=/opt/roboshop/ansible
ANSIBLE_DIR=ansible-roboshop-roles-tf

mkdir -p $REPO_DIR
mkdir -p /var/log/roboshop/
touch /var/log/roboshop/ansible.log

cd $REPO_DIR

# Check if repo already exists
if [ -d $ANSIBLE_DIR ]; then
    cd $ANSIBLE_DIR
    git pull
else
    git clone $REPO_URL
    cd $ANSIBLE_DIR
fi

# CORRECT ansible-playbook syntax
ansible-playbook -e "component=$component environment=$environment" main.yaml

