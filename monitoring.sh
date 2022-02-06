#/bin/bash

sudo apt install curl
#bash <(curl -Ss https://my-netdata.io/kickstart.sh) all
sudo ufw allow 19999/tcp
curl -s https://packagecloud.io/install/repositories/netdata/netdata/script.deb.sh | sudo bash
sudo apt install netdata
