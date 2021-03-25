#!/bin/bash
#################################################################################
# Installationsskript für Smart Home Zentrale                                   #
#                                                                               #
# (c) Felix Kuschel & Manuel Starz                                              #
#################################################################################
# Skript installiert Docker, Home-Assistant und MQTT-Broker uns Zigbee2Mqtt     #
#################################################################################

# Variablen fürs Skript
PIVER=$(cat /proc/device-tree/model | cut -d' ' -f3)
PIADDRESS=$(hostname -I | cut -d' ' -f1)
UPDATE=0
DOCKER=0
HOMEASSISTANT=0
DEPENDENCIES=0
TIMESTAMP=`date +%Y-%m-%d_%H-%M-%S`

#Versionsabfrage des Pi
if[ $PIVER eq "4" ]; then
	# Code für Raspberry Pi 4

elif[ $PIVER eq "3" ]; then
	# Code für Raspberry Pi 3
else
	echo "Pi Version unbekannt.

Sollte Ihr Pi älter sein als der Raspberry Pi 3, besorgen Sie sich bitte neue Hardware.
Wenn Sie einen neueren Raspberry Pi als Version 4 nutzen, ist das Skript veraltet."
fi

# Einlesen der eventuell übergebenen Parameter
while getopts ":d:u:ha:" arg; do
	case $arg in
		d) $DOCKER=1
		u) $UPDATE=1
		ha) $HOMEASSISTANT=1	
	esac
done

# Update bei Bedarf
if[ $UPDATE eq "1" ]; then
	sudo apt update
	sudo apt upgrade -y
	echo " Update des Systems wurde erfolgreich abgeschlossen $TIMESTAMP" >> /home/pi/Installlog.txt
fi

#installation von Docker
if[ $DOCKER eq "1" ]; then
	curl -fsSL https://get.docker.com -o get-docker.sh
	sudo sh get-docker.sh
	docker --version
	echo "Docker wurde Erfolgreich installiert $TIMESTAMP" >> /home/pi/Installlog.txt
	sleep 20s
fi

#installation von Homeassistant Supervised
if[ $HOMEASSISTANT eq "1" ]; then
	sudo apt-get network-manager -y &&
	echo "Network-Manager wurde installiert $TIMESTAMP" >> /home/pi/Installlog.txt
	sudo apt-get apparmor-utils -y &&
	echo "Apparmor wurde installiert $TIMESTAMP" >> /home/pi/Installlog.txt
	sudo apt-get jq -y &&
	echo "jq wurde installiert $TIMESTAMP" >> /home/pi/Installlog.txt
	$DEPENDENCIES=1
	sleep 3m
	echo "Dependencies für HomeAssistant wurden installiert $TIMESTAMP" >> /home/pi/Installlog.txt 
fi
if[ $HOMEASSISTANT eq "1" ]; then
    sudo curl -Lo installer.sh https://raw.githubusercontent.com/home-assistant/supervised-installer/master/installer.sh
    sudo bash installer.sh --machine $PIVER
    echo "HomeAssistant Supervised wurden installiert $TIMESTAMP
    weboberfläche des Home Assistant ist unter http://$PIADDRESS:8123 erreichbar
    Bitte folgen sie für die Einrichtung und Installation von MQTT und Zigbee2MQTT
    der Beiliegenden Anleitung" >> /home/pi/Installlog.txt
    echo "
    +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    +                                                                           +
    +                HomeAssistant Supervised wurde Installiert                 +
    +    Weboberfläche unter $IPADDRESS:8123 oder via link in Installlog.txt    +
    +   Bitte Folgen sie den weiteren Schritten in der beiliegenden Anleitung   +
    +            für die installation von MQTT Broker und Zigbee2MQTT           +
    +                                                                           +
    +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
fi    


