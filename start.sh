#!/bin/bash
#Petit script pour démarrer le binz
#zf190904.1357
# source:


#./all_purge.sh

mkdir ./dev
mkdir ./ssh
cp ~/.ssh/id_rsa.pub ./ssh/authorized_keys

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

On doit se connecter au container avec:

ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no ubuntu@localhost -p 52222

Si on n'a pas mis sa clef ssh pub dans le fichier ./ssh/authorized_keys, il faut utiliser le 'tototutu' comme password !

"
#read -p "press [ENTER]"

