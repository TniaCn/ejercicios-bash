#!/bin/bash

#Adivinar número del 1 al 100

read -p "Adivina el número: " respuesta
num=29
while [[ $respuesta -ne $num ]]
do
	if [[ $respuesta -lt $num ]]
	then
		echo "El número es mayor"
	else
		echo "El número es menor"
	fi
	read -p "Adivina el número: " respuesta
done

echo "Felicidades! Has adivinado el número"
