# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.box = "trusty64"
  config.vm.network "forwarded_port", guest: 80, host: 8080
  # Run the Shell Provisioning Script file
  config.vm.provision :shell, :path => "devstackbuild.sh"

  # If using VMware Fusion
  config.vm.provider :vmware_fusion do |v|
    # Default  
    v.vmx["memsize"] = 4096
    v.vmx["numvcpus"] = 2
  end

  # If using VMware Workstation
  config.vm.provider :vmware_workstation do |v|
    # Default  
    v.vmx["memsize"] = 4096
    v.vmx["numvcpus"] = 2
  end

  # If using VirtualBox
  config.vm.provider :virtualbox do |vbox|
    # Defaults
    vbox.customize ["modifyvm", :id, "--memory", 4096]
    vbox.customize ["modifyvm", :id, "--cpus", 2]
  end

end
