#!/bin/bash

#Saber si el fichero pasado existe y si es un directorio o un fichero regular

read -p "Introduce la ruta del fichero: " fichero

if [[ -a $fichero && -d $fichero ]]
then
	echo "El fichero existe y es un directorio."
elif [[ -f $fichero ]]
then
	echo "El fichero existe y es un archivo regular"
else
	echo "El fichero no existe."
fi
