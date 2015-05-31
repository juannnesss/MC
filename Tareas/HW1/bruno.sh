#!/bin/bash
echo "==============Punto (a)=============="
echo el numero de estrellas es menos uno:
wc -l kepler.csv
echo "==============Punto (b)=============="
echo Estrellas con Masa menor a una centesima de la masa de Jupiter:
awk -F, '{if($2>0&&$2<0.01)print $1}' kepler.csv 
echo y en total son:
awk -F, '{if($2>0&&$2<0.01)print $1}' kepler.csv |wc -l

echo "==============Punto (c)=============="
echo el planeta es:
tail -4802 kepler.csv| sort -t"," -k6  |awk -F"," '{print $1}'|head -1
echo su periodo es:
tail -4802 kepler.csv| sort -t"," -k6  |awk -F"," '{print $6}'|head -1