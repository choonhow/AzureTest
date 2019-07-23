#!/bin/bash

#sudo apt-get update
#sudo apt-get --yes --force-yes install openjdk-8-jdk
#sudo yum -y install java-1.8.0-openjdk

sudo yum -y install httpd

sudo service start

sudo firewall-cmd --add-port=80/tcp --permanent

sudo systemctl restart firewalld

sudo rm -rf /var/www/html/*

sudo wget https://github.com/choonhow/AzureTest/raw/master/static/pud.zip -O /var/www/html/pud.zip

sudo unzip /var/www/html/pud.zip -d /var/www/html/

sudo mv  /var/www/html/pud/* /var/www/html/.
