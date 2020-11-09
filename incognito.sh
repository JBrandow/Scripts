#!/bin/bash

#This script is meant to provide basic *incognito* capabilities such as masking your IP address
#by routing traffic through free proxy servers located around the world using the proxychains tool 
#as well as change your MAC address.THIS SCRIPT SHOULD BE RUN AS AN ADMINISTRATOR

function greeting { 
toilet Incognito
echo 
CURRENT_DATE=$(date +"%d-%m-%y")
echo "The current date is" $CURRENT_DATE
CURRENT_TIME=$(date +"%H:%M:%S %p")
echo "The current time is" $CURRENT_TIME
echo 
echo
}
NEW_MAC="00:11:22:33:44:55"

#Program Start
function start {
MAC=$(sudo ifconfig | grep -A3 "ens33" | grep ether | cut -b 15-33)
echo "[+]  Your MAC address is" $MAC
echo "[+]  Would you like to change your MAC?"

}




#MAC Changer
function macchange {
	echo "Enter your new MAC below separated by colons:"
	echo "Example: $NEW_MAC"
	read newmac
	
	ifconfig ens33 down
	ifconfig ens33 hw ether $newmac
	ifconfig ens33 up
	
	echo "[+]  Your new MAC address is" $newmac

	
}
greeting
echo
start

