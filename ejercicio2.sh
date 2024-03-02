#!/bin/bash

# Obtener la fecha y hora actual
fecha_hora=$(date +"%Y/%m/%d %H:%M:%S")

# Obtener el hostname
hostname=$(hostname)

# Obtener el rendimiento del CPU
cpu=$(top -bn1 | grep "Cpu(s)" | sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | awk '{print 100 - $1"%"}')

# Obtener el uso de RAM
ram=$(free -m | awk 'NR==2{printf "%.2f%%", $3*100/$2}')

# Obtener el uso del disco duro
disco=$(df -h | awk '$NF=="/"{printf "%s", $5}')

# Construir la línea con la información
linea="$fecha_hora - Hostname: $hostname - CPU: $cpu - RAM: $ram - Disco: $disco"

# Agregar la línea al archivo de texto
touch ./informacion.txt
echo "$linea" >> informacion.txt

cat informacion.txt

rm -rf informacion.txt

