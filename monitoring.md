# Monitoring with Netdata

## Prérequis 

Pour monitorer avec Netdata il faut : 
- Installer ``curl`` avec `sudo apt install curl`

- Autoriser le port 19999 avec `sudo ufw allow 19999/tcp`


## Installer Netdata

Prenez le script qui se trouve dans le dossier script et qui s'appelle monitoring.sh. [Cliquez ici](https://github.com/Enrick1234/ServeurMinecraft/blob/main/script/monitoring.sh) pour que cela soit plus rapide. 

## Configurer Netdata

Pour que Netdata fonctionne correctement il faut moodifier une ligne dans le le fichier `netdata.conf` avec `sudo nano /etc/netdata/netdata.conf`. Il faut changer la ligne où il y a ``bind to = `` en ``bind to = <IP SERVEUR>``. Puis on redémarre le service avec ``sudo systemctl restart netdata``


Il vous reste plus qu'à aller sur internet et taper dans la barre de recherche <**IP SERVEUR**>:19999