#!/bin/bash
# Petit script pour configurer un petit ubuntu dans un container docker
# zf190904.1345
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

echo "---------------------------------------------------------------------------------------------------"
apt-get update
echo "---------------------------------------------------------------------------------------------------"

apt-get -y install openssh-server


exit


# Création de l'utilisateur Ubuntu

#adduser --disabled-password --gecos '' ubuntu

useradd --create-home -s /bin/bash ubuntu
#echo -e "tototutu\ntototutu" | passwd ubuntu

cp /root/.bashrc /home/ubuntu/
chown ubuntu.ubuntu /home/ubuntu/.bashrc

adduser ubuntu sudo && addgroup --gid 999 zdocker && adduser ubuntu zdocker


exit
apt-get -y dist-upgrade
apt-get -y clean
apt-get -y autoclean
apt-get -y autoremove --purge


