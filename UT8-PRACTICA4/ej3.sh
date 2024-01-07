#!/bin/bash
if [ ! -d "/root/cuarentena" ]; then
    sudo mkdir /root/cuarentena
fi
sudo find / -type f -name "*Hack*" -exec mv {} /root/cuarentena/ \;
