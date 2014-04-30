sudo apt-get update
sudo apt-get -y install git vim

#download Icehouse
git clone https://github.com/openstack-dev/devstack.git -b stable/icehouse devstack/

#set environment variables
export DATABASE_PASSWORD=stack
export RABBIT_PASSWORD=stack
export SERVICE_TOKEN=stack
export SERVICE_PASSWORD=stack
export ADMIN_PASSWORD=stack

#deploy devstack
cd devstack && ./stack.sh