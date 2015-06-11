# Primera clase
**Metodos Computacionales** vacaciones 2015

Herraamientas del Curso:
+ git
+ GitHub
+ bash
+ C
+ Python

Y los metodos a estudiar son:
1. interpolacion,
2. analisis de Fourier,
3. diferenciadion e integracion numericas,
4. ecuaciones diferenciales ordinarias,
5. ecuaciones diferenciales parciales,
6. Metodos de Monte Carlo.

#Segunda clase 
##HandsOn 2 
**02-Jun-2015**
1. La expresion para los primeros 4 caracteres `^(.... )`
### gnuplot
```
#!/bin/bash
A=$1
B=$2
C=$3
gnuplot<< EOF
    set datafile separator ","
    set term dumb
    set parametric
    set size ratio 1
    plot "${A}" using ${B}:${C} with lines
```

##HandsOn 3 
**05-Jun-2015**
1. Make es una herramienta que sirve para mantener actualizados un grupo de archivos que depende entre si. donde cada archivo mantiene relaciones, tareas, con otros archivos, guardando una jerarquia.