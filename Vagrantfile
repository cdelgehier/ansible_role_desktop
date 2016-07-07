# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.define :desktop_prod do |desktop_config|
    desktop_config.vm.box = "centos/7"
    desktop_config.vm.box_url = "http://cloud.centos.org/centos/7/vagrant/x86_64/images/CentOS-7-x86_64-Vagrant-1605_01.VirtualBox.box"
    desktop_config.vm.hostname = "desktop"
    desktop_config.ssh.forward_agent = true
    #desktop_config.vm.network :private_network, ip: "10.0.15.11"
    desktop_config.vm.network "public_network"
    #desktop_config.vm.network "forwarded_port", guest: 80, host: 8080
    desktop_config.vm.provider "virtualbox" do |vb|
      vb.memory = "1024"
      vb.gui = true
      #vb.customize ["modifyvm", :id, "--monitorcount", "2"]
    end
    desktop_config.vm.synced_folder ".", "/tmp/ansible_role_desktop"
  end

  config.vm.provision "ansible" do |ansible|
    ansible.verbose = "v"
    ansible.playbook = "site.yml"
    ansible.groups = {
      "vm" => ["desktop_prod"],
      "vm:vars" => {
        "user_jack" => "jack",
        "desktop" => "i3wm",
        "ansible_host" => "127.0.0.1",
        "ansible_ssh_port" => 2222,
        "ansible_ssh_user" => "vagrant",
        "ansible_become" => "yes",
        "ansible_ssh_private_key_file" => ".vagrant/machines/desktop_prod/virtualbox/private_key"
      }
    }
    #ansible.inventory_path = "vm.inventory"

  end
end
