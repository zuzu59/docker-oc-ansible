#!/bin/bash
# Petit script pour configurer un petit ubuntu dans un container docker
# zf190905.1556
# source:

#exit

apt-get update
apt-get -y install htop
#exit

#apt-get -y install vim nano bash-completion command-not-found sudo net-tools patch git
apt-get -y install nano bash-completion command-not-found sudo net-tools inetutils-ping patch
ln -s /usr/bin/python3 /usr/bin/python
sleep 3

patch -i /root/bashrc.diff /root/.bashrc
rm /etc/apt/apt.conf.d/docker-clean
apt-get update

apt-get -y install openssh-server

