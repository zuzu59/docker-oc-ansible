#!/bin/bash
#Petit script pour nettoyer tout le binz
#zf190903.1707

./list.sh

docker-compose down -v --remove-orphans
docker image rm -f zubuntu

./list.sh
