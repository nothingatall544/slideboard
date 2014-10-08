#!/usr/bin/env bash

#run an upddate first
apt-get update

#get the important stuff
apt-get install -y apache2
apt-get install -y sl
apt-get install -y vim
apt-get install -y curl

curl -sSL https://get.rvm.io | bash -s $1
source /usr/local/rvm/scripts/rvm

rvm install 1.9.3
rvm use 1.9.3
gem install rails -v 4.1

#mount local file to /var (I think)
rm -rf /var/www
ln -fs /vagrant /var/www

#setup terminal
./bash.sh
