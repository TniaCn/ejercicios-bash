#!/bin/bash

#Copiar archivo
if [[ $# != 2 ]]; then
	echo "No has pasado los parámetros necesarios"
elif [[ ! -f $1 ]]; then
	echo "El fichero a copiar no es un archivo ordinario"
elif [[ -a $2 ]]; then
	echo "Ya existe un fichero con ese nombre"
else
	cp $1 $2
	echo "El archivo se ha copiado correctamente"
fi
