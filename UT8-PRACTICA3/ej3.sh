#!/bin/bash

if [[ $# -lt 4 ]]; then
	echo "Error: alta/baja nombre apellido1 apellido2 [grupo]"
	exit 1
fi

#estado=$1
#nom=$2
#ap1=$3
#ap2=$4
#grup=$5

if [[ $1 == "alta" ]]; then
	ap1=$(echo $3 | cut -c1-2)
	ap2=$(echo $4 | cut -c1-2)
	nom=$(echo $2 | cut -c1)
	id="alu$ap1$ap2$nom"
	if [[ -z "$5" ]] || ! grep -q "^$5" /etc/group;then
		groupadd $id
		useradd $id -g $id
	else
		useradd $id -g $5
	fi
elif [[ $1 == "baja" ]]; then
	ap1=$(echo $3 | cut -c1-2)
	ap2=$(echo $4 | cut -c1-2)
	nom=$(echo $2 | cut -c1)
	id="alu$ap1$ap2$nom"
	deluser $id
fi
