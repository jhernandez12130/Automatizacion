#!/bin/bash

mkdir log
path="./log/"
w="Alan_Hernandez"


cd "$path"

touch messages1.txt
touch messages2.txt
touch messages3.txt
touch messages4.txt


echo -e "googledsads.com\nyoutube.com" > messages1.txt
echo -e "googledsads.com\nalan_hernandez" > messages2.txt
echo -e "johncena\njuanito" > messages3.txt
echo -e "gooddad\npatricioAlan_hernandez" > messages4.txt




for file in messages*
do
#       echo "$file"

        grep -Ril "$w" "$file"

done
