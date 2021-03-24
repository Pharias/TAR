#!/bin/bash

# Prüft ob Root:
#if [[ $EUID -ne 0 ]]; then
#   echo "Dieses Script muss mit root-Rechten ausgeführt werden!" 1>&2
#else
#   exit 1
#fi

#pi Updaten
#sudo apt-get update &&
#sudo apt-get upgrade -y &&
#sudo apt install -y jq &&
#sudo apt-get install apparmor -y &&
sudo apt-get install network-manager -y &&
sleep 5m

echo "System erfolgreich aktualisiert." &&
#verzeichniss erstellen
mkdir /home/pi/tar &&
mkdir /home/pi/tar/docker &&
mkdir /home/pi/tar/docker/homeassistant &&
echo "Vorbereitungen abgeschlossen !!"

#if [ -f "$DOCKERSCRIPT" ]; then
#    echo " $DOCKERSCRIPT existiert bereits."
#    sudo sh docker-script.sh
#    sudo usermod -aG docker pi
#    echo "docker wurde installiert"
#else 
#    curl -fsSL https://get.docker.com -o docker-script.sh
#    sudo sh docker-script.sh
#    sudo usermod -aG docker pi
#    echo "docker wurde installiert"
#fi

sudo curl -Lo installer.sh https://raw.githubusercontent.com/home-assistant/supervised-installer/master/installer.sh
sudo bash installer.sh -m raspberrypi4




