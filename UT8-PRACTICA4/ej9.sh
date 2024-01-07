#!/bin/bash
fecha=$(date '+%Y%m%d_%H%M%S')
tar czf /root/copia_etc_$fecha.tgz /etc
