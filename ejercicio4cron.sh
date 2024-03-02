#!/bin/bash

archivo=./cpu.log

if [ ! -f $archivo ]; then
    touch $archivo
fi

echo -e "$(date +%d/%m/%Y-%H:%M:%S)\t$(hostname -A)\t$(grep 'cpu' /proc/stat | awk '{usage=($2+$4)*100/($2+$4+$5)} END {print usage}')" >> $archivo

# Obtener la ruta completa del script
#script_path=$(readlink -f "$0")

#if ! crontab -l | grep -q "$script_path"; then
    # Agregar la tarea a cron para ejecutar el script cada minuto
#    (crontab -l 2>/dev/null; echo "* * * * * $script_path") 
#fi

