#!/bin/bash
#Petit script pour démarrer le binz
#zf190905.1559
# source:


#./all_purge.sh

mkdir ./dev
mkdir ./ssh
cp ~/.ssh/id_rsa.pub ./ssh/authorized_keys
cp ~/.ssh/config ./ssh/config

source /keybase/team/epfl_idevfsd.oc_ansible/oc_ansible_secrets.sh

docker-compose up -d
./list.sh


echo -e "

pour voir les logs en continu:
docker-compose logs -f

pour voir qu'est-ce qui tourne:
docker-compose ps

pour 'entrer' dans un 'service':
docker-compose exec oc-ansible /bin/bash

pour arrêter:
docker-compose stop

pour redémarrer après un 'stop':
docker-compose start

pour enlever les container mais pas les datas:
docker-compose down

pour enlever les container ET aussi les datas:
docker-compose down -v --remove-orphans

"

echo -e "

Si on n'a pas mis sa clef ssh pub dans le fichier ssh/authorized_keys, il faut utiliser le password qui se trouve dans:
/keybase/team/epfl_idevfsd.oc_ansible/oc_ansible_secrets.sh

Pour se créer facilement une clef ssh, il faut faire:
ssh-keygen -t rsa -N "" -f ~/.ssh/id_rsa

Si on veut que sa clef ssh 'suive' dans le container, il faut vérifier qu'elle se trouve bien dans le 'forward agent' avec:
ssh-add -l

Si elle n'est pas il faut simplement l'ajouter avec:
ssh-add


On doit se connecter au container avec:

ssh -A -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no ubuntu@localhost -p 52222

"
#read -p "press [ENTER]"

