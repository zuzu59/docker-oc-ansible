#!/bin/bash
#Petit script pour nettoyer tout le binz
#zf190904.1135

./list.sh

docker-compose down -v --remove-orphans
docker image rm -f zubuntu

sudo rm -rf ./home/

./list.sh
