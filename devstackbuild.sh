#!/bin/bash
# #create devstack user
# sudo useradd stack
# sudo mkdir /home/stack
# echo "stack:stack"| sudo chpasswd
# sudo su - stack
# sudo apt-get update
# sudo apt-get -y install git vim

set -e
sudo apt-get install git -y
#set environment variables

#download Icehouse
git clone https://github.com/openstack-dev/devstack.git -b stable/icehouse devstack/
sudo chmod -R 777 devstack
cd devstack; tools/create-stack-user.sh



# #deploy devstack
# cd devstack && ./stack.sh