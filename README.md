# docker-oc-ansible
Petit container Docker avec tout ce qu'il faut pour faire de l'Ansible sur OpenShift ;-)

**ATTENTION: c'est encore en pleins DEV !**

## Buts
Quand on veut automatiser des tâches avec Ansible sur OpenShift, on se retrouve rapidement avec un combat de versions de Python (entre la 2.x et la 3.x) mais surtout qu'il nous manque toujours quelques libs ou utilitaires pour que cela marche bien sur toutes les machines sur lesquelles on va travailler.<br>
 Aussi il est une bonne chose de normaliser les *postes* de travail entre les devs ;-)


## Problématiques
Le problème est que les *devs* on leur propres clefs *ssh* et secrets *Keybase*. Il faut donc:

* se *connecter* au container via ssh avec un *ssh forward agent* afin de pouvoir *remonter* la clef ssh du dev
* de partager les secrets de *Keybase* via un volume point sur le container



## Moyens
Pour cela on va essayer ici de tout mettre dans un container Docker et l'utiliser via ssh comme si c'était une machine distante.






zf190903.1638
