#!/bin/bash
#Trabajo junto a Ciro Gelvez 
let conta=0;
#se crea una variable que ira aumentando con cada iteracion y de esa manera cambiar el radio.
while(true)
	do
	clear
	#r= $(echo "scale=2; c($conta)*c($conta)"| bc -l)
	echo "######################################################################"
	./circle.sh $(echo "scale=2; c($conta/10)*c($conta/10)"| bc -l)
	echo "######################################################################"
	let conta++
	sleep 0.5
	done
