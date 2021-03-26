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
UPDATE=1
# Docker-Installationsflag
DOCKER=1
# Homeassistant-Flag
HOMEASSISTANT=1
# Dependencies-Flag
DEPENDENCIES=1
# Zeitstempel
TIMESTAMP=`date +%Y-%m-%d_%H-%M-%S`
# Logdatei
LOGFILE=shz_install.log
echo "$TIMESTAMP: Skript gestartet." >> $LOGFILE
#Versionsabfrage des Pi
if [[ "$PIVER" = 4 ]]; then
	MACHINE=raspberrypi4
	echo "$TIMESTAMP: Raspberry Pi Version $PIVER erkannt." >> $LOGFILE
elif [[ "$PIVER" = 3 ]]; then
	MACHINE=raspberrypi3
	echo "$TIMESTAMP: Raspberry Pi Version $PIVER erkannt." >> $LOGFILE
else
    # Fehlermeldung
	echo "$PIVER"
	echo "Pi Version unbekannt."
	echo
	echo "Sollte Ihr Pi älter sein als der Raspberry Pi 3, "
	echo "besorgen Sie sich bitte neue Hardware."
	echo "Wenn Sie einen neueren Raspberry Pi als Version 4"
	echo "nutzen, ist das Skript veraltet."
	echo "Skript abgebrochen. Pi-Version nicht erkannt/korrekt" >> $LOGFILE
	exit;
fi
# Einlesen der eventuell übergebenen Parameter
# FUNKTIONIERT NIT!
while getopts ":d:u:ha:nd:h:" option; do
	case $option in
		d) DOCKER=1;;
		u) UPDATE=1;;
		ha) HOMEASSISTANT=1;;
		nd) DEPENDENCIES=1;;
		h) Help
		   exit;;
	esac
done
# Update bei Bedarf
if [[ "$UPDATE" -eq 1 ]]; then
	echo "$TIMESTAMP: Beginne mit Systemupdate" >> $LOGFILE
	echo "Beginne mit Systemupdate..."
	sudo apt update >> $LOGFILE
	sudo apt upgrade -y >> $LOGFILE
	echo "$TIMESTAMP: Update des Systems wurde erfolgreich abgeschlossen " >> $LOGFILE
	echo "Systemupdate beendet."
else
	echo "$TIMESTAMP: Updates nicht ausgeführt - USERWAHL" >> $LOGFILE
fi
#installation von Docker
if [[ "$DOCKER" -eq 1 ]]; then
	echo "$TIMESTAMP: Beginne mit Docker Installation" >> $LOGFILE
	echo "Beginne mit Docker Installation..."
	curl -fsSL https://get.docker.com -o get-docker.sh >> $LOGFILE
	sudo sh get-docker.sh >> $LOGFILE
	sudo usermod -aG docker pi >> $LOGFILE
	# docker version
	echo "Docker installiert. Warte 20s."
	echo "$TIMESTAMP: Docker wurde erfolgreich installiert " >> $LOGFILE
	sleep 20s
else
	echo "$TIMESTAMP: Docker nicht installiert - USERWAHL" >> $LOGFILE
fi
# Installiert Dependencies sofern nötig
if [[ "$DEPENDENCIES" -eq 1 ]]; then
		echo "$TIMESTAMP: Dependencies werden installiert." >> $LOGFILE
		sudo apt-get install network-manager -y >> $LOGFILE
		echo "$TIMESTAMP: Network-Manager wurde installiert" >> $LOGFILE
		sudo apt-get install apparmor-utils -y >> $LOGFILE
		echo "$TIMESTAMP: Apparmor wurde installiert" >> $LOGFILE
		sudo apt-get install jq -y >> $LOGFILE
		echo "$TIMESTAMP: jq wurde installiert" >> $LOGFILE
		echo "$TIMESTAMP: Dependencies für HomeAssistant wurden installiert " >> $LOGFILE
else
        echo "$TIMESTAMP: Dependencies für Home Assistant nicht installiert - USERWAHL" >>$LOGFILE
fi
#Installation von Home Assistant Supervised
if [[ "$HOMEASSISTANT" -eq 1 ]]; then
    sudo curl -Lo installer.sh https://raw.githubusercontent.com/home-assistant/supervised-installer/master/installer.sh >> $LOGFILE
    sudo bash installer.sh --machine $MACHINE
    echo "$TIMESTAMP: HomeAssistant Supervised wurden installiert" >> $LOGFILE
    echo "Weboberflaeche des Home Assistant ist unter http://$PIADDRESS:8123 erreichbar." >> $LOGFILE
    echo "Bitte folgen sie fuer die Einrichtung und Installation von MQTT und Zigbee2MQTT der Beiliegenden Anleitung" >> $LOGFILE
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
# FUNKTIONIERT NIT!
function Help()
{
        echo "   Smart Home Zentrale   "
        echo "---Installationsskript---"
        echo
        echo "Das Installationsskript kann mit diversen Startparametern arbeiten."
        echo "Die uebliche Syntax lautet:"
        echo "  smz_install [-d/-ha/-u/-h]"
        echo
        echo "Die Parameter bewirken folgendes:"
        echo " -d:   Installiert Docker NICHT"
        echo " -u:   Aktualisiert das System NICHT"
        echo " -ha:  Installiert Home Assistant Supervised NICHT"
        echo " -nd:  Installierd die Dependencies NICHT."
        echo
        echo " -h:   Ruft diese Hilfeseite auf"
        echo
        echo "Der grundlegende Ablauf des Skripts wird in der Datei $LOGFILE geloggt."
}
