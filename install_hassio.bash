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

# Installation der Prerequisites


# Installation Home-Assistants


# für später: Installation MyCroft