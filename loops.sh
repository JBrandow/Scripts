#!/bin/bash

echo "The Countdown has begun!"
for i in 10 9 8 7 6 5 4 3 2 1; do 
	echo $i"...";
	
done

toilet BOOM


counter=0
while [ $counter -lt 1000 ]; do
	let counter+=1
	echo $counter "Are we there yet?"


done
echo "We're there!" 

#until [ $counter -gt 100000  ]; do
         echo "We're there!"
done
