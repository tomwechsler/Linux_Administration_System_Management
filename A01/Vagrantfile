# -*- mode: ruby -*-
# vi: set ft=ruby :

#Place Vagrantfile in the directory you run vagrant from.

#setting for the almalinux VM
Vagrant.configure("2") do |config|
  #config.vm.box = "base"

  config.vm.define "almalinux" do |almalinux|
    almalinux.vm.provider "virtualbox" do |vb_almalinux|
      vb_almalinux.memory = "2048"
      vb_almalinux.cpus = "2"
    end

    almalinux.vm.box = "almalinux/8"
    almalinux.vm.hostname = "almalinux"
	  almalinux.vm.provision "ansible", playbook: "deploy.yaml"
    almalinux.vm.network "private_network", ip: "192.168.56.101"

  end

#settings for the ubuntu VM
  config.vm.define "ubuntu" do |ubuntu|
    ubuntu.vm.provider "virtualbox" do |vb_ubuntu|
	    vb_ubuntu.memory = "2048"
	    vb_ubuntu.cpus = "2"
	end
		
	  ubuntu.vm.box = "ubuntu/focal64"
    ubuntu.vm.hostname = "ubuntu"
    ubuntu.vm.provision "ansible", playbook: "deploy.yaml"
	  ubuntu.vm.network "private_network", ip: "192.168.56.102"
	
  end
 
#settings for the opensuse VM 
  config.vm.define "opensuse" do |opensuse|
	  opensuse.vm.provider "virtualbox" do |vb_opensuse|
	    vb_opensuse.memory = "2048"
	    vb_opensuse.cpus = "2"
	end
	
	  opensuse.vm.box = "opensuse/Leap-15.2.x86_64"
    opensuse.vm.hostname = "opensuse"
	  opensuse.vm.provision "ansible", playbook: "deploy.yaml"
    opensuse.vm.network "private_network", ip: "192.168.56.103"
	
  end
  
end