#!/bin/bash
A=$1
B=$2
C=$3
gnuplot<< EOF
    set datafile separator ","
    plot "${A}" using ${B}:${C} with lines
