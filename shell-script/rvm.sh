#!/bin/bash 
sudo apt-get update
sudo apt-get install -y curl gnupg build-essential  
sudo gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 
curl -sSL https://get.rvm.io | sudo bash -s stable
sudo usermod -a -G rvm `whoami`
source /etc/profile.d/rvm.sh
rvm install ruby
rvm –-default use ruby
gem install bundler
curl -sL https://deb.nodesource.com/setup_4.x | sudo apt-get install -y nodejs
gem install rails -v 5.0.1
ruby -v
rails -v
EOF
