#!/bin/env bash

# sometimes this doesn't work, so need to ssh to master first
export ANSIBLE_HOST_KEY_CHECKING=False

ansible all -m ping -i hosts
ansible-playbook -v  site.yml -i hosts

#ansible-playbook -v site.yml -i hosts --extra-vars "master_host=<master-ip>"
