Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/trusty64"
  config.vm.provider "virtualbox" do |v|
    v.customize ["modifyvm", :id, "--ostype", "Ubuntu_64"]
  end
  config.vm.provision "shell", path: "shell/git.sh"
  config.vm.provision "ansible_local" do |ansible|
    ansible.playbook = "/vagrant/ansible/main.yml"
  end
end
