#!/bin/bash
#Petit script pour se connecter facilement au container oc_ansible via ssh
#zf190905.1703
# source:

ssh -A -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no ubuntu@localhost -p 52222


