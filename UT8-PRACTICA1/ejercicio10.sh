#!/bin/bash

#Decir si el número es primo

read -p "Introduce un número: " num
for (( i=1; i<=num; i++ ))
do
	res=$((num%i))
	cont=0

	if [[ $res -eq 0 ]]
	then
		((cont++))
	fi
done
if [[ $cont -eq 2 ]]
then
	echo "$num es un número primo"
else
	echo "$num no es un número primo"
fi
