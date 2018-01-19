#!/bin/bash -eux

#login as root
sudo apt-get update
sudo apt-get install ntp -y

sudo rm -rf /etc/ntp.conf
sudo touch /etc/ntp.conf
sudo echo "driftfile /var/lib/ntp/drift" >> /etc/ntp.conf
sudo echo "server 10.84.5.100" >> /etc/ntp.conf
sudo echo "restrict 127.0.0.1" >> /etc/ntp.conf
sudo echo "restrict -6 ::1" >> /etc/ntp.conf 
sudo echo "includefile /etc/ntp/crypto/pw" >> /etc/ntp.conf 
sudo echo "keys /etc/ntp/keys" >> /etc/ntp.conf 
sudo service ntp restart
