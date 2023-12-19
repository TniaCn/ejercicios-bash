#!/bin/bash

#Tabla de multiplicar
read -p "Introduce un número: " num
cont=1
while [[ $cont -le 10 ]]
do
	multi=$((num*cont))
	echo "$num*$cont=$multi"
	((cont++))
done
