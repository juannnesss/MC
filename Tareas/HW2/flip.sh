#!/bin/bash
#Trabajo junto a Ciro Gelvez 
A=$1
B=$2
#como el remplazo es en los dos sentidos, se realizan los respectivos remplazos 
cat $3 | sed 's/'$A'/1/g'| sed 's/'$B'/2/g'|sed 's/1/'$B'/g'|sed 's/2/'$A'/g'
