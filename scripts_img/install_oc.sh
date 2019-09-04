#!/usr/bin/env bash
#Installation de oc pour Openshift
#zf190904.1631

echo "---------- install de oc"


cd /usr/local/bin/
sudo wget https://github.com/openshift/origin/releases/download/v3.11.0/openshift-origin-server-v3.11.0-0cbc58b-linux-64bit.tar.gz
sudo tar -xf openshift-origin-server-v3.11.0-0cbc58b-linux-64bit.tar.gz
sudo mv openshift-origin-server-v3.11.0-0cbc58b-linux-64bit/* .
sudo rm -rf openshift-origin-server-v3.11.0-0cbc58b-linux-64bit*
