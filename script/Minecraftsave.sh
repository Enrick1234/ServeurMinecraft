#!/bin/bash

curentuser=$(whoami)

rsync -av --delete -e ssh /home/$curentuser/Documents/Minecraft <USER BACKUP>@<IP BACKUP>:/home/<USER BACKUP>/backup