# Documentation 

## Installer un serveur Minecraft

## Prérequis : 

Pour installer un serveur minecraft il vous faut :
- Deux pcs ou machines qui vous servira d'hébergeurs sous Ubuntu 
- Ces machines devront avoir 2048 Mb de RAM et 
- Mettre a jour ces pcs (machines) avec les commandes suivantes : ```sudo apt update``` et `sudo apt upgrade`
- Installer ssh avec la commande `sudo apt install opensshd-server`
- Installer wget avec la commande `sudo apt-get install wget`
- Installer Java Development Kit ainsi que Open Java Development Kit avec les commandes `sudo apt install default-jdk` et `sudo apt install openjdk-16-jdk`

## Installation et lancement du serveur 

Pour installer le serveur il suffit de faire la commande suivante : `wget https://launcher.mojang.com/v1/objects/0a269b5f2c5b93b1712d0f5dc43b6182b9ab254e/server.jar`

Puis pour pouvoir le lancer il faut changer le fichier `eula.txt` en faisant ``sudo nano eula.txt`` et changer le ``eula=false`` par ``eula=true``
Ainsi le serveur est prêt a être lancé avec la commande `java -Xmx1024M -Xms1024M -jar server.jar nogui`


