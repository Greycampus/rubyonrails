#!/bin/bash 
sudo apt-get update
sudo apt-get install build-essential
sudo apt-get install autoconf bison build-essential libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libncurses5-dev libffi-dev  libgdbm3 libgdbm-dev
wget ftp://ftp.ruby-lang.org/pub/ruby/2.4/ruby-2.4.1.tar.gz
tar xzvf ruby-2.4.1.tar.gz
cd ruby-2.4.1
./configure
make
make install
gem install bundler
gem update --system
gem install rails
ruby -v
rails -v

EOF