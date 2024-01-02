#!/bin/bash

#Guardar lista de ficheros con permisos --- --- rwx

ruta=($(ls -lR | egrep "^.*rwx .*" | awk '{print $9}'))
ls -lR | egrep "^.*rwx " > archivos_peligrosos.txt
for i in "${ruta[@]}"; do
	echo "$i : $(pwd $i)" >> archivos_peligrosos.txt
done
