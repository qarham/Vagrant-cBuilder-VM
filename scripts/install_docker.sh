#!/bin/bash -eux
#Add basic repo to sources.list

sudo bash -c 'cat <<EOF >/etc/apt/sources.list
###### Ubuntu Main Repos
deb http://01.archive.ubuntu.com/ubuntu/ xenial main restricted universe multiverse
deb-src http://01.archive.ubuntu.com/ubuntu/ xenial main restricted universe multiverse

###### Ubuntu Update Repos
deb http://01.archive.ubuntu.com/ubuntu/ xenial-security main restricted universe multiverse
deb http://01.archive.ubuntu.com/ubuntu/ xenial-updates main restricted universe multiverse
deb http://01.archive.ubuntu.com/ubuntu/ xenial-proposed main restricted universe multiverse
deb http://01.archive.ubuntu.com/ubuntu/ xenial-backports main restricted universe multiverse
deb-src http://01.archive.ubuntu.com/ubuntu/ xenial-security main restricted universe multiverse
deb-src http://01.archive.ubuntu.com/ubuntu/ xenial-updates main restricted universe multiverse
deb-src http://01.archive.ubuntu.com/ubuntu/ xenial-proposed main restricted universe multiverse
deb-src http://01.archive.ubuntu.com/ubuntu/ xenial-backports main restricted universe multiverse
deb [arch=amd64] https://download.docker.com/linux/ubuntu xenial stable
EOF'

sudo apt-get update -y

sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common -y

# Add Docker's official GPG key

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

sudo apt-get update -y

sudo apt-get install docker-ce -y

#sudo docker run -d -p 5000:5000 --restart=always --name registry registry:2
