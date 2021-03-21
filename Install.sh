#!/bin/bash

echo "**********************************************************************" &&
echo "" &&
echo "diese Anwendung intalliert docker, homeassistant, mqtt und zigbee2mqtt" &&
echo "stellen sie sicher das dieses Script durch user pi ausgefürt wird" &&
echo "" &&
echo "**********************************************************************" &&

#raspberry updaten
sudo apt-get update &&
sudo apt-get upgrade &&
echo "System erfolgreich aktualisiert" &&

#docker installieren
cd /home/pi &&
FILE=docker-script.sh
if [ -f "$FILE" ]
then
    echo " $FILE existiert bereits."
    sudo sh docker-script.sh
    sudo usermod -aG docker pi
    echo "docker wurde installiert"
else 
    curl -fsSL https://get.docker.com -o docker-script.sh
    sudo sh docker-script.sh
    sudo usermod -aG docker pi
    echo "docker wurde installiert"
fi


#verzeichnisse erstellen
cd /home/pi &&
FILE=/home/pi/docker
if [ -f "$FILE" ]
then
    echo "verzeichnis $FILE existiert bereits."
else 
    mkdir /home/pi/docker 
    echo "verzeichnis $FILE wurde erstellt."
fi

cd /home/pi/docker &&

FILE=/home/pi/docker/homeassistant
if [ -f "$FILE" ]
then
    echo "verzeichnis $FILE existiert bereits."
else 
    mkdir homeassistant
    echo "verzeichnis $FILE wurde erstellt."
fi

FILE=/home/pi/docker/mqtt
if [ -f "$FILE" ]
then
    echo "verzeichnis $FILE existiert bereits."
else 
    mkdir mqtt
    echo "verzeichnis $FILE wurde erstellt."
fi

FILE=/home/pi/docker/zigbee2mqtt
if [ -f "$FILE" ]
then
    echo "verzeichnis $FILE existiert bereits."
else 
    mkdir zigbee2mqtt
    echo "verzeichnis $FILE wurde erstellt."
fi


#homeassistant container laden
docker run --init -d \
  --name homeassistant \
  --restart=unless-stopped \
  -v /etc/localtime:/etc/localtime:ro \
  -v /home/pi/docker/homeassistant:/config \
  --network=host \
  homeassistant/raspberrypi3-homeassistant:stable &&
echo "Home Assistant wurde erfolgreich installiert"