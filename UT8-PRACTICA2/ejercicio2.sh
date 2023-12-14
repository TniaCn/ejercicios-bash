#!/bin/bash

num1=$1
num2=$2
suma=$(( num1 + num2 ))

if [[ $# -eq 2 ]]
then
	echo "$1 + $2 = $suma"
else
	echo "ERROR. No me has pasado los dos parámetros"
fi
