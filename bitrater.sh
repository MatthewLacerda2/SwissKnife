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
    resolution=$(ffprobe -v error -select_streams v:0 -show_entries stream=width,height -of csv=p=0 "$arq")
    width=$(echo $resolution | cut -d'x' -f1)
    height=$(echo $resolution | cut -d'x' -f2)

    if [ $width -gt 2560 ] || [ $height -gt 1440 ];
    then
        newname="${arq}2500.${exte}"
        ffmpeg -hwaccel cuda -i "$arq" -vf "scale=-1:1440:min(2560\,iw):-1" -b:v 2500K "${newname}"
        i=$((i+1))
        trash $arq
    else
        newname="${arq}2500.${exte}"
        ffmpeg -hwaccel cuda -i "$arq" -b:v 2500K "${newname}"
        i=$((i+1))
        trash $arq
    fi
fi

done

