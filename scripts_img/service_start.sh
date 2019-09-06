#!/bin/bash
# petit script qui fait un ping et met le résultat dans le fichier tutu.txt et demande une input au clavier pour bloquer le script
# zf190906.1406

echo -e "\nStart..."
service ssh start

#ping -c 1 8.8.8.8 > tutu.txt
#cat tutu.txt

#change de password de Ubuntu au vol lors du démarrage du container ;-)
source /keybase/team/epfl_idevfsd.oc_ansible/oc_ansible_secrets.sh
echo -e "$OC_ANSIBLE_PWD\n$OC_ANSIBLE_PWD" | passwd ubuntu

echo -e "\ntouch return for end..."
read zkeyboard
echo -e "Stop...\n"

