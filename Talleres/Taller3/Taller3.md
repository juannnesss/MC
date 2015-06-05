#Taller 3
*Métodos Computacionales - Laboratorio*

05-Jun-2015

Haga una copia de este archivo en su repositorio de GitHub en la carpeta /MC/Talleres/Taller3/. No olvide al final hacer un *commit* y un *push*.

# gcc, gnuplot y bash

Clone el repositorio [c-examples](https://github.com/tisnik/c-examples) de Pavel Tišnovský. **¡No lo clone al interior de su repositorio personal!**

1. Escriba un comando en `bash` que tome el código de todos los ejemplos en la carpeta `/c-examples/src/` y construya un archivo en Markdown con el código de los archivos en bloques de código bajo headers con el nombre del archivo correspondiente.
```
for i in $(ls)
do
echo "==================================================" >>solucion.md
echo "#Nombre del Archivo: $i" >>solucion.md
echo "==================================================" >>solucion.md
echo "\`\`\`c" >>solucion.md
cat $i >>solucion.md
echo "\`\`\`" >>solucion.md
done
```


2. Ahora borre los archivos `c31_goto.c`, `c83_terminal_io.c` y `cA5_thread_join.c` y haga lo siguiente para los primeros (en orden alfabético) treinta archivos de C restantes.  Escriba un comando de `bash` que compile cada archivo de C, que luego imprima la línea que contiene la palabra *Example* y [la que le sigue](http://stackoverflow.com/questions/19274127/how-do-you-grep-a-file-and-get-the-next-5-lines), que luego ejecute el ejecutable, y que finalmente espere a que [el usuario presione alguna tecla](http://www.linuxquestions.org/questions/linux-general-1/how-to-make-shell-script-wait-for-key-press-to-proceed-687491/) para continuar con el siguiente archivo.
```
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
```


3. Escriba un programa en C que genere 1000 puntos aleatorios uniformemente distribuidos sobre una esfera de radio unitario. Implemente la idea descrita al final del artículo [Sphere point picking](http://mathworld.wolfram.com/SpherePointPicking.html) y utilice la implementación para generar número con distribución normal [aquí](http://c-faq.com/lib/gaussian.html) detallada. Compile, ejecute y rediriga la salida al archivo `aleatorios_esfericos`. Luego escriba una secuencia de comandos de `gnuplot` para graficar estos puntos usando `splot`.




**Al terminar la clase ejecute `lottery.sh` para saber si su taller va a ser revisado.**