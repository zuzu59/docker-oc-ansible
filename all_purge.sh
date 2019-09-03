#!/bin/bash
#Petit script pour nettoyer tout le binz
#ATTENTION, cela purge VRAIMENT tout le binz de Docker, à ne pas faire tourner sur un serveur où il y a plusieurs utilisateurs !
#zf190903.1649



./list.sh
read -p "Etes-vous certain de vouloir tout effacer ?"
read -p "Mais cela va VRAIMENT VRAIMENT tout effacer!"

docker container rm -f -v $(docker container ls -a -q)
docker image rm -f $(docker image ls -a -q)
docker volume rm $(docker volume ls -q)
docker network rm $(docker network ls -q)

#sudo rm -rf ./wp-content

./list.sh

