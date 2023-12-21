#!/bin/bash

#Qué número es mayor entre dos parámetros
if [[ $1 -lt $2 ]]
then
	echo "$1 es menor que $2"
elif [[ $1 -gt $2 ]]
then
	echo "$1 es mayor que $2"
else
	echo "$1 es igual que $2"
fi
