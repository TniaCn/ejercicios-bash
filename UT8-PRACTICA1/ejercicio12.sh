#!/bin/bash
#funciones

function limpiar(){
	read
	clear
}

function menu(){
echo "1-Sumar"
echo "2-Restar"
echo "3-Dividir"
echo "4-Multiplicar"
echo "0-Salir"
read -p "Introduzca una orden (0-5): " orden
}

function pregunta(){
	read -p "Introduzca un número: " num1
        read -p "Introduzca otro número: " num2

}

function suma(){
	pregunta
	res=$((num1+num2))
	echo "$num1+$num2=$res"
}

function resta(){
	pregunta
	res=$((num1-num2))
	echo "$num1-$num2=$res"
}

function multi(){
	pregunta
	res=$((num1/num2))
	echo "$num1/$num2=$res"
}

function div(){
	pregunta
	res=$((num1*num2))
	echo "$num1*$num2=$res"
}

#Menú

menu
while [[ $orden -ne 0 ]]
do
	if [[ $orden -lt 0 || $orden -gt 4 ]]
	then
		echo ""
		echo "*********************************"
		echo "Error. Opción no válida"
		echo "*********************************"
		echo ""
	fi
case $orden in
1)
	suma
	limpiar;;
2)
	resta
	limpiar;;
3)
	multi
	limpiar;;
4)
	div
	limpiar;;
esac
menu
done
