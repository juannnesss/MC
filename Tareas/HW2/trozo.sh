#!/bin/bash

final=$(echo "$2-$1+1"|bc -l)
cadena=$(cat $3)
echo ${cadena:($1-1):$final}
