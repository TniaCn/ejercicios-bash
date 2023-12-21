#!/bin/bash

#Saber si un usuario existe

if [[ `id $1 2>/dev/null` ]]; then
	echo "El usuario existe"

	if [[ `who | grep $1` ]]; then
		echo "El usuario ha iniciado sessión"
	else
		echo "El usuario no ha iniciado sessión"
	fi

else
	echo "El usuario no existe"
fi

