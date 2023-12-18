#!/bin/bash

#Imprimir números del 5 al 1

cont=1
while [[ $cont -le 5 ]]
do
	if [[ $cont -eq 5 ]]
	then
		echo $cont
	else
		echo -n "$cont, "
	fi
	((cont++))
done
