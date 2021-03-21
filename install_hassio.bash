#!/bin/bash
# Installer-Skript für die TAR von Felix Kuschel und Manuel Starz
# Version 1
# 

# Variablen


# Init
FILE="/tmp/out.$$"
GREP="/bin/grep"

# Prüft ob Root:
if [[ $EUID -ne 0 ]]; then
   echo "Dieses Script muss mit root-Rechten ausgeführt werden!" 1>&2
   Help
   exit 1
fi

# Erstellen der Hilfe-Funktion
Help()
{
	echo "Skript zur Installation des Home Assistants auf Raspberry OS mit Zigbee2MQTT"
	echo 
	echo "Zur Ausführung des Skripts werden root-Rechte benötigt, bitte führen Sie das Skript nur als entsprechender Nutzer aus."
	echo 
	echo "Syntax: install_hassio.bash [-h] [parameter] "
	echo "Optionen:"
	echo " h		Zeigt diese Hilfemeldung an"
	echo

}

# Prüfe, ob Hilfe angefordert wurde
while getopts ":h" option; do
   case $option in
      h) Help
         exit;;
   esac

# Einlesen der eventuell übergebenen Parameter
while getopts "" arg; do
	case $arg in
			
	esac

# Prüfe Python-Version und installiere ggf. die neue Version
python_output=$(python --version 2>&1)
python_version=$(echo $python_output | cut -d' ' -f2)
if[$python_version >= 3.9.0 ]
then
	echo "Veraltete Python-Version gefunden. Installiere Python Version 3.9.2..."
	# Hier Python installieren
fi

# Installation der Prerequisites verzeichnisse erstellen
while getopts "" arg; do
	case $arg in
			
	esac

 Prüfe Python-Version und installiere ggf. die neue Version
 python_output=$(python --version 2>&1)
 python_version=$(echo $python_output | cut -d' ' -f2)
 if[$python_version >= 3.9.0 ]
 then
	echo "Veraltete Python-Version gefunden. Installiere Python Version 3.9.2..."
	# Hier Python installieren
fi

# Installation der Prerequisites verzeichnisse erstellen
sudo apt-get update &&
sudo apt-get upgrade &&
echo "System erfolgreich aktualisiert." &&

FILE=/home/pi/docker
if [ -e "$FILE" ]
then 
    echo "verzeichnis $FILE existiert bereits."
else 
    mkdir /home/pi/docker 
    echo "verzeichnis $FILE wurde erstellt."
	cd /home/pi/docker
fi

FILE=/home/pi/docker/homeassistant
if [ -e "$FILE" ]
then 
    echo "verzeichnis $FILE existiert bereits."
else 
    mkdir homeassistant
    echo "verzeichnis $FILE wurde erstellt."
fi

FILE=/home/pi/docker/mqtt
if [ -e "$FILE" ]
then 
    echo "verzeichnis $FILE existiert bereits."
else 
    mkdir mqtt
    echo "verzeichnis $FILE wurde erstellt."
fi

FILE=/home/pi/docker/zigbee2mqtt
if [ -e "$FILE" ]
then 
    echo "verzeichnis $FILE existiert bereits."
else 
    mkdir zigbee2mqtt
    echo "verzeichnis $FILE wurde erstellt."
fi

# Installation Docker

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

# Installation Home-Assistants

FILE=/home/pi/docker/homeassistant
if [ -e "$FILE" ]
then 
	docker run --init -d \
  	    --name homeassistant \
  	    --restart=unless-stopped \
  	    -v /etc/localtime:/etc/localtime:ro \
  	    -v /home/pi/docker/homeassistant:/config \
  	    --network=host \
  	    homeassistant/raspberrypi3-homeassistant:stable
        #für RBPI4
        #homeassistant/raspberrypi4-homeassistant:stable
	echo "Home Assistant wurde erfolgreich installiert"
else 
    echo "fehler"
fi

# Installation von MQTT

# Installation von Zigbee2MQTT

docker run \
   -it \
   -v /home/pi/docker/zigbee2mqtt \
   --device=/dev/ttyACM0 \              #Ort des CC2531
   -e TZ=Europe/Berlin \
   -v /run/udev:/run/udev:ro \
   --privileged=true \
   koenkk/zigbee2mqtt

# für später: Installation MyCroft