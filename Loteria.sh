#!/bin/bash
wget https://raw.githubusercontent.com/ComputoCienciasUniandes/MetodosComputacionalesLaboratorio/master/2015-V/actividades/lottery/lottery.csv
head -1 lottery.csv
grep -iw 201215310 lottery.csv
rm lottery.csv