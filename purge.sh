#!/bin/bash
#Petit script pour nettoyer tout le binz utilisé dans ce projet
#zf190906.1731

./list.sh

docker-compose down -v --remove-orphans
docker image rm -f zubuntu
docker volume prune -f

./list.sh
