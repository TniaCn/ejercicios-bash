#!/bin/bash

#Decir si el número es par o impar

read -p "Introduce un número: " num
res=$((num%2))

if [[ $res -eq 0 ]]
then
	echo "$num es par"
else
	echo "$num es impar"
fi
