# Install stuff
sudo apt-get update && sudo apt-get -y upgrade
sudo apt-get install -y unzip
sudo apt-get install -y tmux
sudo apt-get install -y nginx

# Install Consul
cd /usr/local/bin
sudo wget https://releases.hashicorp.com/consul/0.8.0/consul_0.8.0_linux_amd64.zip
sudo unzip consul_0.8.0_linux_amd64.zip
sudo rm -rf consul_0.8.0_linux_amd64.zip

mkdir consul-ui
cd consul-ui
wget https://releases.hashicorp.com/consul/0.8.0/consul_0.8.0_web_ui.zip
unzip consul_0.8.0_web_ui.zip
rm -rf consul_0.8.0_web_ui.zip

# Configure Consul server
cd ~
mkdir -p consul-config/server
sudo cp /home/vagrant/src/config.json /home/vagrant/consul-config/server
sudo cp /home/vagrant/src/consul.conf /etc/nginx/conf.d

# Copy ui files to /home/vagrant/consul/ui
cp -R /usr/local/bin/consul-ui /home/vagrant

# Start the Nginx server
sudo systemctl restart nginx.service