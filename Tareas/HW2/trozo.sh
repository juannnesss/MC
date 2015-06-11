#!/bin/bash
#Trabajo junto a Ciro Gelvez 
#calculo lo largo de la cadena
final=$(echo "$2-$1+1"|bc -l)
#guardo la cadena en una variable
cadena=$(cat $3)
#retorno la respuesta
echo ${cadena:($1-1):$final}
