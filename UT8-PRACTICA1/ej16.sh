#!/bin/bash

#Listado estadísticas ficheros y subdirectorios

fich=0
subdi=0

if [[ ! -d $1 ]]; then
	echo "$1 no es un directorio"
else
	for i in `ls -a $1`; do

		if [[ -d $1$i ]]; then
			((subdi++))
		else
			((fich++))
		fi
	done

	echo "$1 tiene $fich fichero y $subdi subdirectorios."
fi
