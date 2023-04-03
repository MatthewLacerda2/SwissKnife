#!/bin/bash

i=0

for arq in *
do

exte="${arq##*.}"

if [ "$exte" != "mp4" ] && [ "$exte" != "wmv" ];
then
continue
fi

bitrate=$(ffprobe -v error -select_streams v:0 -show_entries stream=bit_rate -of default=noprint_wrappers=1 "$arq")
bitrate=$(echo $bitrate | awk -F= '{ print $2 }')

if [ $bitrate -gt 4444000 ];
then
	newname="${arq}2500.${exte}"
	ffmpeg -hwaccel cuda -i "$arq" -b:v 2500K "${newname}"
	i=$((i+1))
#	echo $arq
#	echo $exte
#	echo $newname
#	echo ""

trash $arq

fi

done
