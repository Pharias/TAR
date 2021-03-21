#!/bin/bash
#
#Variablen deklariert
DOCKER=/home/pi/docker
HOMEASSISTANT=/home/pi/docker/homeassistant
MQTT=/home/pi/docker/mqtt
ZIGBEE=/home/pi/docker/zigbee2mqtt
#
#
echo "######################################################################"
echo "#                                                                    #"
echo "#   Verzeichnisse für Docker Homeassistant MQTT und Zigbee2Mqtt      #"
echo "#                 werden gesucht und erstellt                        #"
echo "#                                                                    #"
echo "######################################################################"
#
sudo apt-get update &&
sudo apt-get upgrade &&
echo "System erfolgreich aktualisiert." &&
#
if [ -d "$DOCKER" ]; then 
    echo "#                                                                    #"
        echo "#               Verzeichnis Docker existiert bereits                 #"               
        echo "#                                                                    #"
        echo "######################################################################"
else 
    mkdir /home/pi/docker 
    echo "#                                                                    #"
        echo "#               Verzeichnis Docker wurde erstellt                    #"
        echo "#                                                                    #"
        echo "######################################################################""
fi
#
if [ -d "$HOMEASSISTANT" ]; then 
    echo "#                                                                    #"
        echo "#            Verzeichnis Homeassistant existiert bereits             #"
        echo "#                                                                    #"
        echo "######################################################################"
else 
    mkdir homeassistant
    echo "#                                                                    #"
        echo "#            Verzeichnis Homeassistant wurde erstellt                #"
        echo "#                                                                    #"
        echo "######################################################################"
fi
#
if [ -d "$MQTT" ]; then 
    echo "#                                                                    #"
        echo "#               Verzeichnis Mqtt wurde existiert bereits             #"
        echo "#                                                                    #"
        echo "######################################################################"
else 
    mkdir mqtt
    echo "#                                                                    #"
        echo "#               Verzeichnis Mqtt wurde erstellt                      #"
        echo "#                                                                    #"
        echo "######################################################################"
fi
#
if [ -d "$ZIGBEE" ]; then 
    echo "#                                                                    #"
        echo "#            Verzeichnis Zigbee2MQTT wurde existiert bereits         #"
        echo "#                                                                    #"
        echo "######################################################################"
else 
    mkdir zigbee2mqtt
    echo "#                                                                    #"
        echo "#            Verzeichnis Zigbee2MQTT wurde erstellt                  #"
        echo "#                                                                    #"
        echo "######################################################################"
fi