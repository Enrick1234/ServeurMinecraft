# Monitoring with Netdata

## Prérequis 

Pour monitorer avec Netdata il faut : 
- Installer ``curl`` avec `sudo apt install curl`

- Autoriser le port 19999 avec `sudo afw allow 19999/tcp`


## Installer Netdata

Pour installer Netdata il faut faire les commandes suivantes `curl -s https://packagecloud.io/install/repositories/netdata/netdata/script.deb.sh | sudo bash` ainsi que `sudo apt install netdata`

## Configurer Netdata

Pour que Netdata fonctionne correctement il faut moodifier une ligne dans le le fichier `netdata.conf` avec `sudo nano /etc/netdata/netdata.conf`. Il faut changer la ligne où il y a ``bind to = `` en ``bind to = <IP SERVEUR>``. Puis on redémarre le service avec ``sudo systemctl restart netdata``
