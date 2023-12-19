#!/bin/bash

#Listado directorio

cont=0
for i in `ls -a $1`; do
	((cont++))
	echo $i
	if [[ -d $1$i ]]
	then
		echo "$i es un directorio."
	elif [[ -f $1$i ]]
	then
		echo "$i es un fichero."
	elif [[ -b $1$i ]]
	then
		echo "$i es un archivo especial de bloque."
	elif [[ -c $1$i ]]
        then
                echo "$i es un archivo especial de caracter."
	elif [[ -L $1$i ]]
	then
		echo "$i es un enlace simbólico."
	fi
done

echo "$1 tiene $cont entradas."
