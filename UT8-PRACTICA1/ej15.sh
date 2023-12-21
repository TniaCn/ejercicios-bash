#!/bin/bash

#Listado directorio

cont=0
for i in `ls -a $1`; do
	((cont++))

	if [[ -d $1$i ]]; then
                echo "$i es un directorio."
        elif [[ -f $1$i ]]; then
                echo "$i es un fichero."
        elif [[ -L $1$i ]]; then
                echo "$i es un enlace simbólico."
        elif [[ -b $1$i ]]; then
                echo "$i es un archivo especial de bloque."
        elif [[ -c $1$i ]]; then
                echo "$i es un archivo especial de caracter."
        else
                echo "$i es otro tipo de archivo"
        fi
done

echo "$1 tiene $cont entradas."
