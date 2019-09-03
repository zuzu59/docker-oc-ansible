#!/bin/bash
#Petit script pour démarrer le binz
#zf190903.1836
# source: 


#./all_purge.sh

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

On doit se connecter au container avec (pass=tototutu):

ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no ubuntu@localhost -p 52222

"
#read -p "press [ENTER]"

