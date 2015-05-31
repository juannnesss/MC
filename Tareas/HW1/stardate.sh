#!/bin/bash
echo "#########################"
echo StarDate
echo "#########################"
echo $1
grep $1 worldhistory.tsv| awk -F"\t" '{print $2}'
echo "#########################"
echo "RA   DEC   HIP No."
awk -v var="$1" -F"," '{if((2015-var)<$10&&(2016-var)>$10) print $8,$9,$2}' hyg.csv |head -5
