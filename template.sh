#!/bin/bash
############################################################################
# Installationsskript für Smart Home Zentrale                              #
#                                                                          #
# (c) Felix Kuschel & Manuel Starz                                         #
############################################################################
# Skript installiert Docker, Home-Assistant und MQTT-Broker mit Zigbee     #
############################################################################

# Variablen fürs Skript
PIVER=$(cat /proc/device-tree/model | cut -d' ' -f3)
PIADDRESS=$(hostname -I | cut -d' ' -f1)
UPDATE=0
DOCKER=0

# Einlesen der eventuell übergebenen Parameter
while getopts ":d:u:" arg; do
	case $arg in
		d) $DOCKER=1
		u) $UPDATE=1	
	esac
done

# Update bei Bedarf
if[ $UPDATE eq "1" ]; then
	sudo apt update
	sudo apt upgrade -y
fi

# 

#Versionsabfrage des Pi
if[ $PIVER eq "4" ]; then
	# Code für Raspberry Pi 4

elif[ $PIVER eq "3" ]; then
	# Code für Raspberry Pi 3
else
	echo "Pi Version unbekannt."
	echo
	echo "Sollte Ihr Pi älter sein als der Raspberry Pi 3, besorgen Sie sich bitte neue Hardware."
	echo "Wenn Sie einen neueren Raspberry Pi als Version 4 nutzen, ist das Skript veraltet."
fi

