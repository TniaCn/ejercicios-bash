#!/bin/bash

if [[ $# -lt 4 ]]; then
	echo "Error: alta/baja nombre apellido1 apellido2 [grupo]"
	exit 1
fi

estado=$1
nom=$2
ap1=$3
ap2=$4
grup=$5

if [[ $estado == "alta" ]]; then
	apellido1=$(echo $ap1 | cut -c1-2)
	apellido2=$(echo $ap2 | cut -c1-2)
	nombre=$(echo $nom | cut -c1)
	id="alu$apellido1$apellido2$nombre"
	if [[ -z "$grup" ]] || ! grep -q "^$grup" /etc/group;then
		groupadd $id
		useradd $id -g $id
	else
		useradd $id -g $grup
	fi
elif [[ $estado == "baja" ]]; then
	apellido1=$(echo $ap1 | cut -c1-2)
	apellido2=$(echo $ap2 | cut -c1-2)
	nombre=$(echo $nom | cut -c1)
	id="alu$apellido1$apellido2$nombre"
	deluser $id
fi
