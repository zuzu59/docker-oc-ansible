#!/bin/bash
#passe les updates sur la machine
#zf190904.1535

/host/clean_install.sh

sudo apt-get update
sudo apt-get -y dist-upgrade

/host/clean_install.sh




