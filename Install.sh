#!/bin/bash

#raspberry updaten
sudo apt-get update &&
sudo apt-get upgrade &&
echo "System erfolgreich aktualisiert"

#docker installieren
curl -fsSL https://get.docker.com -o docker-script.sh &&
sudo sh docker-script.sh &&
sudo usermod -aG docker pi &&
echo "Docker wurde erfolgreich installiert" &&

#verzeichnisse Erstellen
cd /home/pi &&
mkdir /home/pi/docker/homeassistant && mkdir /home/pi/docker/mqtt && mkdir /home/pi/docker/zigbee2mqtt
echo "Verzeichnisse erfolgreich erstellt" &&

#homeassistant container laden
docker run --init -d \
  --name homeassistant \
  --restart=unless-stopped \
  -v /etc/localtime:/etc/localtime:ro \
  -v /home/pi/docker/homeassistant:/config \
  --network=host \
  homeassistant/raspberrypi3-homeassistant:stable &&
echo "Home Assistant wurde erfolgreich installiert"