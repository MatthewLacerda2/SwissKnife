#!/bin/bash

arg1=$1
arg2=$2

if   [ $# == 0 ];
then
	echo "Parameters needed"
	exit 0
elif [ $# == 1 ]; then
	arg2=$(echo $arg1 | awk -F. '{ print $1}')
fi

i=1
for arq in *; do

if [ -d "$arq" ];
then
	continue
fi

nome=$(echo $arq | awk -F. '{ print $1 }')
exte="${arq##*.}"

diff=$(echo $nome | grep $arg1)
if [ "$diff" != "" ]; #if name contains keyword or not
then
	mv -n "$arq" "$arg2$i.$exte"
	i=$((i+1))
fi

done
