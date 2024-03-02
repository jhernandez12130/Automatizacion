#! /bin/bash
fecha=$(date +"%Y/%m/%d %H:%M:%S")

pwd
mkdir prueba
cd ./prueba
touch chamba
echo "$fecha Mi primera chanba"  > chamba
cat chamba	
