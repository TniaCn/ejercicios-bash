#!/bin/bash

if [[ "$#" -eq 0 ]]; then
    echo "OPCIONES"
    echo "-----------------"
    echo "ahora | número de minutos"
    exit 1
fi

if [[ "$1" == "ahora" ]]; then
    echo "Apagando el equipo ahora..."
    sudo shutdown -h now
elif [[ "$1" =~ ^[0-9]+$ ]]; then
    sudo shutdown -h +$1
else
    echo "Opción no válida."
    exit 1
fi
