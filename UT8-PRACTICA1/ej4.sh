#!/bin/bash

#Saber si el fichero pasado existe y si tiene permisos de lectura

read -p "Introduce la ruta del fichero: " fichero

if [[ -r $fichero ]]
then
	cat $fichero
elif [[ ! -e $fichero ]]
then
	echo "El fichero no existe."
else
	echo "El fichero existe pero no tiene permisos de lectura."
fi
