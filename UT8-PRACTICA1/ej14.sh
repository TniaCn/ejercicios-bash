#!/bin/bash

#Listado directorio

cont=0
for i in `ls -a $1`; do
	((cont++))

	if [[ -d $i ]]
	then
		echo "$i es un directorio."
	else
		echo "$i es un fichero."
	fi
done

echo "$1 tiene $cont entradas."
