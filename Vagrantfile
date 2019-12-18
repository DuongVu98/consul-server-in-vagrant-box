
Vagrant.configure("2") do |config|

  config.vm.box = "ubuntu/xenial64"

  # config.vm.network "forwarded_port", guest: 8500, host: 8500
  config.vm.network "private_network", ip: "192.168.1.2"
  config.vm.network "public_network", ip: "192.168.0.100"
  config.vm.synced_folder ".", "/home/vagrant/src"

  config.vm.provider "virtualbox" do |vb|
    # Customize the amount of memory on the VM:
    vb.memory = "2048"
    vb.cpus = 2
  end

  config.vm.provision "shell", path: "consul-setup.sh"

  # config.vm.provision "file", source: "config.json", destination: "/home/vagrant/consul-config/server"
  # config.vm.provision "file", source: "consul.conf", destination: "/etc/nginx/conf.d"

  config.vm.provision "shell", path: "consul-setup.sh"
end
