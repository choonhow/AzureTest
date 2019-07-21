#!/bin/bash

sudo apt-get update

whoami

sudo apt-get --yes --force-yes install openjdk-8-jdk

mkdir /etc/cloudx

ls /etc/cloudx

wget https://github.com/choonhow/AzureTest/raw/master/target/sample-web-0.1.0.jar -O /etc/cloudx

ls /etc/cloudx

nohup java -jar /etc/cloudx/sample-web-0.1.0.jar > /etc/cloudx/nohup.out 2>&1&
