#!/bin/bash
A=$1
B=$2
cat $3 | sed 's/'$A'/1/g'| sed 's/'$B'/2/g'|sed 's/1/'$B'/g'|sed 's/2/'$A'/g'