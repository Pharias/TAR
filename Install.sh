#!/bin/bash
sudo apt-get update &&
sudo apt-get upgrade &&
sudo reboot &&
curl -fsSL https://get.docker.com -o docker-script.sh &&
sudo sh docker-script.sh &&
sudo usermod -aG docker pi &&
echo "Docker wurde Erfolgreich Installiert" &&
mkdir /home/pi/docker/homeassistant &&
docker run --init -d \
  --name homeassistant \
  --restart=unless-stopped \
  -v /etc/localtime:/etc/localtime:ro \
  -v /home/pi/docker/homeassistant:/config \
  --network=host \
  homeassistant/raspberrypi3-homeassistant:stable &&
echo "Home Assistant wurde Erfolgreich Installiert"