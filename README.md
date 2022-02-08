# Documentation 

## Installer un serveur Minecraft

Si vous voulez vous avez un script pour installer et lancer le serveur **[ici](https://github.com/Enrick1234/ServeurMinecraft/blob/main/script/lancementserv.sh)**. 
Si vous voulez le faire a la main, les commandes se trouvent juste en suivant.

## Prérequis : 

Pour installer un serveur minecraft il vous faut :
- Deux pcs ou machines qui vous servira d'hébergeurs sous Ubuntu (une machine qui servira de serveur et une autre de backup)
- Ces machines devront avoir 2048 Mb de RAM et 
- Mettre a jour ces pcs (machines) avec les commandes suivantes : ```sudo apt update``` et `sudo apt upgrade`
- Installer ssh avec la commande `sudo apt install openssh-server`
- Installer wget avec la commande `sudo apt-get install wget`
- Installer Java Development Kit ainsi que Open Java Development Kit avec les commandes `sudo apt install default-jdk` et `sudo apt install openjdk-16-jdk`

## Installation et lancement du serveur 

Pour installer le serveur il suffit de faire la commande suivante : `wget https://launcher.mojang.com/v1/objects/0a269b5f2c5b93b1712d0f5dc43b6182b9ab254e/server.jar`

Puis pour pouvoir le lancer il faut changer le fichier `eula.txt` en faisant ``sudo nano eula.txt`` et changer le ``eula=false`` par ``eula=true``
Ainsi le serveur est prêt a être lancé avec la commande `java -Xmx1024M -Xms1024M -jar server.jar nogui`.


Vous pouvez ainsi jouer a Minecraft avec la version 1.17 du jeu.

Passez ensuite à la [backup](https://github.com/Enrick1234/ServeurMinecraft/blob/main/backup.md)
