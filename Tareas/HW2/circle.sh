#!/bin/bash
#Trabajo junto a Ciro Gelvez 
R=$1
#grafica de un circulo
gnuplot<< EOF
    set parametric
    unset border
    unset xtics
    unset ytics
    set term dumb
    set trange [0:2*pi]
    set size ratio 1
    set key off
    set xrange [-1:1]
    set yrange [-1:1]
    plot ${R}*cos(t),${R}*sin(t)
    
