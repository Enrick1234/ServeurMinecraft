#!/bin/bash

curentuser=$(whoami)

rsync -av --delete -e ssh /home/$curentuser/Documents/Minecraft <USER BACKUP>@<IP USER BACKUP>:/home/<USER BACKUP>/backup