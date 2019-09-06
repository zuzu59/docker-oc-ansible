
#!/bin/bash
# Petit script pour configurer l'image docker ubuntu utilisée pour le container docker
# zf190906.1451
# source:


#exit

/root/ubuntu_config.sh

#exit

/root/add_ubuntu.sh
#exit

/root/install_ansible.sh
/root/install_oc.sh
#exit

/root/update.sh
/root/clean_install.sh


