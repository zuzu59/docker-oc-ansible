#!/usr/bin/env bash
#récupération de mes petis outils bien à moi ;-)
#zf190930.1427

cd /home/ubuntu
git clone https://github.com/zuzu59/deploy-proxmox.git


echo "source ~/deploy-proxmox/alias" >> ~/.bashrc
echo "source ~/deploy-proxmox/zfunctions.sh" >> ~/.bashrc

echo "set tabstospaces" >> ~/.nanorc
echo "set tabsize 4" >> ~/.nanorc

