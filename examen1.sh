#!/bin/bash

# Nombre del archivo CSV
#archivo_csv="./Accidentes_ags_2021.csv"



echo "id                      |CAMPASAJ "
column -s, -t Accidentes_ags_2021.csv | grep -i zaragoza | awk '{print $1 "\t" $14 }'


#column -s, -t Accidentes_ags_2021.csv | grep -i campasaj | awk 'BEGIN {print "ID\tNOMBRE_COLUMNA19"} {print $1 "\t" $19}'

