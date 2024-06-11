#!bin/bash

#Scrip Infraestrutura como código 2

apt-get update
apt-get upgrade
#baixando o apache2 o unzip e o wget
apt-get install apache2 unzip wget

#baixando o site
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

cp main.zip /var/www/html
