#!/bin/bash

#sudo apt-get update
#sudo apt-get --yes --force-yes install openjdk-8-jdk
sudo yum -y install java-1.8.0-openjdk

sudo firewall-cmd --add-port=8080/tcp --permanent

sudo systemctl restart firewalld

mkdir /etc/cloudx

wget https://github.com/choonhow/AzureTest/raw/master/target/sample-web-0.1.0.jar -O /etc/cloudx/sample-web-0.1.0.jar

nohup java -jar /etc/cloudx/sample-web-0.1.0.jar > /etc/cloudx/nohup.out 2>&1&
