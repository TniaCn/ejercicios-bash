#!/bin/bash

#Suma

read -p "Dime un número: " num

while [[ num -ne 0 ]]
do
	read -p "Dime otro número: " num2
	num=$((num+num2))

	if [[ $num2 -eq 0 ]]
	then
		echo $num
		break
	fi


done

