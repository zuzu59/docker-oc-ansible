
#!/bin/bash
# Petit script pour configurer l'image docker ubuntu utilisée pour le container docker
# zf190906.1403
# source:


#exit

/root/ubuntu_config.sh

#exit

/root/add_ubuntu.sh

/root/install_ansible.sh
/root/install_oc.sh
/root/update.sh
/root/clean_install.sh


