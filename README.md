# Vagrant-cBuilder-VM

This repo uses Ansible, Vagrant and VirtualBox for Ubuntu Containers Build VM creation and setting up basis host configuration via scripts stored under **scripts** directory.

## Prerequisites ##
Baremetal server running Ubuntu/CentOS with Ansible, Vagrant and VirtualBox SW. In my case i used Ubuntu 16.04.3 with following steps for the installation of SW:

* #apt-get update
* #apt-get install -y virtualbox virtualbox-dkms vagrant ansible
* #vagrant plugin install vagrant-hostmanager
* #vagrant plugin install vagrant-timezone
* #vagrant plugin list
