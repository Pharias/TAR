#!/bin/bash
###############################################
# Installationsskript für Smart Home Zentrale #
#                                             #
# (c) Felix Kuschel & Manuel Starz            #
###############################################
# Skript installiert Docker, Home-Assistant   #
# und MQTT-Broker uns Zigbee2Mqtt             #
###############################################
# Variablen fürs Skript
# Version des Pi (3 oder 4)
PIVER=$(cat /proc/device-tree/model | cut -d' ' -f3)
# IP-Adresse des Raspberry Pi
PIADDRESS=$(hostname -I | cut -d' ' -f1)
# Update-Flag
UPDATE=0
# Docker-Installationsflag
DOCKER=0
# Homeassistant-Flag
HOMEASSISTANT=0
# Dependencies-Flag
DEPENDENCIES=1
# Zeitstempel
TIMESTAMP=`date +%Y-%m-%d_%H-%M-%S`
# Logdatei
LOGFILE=smz_install.log
echo "$TIMESTAMP: Skript gestartet." >> $LOGFILE
#Versionsabfrage des Pi
if[[$PIVER == "4" ]]; then
	MACHINE=raspberrypi4
	echo "$TIMESTAMP: Raspberry Pi Version $PIVER erkannt." >> $LOGFILE
elif[[ $PIVER == "3" ]]; then
	MACHINE=raspberrypi3
	echo "$TIMESTAMP: Raspberry Pi Version $PIVER erkannt." >> $LOGFILE
else
	# Fehlermeldung
	echo "Pi Version unbekannt."
	echo 
	echo "Sollte Ihr Pi älter sein als der Raspberry Pi 3, "
	echo "besorgen Sie sich bitte neue Hardware."
	echo "Wenn Sie einen neueren Raspberry Pi als Version 4"
	echo "nutzen, ist das Skript veraltet."
	echo "Skript abgebrochen. Pi-Version nicht erkannt/korrekt" >> $LOGFILE
	exit;
fi
# Prüfe, ob Hilfe angefordert wurde
while getopts ":h" option; do
   case $option in
      h) Help
         exit;;
   esac
# Einlesen der eventuell übergebenen Parameter
while getopts ":d:u:ha:nd:" arg; do
	case $arg in
		d) $DOCKER=1
		u) $UPDATE=1
		ha) $HOMEASSISTANT=1
		nd) $DEPENDENCIES=0
	esac
done
# Update bei Bedarf
if[[ $UPDATE == "1" ]]; then
	sudo apt update
	sudo apt upgrade -y
	echo "$TIMESTAMP: Update des Systems wurde erfolgreich abgeschlossen " >> $LOGFILE
else
	echo "$TIMESTAMP: Updates nicht ausgeführt - USERWAHL" >> $LOGFILE
fi
#installation von Docker
if[[ $DOCKER == "1" ]]; then
	curl -fsSL https://get.docker.com -o get-docker.sh
	sudo sh get-docker.sh
	docker --version
	echo "$TIMESTAMP: Docker wurde Erfolgreich installiert " >> $LOGFILE
	sleep 20s
else
	echo "$TIMESTAMP: Docker nicht installiert - USERWAHL" >> $LOGFILE
fi
# Installiert Dependencies sofern nötig
if[[ $DEPENDENCIES == "1" ]]; then
	sudo apt-get network-manager -y &&
	echo "$TIMESTAMP: Network-Manager wurde installiert" >> $LOGFILE
	sudo apt-get apparmor-utils -y &&
	echo "$TIMESTAMP: Apparmor wurde installiert" >> $LOGFILE
	sudo apt-get jq -y &&
	echo "$TIMESTAMP: jq wurde installiert" >> $LOGFILE
	sleep 3m
	echo "$TIMESTAMP: Dependencies für HomeAssistant wurden installiert " >> $LOGFILE
else
	echo "$TIMESTAMP: Dependencies für Home Assistant nicht installiert - USERWAHL" >>$LOGFILE
fi
#Installation von Home Assistant Supervised
if[[ $HOMEASSISTANT == "1" ]; then
    sudo curl -Lo installer.sh https://raw.githubusercontent.com/home-assistant/supervised-installer/master/installer.sh
    sudo bash installer.sh --machine $MACHINE
    echo "HomeAssistant Supervised wurden installiert $TIMESTAMP
    Weboberflaeche des Home Assistant ist unter http://$PIADDRESS:8123 erreichbar
    Bitte folgen sie für die Einrichtung und Installation von MQTT und Zigbee2MQTT
    der Beiliegenden Anleitung" >> $LOGFILE
    echo "
    +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    +                                                                           +
    +                HomeAssistant Supervised wurde Installiert                 +
    +    Weboberflaeche unter $PIADDRESS:8123 oder via link in Installlog.txt   +
    +   Bitte Folgen sie den weiteren Schritten in der beiliegenden Anleitung   +
    +            für die installation von MQTT Broker und Zigbee2MQTT           +
    +                                                                           +
    +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
fi    
# Hilfe-Funktion
Help()
{
	echo "   Smart Home Zentrale   "
	echo "---Installationsskript---"
	echo
	echo "Das Installationsskript kann mit diversen Startparametern arbeiten."
	echo "Die uebliche Syntax lautet:"
	echo "  smz_install [-d/-ha/-u/-h]"
	echo
	echo "Die Parameter bewirken folgendes:"
	echo " -d:   Installiert Docker falls nicht vorhanden"
	echo " -u:   Aktualisiert das System mit apt update && apt upgrade -y"
	echo " -ha:  Installiert Home Assistant Supervised"
	echo " -nd:  Installierd die Dependencies NICHT."
	echo
	echo " -h:   Ruft diese Hilfeseite auf"
	echo
	echo "Der grundlegende Ablauf des Skripts wird in der Datei $LOGFILE geloggt."
}