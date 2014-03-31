# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  # All Vagrant configuration is done here. The most common configuration
  # Every Vagrant virtual environment requires a box to build off of.
  #config.vm.box = "centos6.4"
  config.vm.box = "centos65-x86_64-20140116"

  # The url from where the 'config.vm.box' box will be fetched if it
  # doesn't already exist on the user's system.

  # CentOS 6.4 x86_64 Minimal (VirtualBox Guest Additions 4.2.12, Chef 11.4.4, Puppet 3.1.1)
  #config.vm.box_url = "http://developer.nrel.gov/downloads/vagrant-boxes/CentOS-6.4-x86_64-v20130427.box"


  config.vm.provider :virtualbox do |vb|
    vb.customize ["modifyvm", :id, "--memory", 2048] # RAM allocated to each VM
  end

  config.vm.provision :shell, :path => "bootstrap.sh"

  config.vm.define :c6401 do |c6401|
    c6401.vm.provision :shell, :path => "start-ambari-server.sh"
    c6401.vm.hostname = "c6401.ambari.apache.org"
    c6401.vm.network :private_network, ip: "192.168.64.101"
  end

  config.vm.define :c6402 do |c6402|
    c6402.vm.hostname = "c6402.ambari.apache.org"
    c6402.vm.network :private_network, ip: "192.168.64.102"
  end

  config.vm.define :c6403 do |c6403|
    c6403.vm.hostname = "c6403.ambari.apache.org"
    c6403.vm.network :private_network, ip: "192.168.64.103"
  end

end
