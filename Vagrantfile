# -*- mode: ruby -*-
# vi: set ft=ruby :

# Specify Vagrant version and Vagrant API version
Vagrant.require_version ">= 1.6.0"
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

    ssh_public_key = File.read(File.join(Dir.home, ".ssh", "id_rsa.pub"))

    # To make running ansible playbooks against vagrant hosts a smoother experience, we
    # run apt-get udpate and copy our public key to the host.
    config.vm.provision "shell", inline: <<-SHELL
      sudo apt-get update
    SHELL

    # ==> Initialize Mnumi ...
    config.vm.define "mnumi" do |machine|
      machine.vm.hostname = "mnumi"
      machine.vm.box = "ubuntu/trusty64"
      machine.vm.network "private_network", ip: "192.168.33.21"
      machine.vm.hostname = "jenkins-php.vagrant"
      machine.vm.provision :ansible do |ansible|
        # Disable default limit to connect to all the machines
        ansible.limit = 'all'
        ansible.playbook = "./provisioning/jenkins-php.yml"
        ansible.inventory_path = "./provisioning/group_vars/vagrant.ini"
        ansible.verbose = "v"
      end
    end
end