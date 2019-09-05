#!/bin/bash
# petit script qui fait un ping et met le résultat dans le fichier tutu.txt et demande une input au clavier pour bloquer le script
# zf190905.1616

echo -e "\nStart..."
service ssh start
ping -c 1 8.8.8.8 > tutu.txt
cat tutu.txt

source /keybase/team/epfl_idevfsd.oc_ansible/oc_ansible_secrets.sh

#echo -e "totototo\ntotototo" | passwd ubuntu
echo -e "$OC_ANSIBLE_PWD\n$OC_ANSIBLE_PWD" | passwd ubuntu

echo -e "\ntouch return for end..."
read zkeyboard
echo -e "Stop...\n"

