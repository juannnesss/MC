#!/bin/bash
cat $input > text1.txt
#aca se hacen las 10 repeticiones de los cambios d letras
for i in {1..10}
	do
	./flip.sh v z text1.txt > text2.txt	
	./flip.sh h y text2.txt > text1.txt	
	./flip.sh p x text1.txt > text2.txt
	./flip.sh u w text2.txt > text1.txt	
	./flip.sh z v text1.txt > text2.txt	
	./flip.sh s u text2.txt > text1.txt
	./flip.sh f t text1.txt > text2.txt	
	./flip.sh g s text2.txt > text1.txt	
	./flip.sh x r text1.txt > text2.txt	
	./flip.sh e q text2.txt > text1.txt	
	./flip.sh d p text1.txt > text2.txt
	./flip.sh r o text2.txt > text1.txt	
	./flip.sh m n text1.txt > text2.txt	
	./flip.sh b m text2.txt > text1.txt	
	./flip.sh j l text1.txt > text2.txt	
	./flip.sh a k text2.txt > text1.txt	
	./flip.sh c j text1.txt > text2.txt	
	./flip.sh y i text2.txt > text1.txt	
	./flip.sh k h text1.txt > text2.txt	
	./flip.sh t g text2.txt > text1.txt	
	./flip.sh q f text1.txt > text2.txt	
	./flip.sh o e text2.txt > text1.txt
	./flip.sh l d text1.txt > text2.txt	
	./flip.sh w c text2.txt > text1.txt
	./flip.sh n b text1.txt > text2.txt
	./flip.sh i a text2.txt > text1.txt
	#echo $i	
	done
	
cat text1.txt|figlet
#se borran los archivos que se crearon para facilidad del manejo del punto 
rm text1.txt
rm text2.txt
