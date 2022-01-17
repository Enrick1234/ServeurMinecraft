#!/bin/bash

directoryname="Minecraft"
curentuser=$(whoami)
locdir="/home/$curentuser/Documents/$directoryname"


#Verifie la présence d'un dossier
if [[ ! -d $locdir ]]; then
mkdir $locdir
fi
sudo apt update
sudo apt upgrade
sudo apt-get install wget
sudo apt-get install default-jdk
sudo apt install openjdk-16-jdk
#sudo add-apt-repository ppa:linuxuprising/java
wget -P "$locdir" https://launcher.mojang.com/v1/objects/0a269b5f2c5b93b1712d0f5dc43b6182b9ab254e/server.jar
cd $locdir
java -Xmx1024M -Xms1024M -jar server.jar nogui

#sudo touch "$locdir/eula.txt"
#sudo chmod 777 "$locdir/eula.txt"
sudo echo "eula=true" > "$locdir/eula.txt"
java -Xmx1024M -Xms1024M -jar server.jar nogui