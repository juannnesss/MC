#!/bin/bash
let contador=0 
for i in $(ls)
	do
	let contador++
	gcc -o "$contador.out" -c $i
	grep -A 1 "Example" $i
	chmod u+x "$contador.out"
	./"$contador.out"
	rm "$contador.out"
	read -p "Press any key to continue... " -n1 -s
	if(($contador==30))
	then
	break
	fi
	done