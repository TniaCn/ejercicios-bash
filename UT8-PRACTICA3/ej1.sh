#!/bin/bash

#Mostrar usuarios que iniciaron sesión y que tengan IP
last | egrep "[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}"
