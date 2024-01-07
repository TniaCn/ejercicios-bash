#!/bin/bash

archivo="usr.txt"

while IFS=, read -r estado nom ap1 ap2 grup; do
    if [[ $estado == "alta" ]]; then
        apellido1=$(echo $ap1 | cut -c1-2)
        apellido2=$(echo $ap2 | cut -c1-2)
        nombre=$(echo $nom | cut -c1)
        id="alu$apellido1$apellido2$nombre"

        if [[ -z "$grup" ]] || ! grep -q "^$grup" /etc/group; then
            sudo groupadd $id
            sudo useradd $id -g $id
        else
            sudo useradd $id -g $grup
        fi

    elif [[ $estado == "baja" ]]; then
        apellido1=$(echo $ap1 | cut -c1-2)
        apellido2=$(echo $ap2 | cut -c1-2)
        nombre=$(echo $nom | cut -c1)
        id="alu$apellido1$apellido2$nombre"
        sudo deluser $id
    fi
done < "$archivo"
