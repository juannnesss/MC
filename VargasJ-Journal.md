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

##HandsOn 4 
**09-Jun-2015**
###Make
1. Make es una herramienta que sirve para mantener actualizados un grupo de archivos que depende entre si. donde cada archivo mantiene relaciones, tareas, con otros archivos, guardando una jerarquia.
###Proyecto final
1. Teniendo en cuenta estas dos semanas me gustaria si es posible, o almenos tener un acercamiento inicial, a poder tomar un conjuntos de datos, puede ser el resultado de un experimento, y crear un filtro que quite el "ruido" que se puede generar en ciertas tomas de datos. o tambien me gustaria investigar mas sobre la manera en la que los datos de experiemtnos son guardados, y posiblemente comparar la eficacia de estos si los guardaramos en diferentes estruturas de datos, por ejemplo, grafos, listas encadenadas, listas de hash, etc.
##HandsOn 5
**10-Jun-2015**
###matplolib
1. 
```python
%pylab inline

from numpy import sin,pi,linspace
from pylab import plot,show,subplot
#se crean dos arreglos de 25 objetos tales que no se repitan
w_x = [1,3,5,7,9,11,13,15,17,19,21,23,25,27,29,31,33,35,37,39,41,43,45,47,49] 
w_y = [2,4,6,8,10,12,14,16,18,20,22,24,26,28,30,32,34,36,38,40,42,44,46,48,50]
#desfase
delta = 2*pi/3 
#variacion de t
t = linspace(-pi,pi,300) 
#tamaño
figure(figsize=(20,20)) 

for i in range(0,25):
    #las escuaciones parametricas
    x = sin(w_x[i] * t + delta) 
    y = sin(w_y[i] * t) 
    subplot(5,5,i+1) 
    plot(x,y)
    plt.axis('off')   

show()
```
![Lissajous figures](https://github.com/juannnesss/MC/blob/master/Clase/Lissajous.png)
