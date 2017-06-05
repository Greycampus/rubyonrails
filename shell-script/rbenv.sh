#!/bin/bash  
sudo apt-get update
sudo apt-get install build-essential
sudo apt-get install autoconf bison build-essential libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libncurses5-dev  libffi-dev libgdbm3 libgdbm-dev
git clone git://github.com/sstephenson/rbenv.git .rbenv
sudo apt-get install git
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile
echo 'eval "$(rbenv init -)"' >> ~/.bash_profile
git clone git://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bash_profile
source ~/.bash_profile
type rbenv
rbenv install --list
rbenv install 2.3.1
rbenv global 2.3.1
gem install bundler
gem install rails 
rbenv rehash 
ruby -v
rails -v
EOF
