#!/bin/bash

greeting="Welcome"
user=$(whoami)
day=$(date +%A)
CURRENT_TIME=$(date +"%H:%M:%S %p")

toilet "WELCOME!"



echo
echo "$greeting back $user! Today is $day, which is the best day of the week!"
echo "The current time is" $CURRENT_TIME
echo


function user_details {
	
	#ID=$(id | cut -b -29)
	echo "User Name: $(whoami)"
	echo "Home Directory: $HOME"
	#echo $ID 
	echo $(id) 
	lslogins -u
}

echo
echo "Here are your account details:"
user_details
