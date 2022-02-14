#!/bin/bash

rsync -av --delete -e ssh /home/<USER SERVEUR>/Documents/Minecraft <USER BACKUP>@<IP BACKUP>:/home/<USER BACKUP>/backup