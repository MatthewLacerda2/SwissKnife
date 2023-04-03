#!/bin/bash

for arq in *; do

nome=$(echo $arq | awk -F. '{ print $1 }')
ext=$(echo $arq | awk -F. '{ print $2 }')

echo $arq
echo $nome
echo $ext

if [[ $ext == "txt" ]]; then
	cat "$arq" | grep "$1"
fi

echo " "

done
