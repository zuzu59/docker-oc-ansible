#!/bin/bash
# Petit script pour créer un utilisateur Ubuntu avec tout ce qu'il faut ;-)
# zf190905.1617
# source:

adduser --home /home/ubuntu --shell /bin/bash --disabled-password --gecos '' ubuntu

cp /root/.bashrc /home/ubuntu/
chown ubuntu.ubuntu /home/ubuntu/.bashrc

adduser ubuntu sudo && addgroup --gid 999 zdocker && adduser ubuntu zdocker

