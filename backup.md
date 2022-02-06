# Backup 

## Prérequis 

Voici les prérequis pour avoir une machine de sauvegarde fonctionnel : 

- Sur votre machine "serveur" :
    - Créer un dossier "save" dans ``/srv/`` avec `sudo mkdir /srv/save`
    - Dans ce dossier "save", céer un fichier "Minecraftsave.sh" avec `sudo nano Minecraftsave.sh`
    - Dans ``Minecraftsave.sh`` écrire les lignes suivantes : 
        
        ```
        #!/bin/bash

        rsync -av --delete -e ssh /home/<USER>/Documents/Minecraft <USER BACKUP>@<IP USER BACKUP>:/home/<USER BACKUP>/backup
        ```
    - Créer un utilisateur "Backup"

- Sur votre machine "backup" :
    - Créer un fichier "backup" avec `sudo mkdir backup`


## Création d'un service 

Sur votre machine qui vous sert de serveur il faut créer un fichier dans `/etc/systemd/system/` avec `sudo nano /etc/systemd/system/<NOM DU SERVICE>.service` et y inscrire les lignes suivantes : 

```
[Unit]
Description=Do a backup of server Minecraft

[Service]
User=Backup
Type=oneshot
ExecStart=/usr/bin/bash /srv/save/Minecraftsave.sh

[Install]
WantedBy=multi-user.target
```

Lancer le service avec `sudo systemctl start <NOM DU SERVICE>`

Pour vérifier que cela a fonctionné on fait un ``ls backup`` sur notre machine "backup". Si cela a fonctionné il devrait y a voir un dossier "Minecraft". 


## Création d'un timer pour le service 

### Prérequis 

Pour créer ce timer il faut avoir fait toutes les commandes précedentes.

Toujours sur la machine "serveur", il faut créer un fichier toujours dans ``/etc/systemd/system/`` avec `sudo nano /etc/systemd/system/<NOM DU SERVICE>.timer`

Dans ce fichier que l'on vient de créer, on inscrit les lignes suivantes : 
```
[Unit]
Description=Lance <NOM DU SERVICE>.service
Requires=<NOM DU SERVICE>.service

[Timer]
User=Backup
Unit=<NOM DU SERVICE>.service
OnCalendar=hourly

[Install]
WantedBy=timers.target
```

Puis on lance le timer en faisant `sudo systemctl start <NOM DU SERVICE>.timer` et pour vérifier que cela a fonctionné on fait un ``ls backup`` sur notre machine "backup". Si cela a fonctionné il devrait y a voir un dossier "Minecraft".

 Si on rajoute un fichier ou enlève un fichier dans le dossier "Minecraft" dans l'heure qui vient cela va le rajouter/enlever dans le dossier "Minecraft" de notre machine "backup".


