#!/bin/bash
echo "#########################"
echo StarDate
echo "#########################"
echo $1
#se buscan los del ano
awk -v var="$1" -F"\t" '{if($1==var) print $2}' worldhistory.tsv
echo "#########################"
echo "RA   DEC   HIP No."
#se imprimen los 5 primeros que cumplen con condicion, y es estar dentro del 
awk -v var="$1" -F"," '{if((2015-var)<$10&&(2016-var)>$10) print $8,$9,$2}' hyg.csv |head -5
