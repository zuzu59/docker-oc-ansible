#!/bin/bash
#Petit script pour se connecter facilement au container oc_ansible via exec
#zf191001.0947
# source:

docker exec -it -u ubuntu -w /home/ubuntu oc-ansible /bin/bash



