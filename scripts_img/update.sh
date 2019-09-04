#!/bin/bash
#passe les updates sur la machine
#zf190904.1609

/host/scripts_img/clean_install.sh

sudo apt-get update
sudo apt-get -y dist-upgrade

/host/scripts_img/clean_install.sh




