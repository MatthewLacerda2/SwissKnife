#!/bin/bash

for arq in *;
do

access_time=$(stat -c %X "${arq}")
current_time=$(date +%s)
time_since_access=$(((current_time - access_time)/86400))

if [ $time_since_access -gt 3 ];
then
trash ${arq}
fi

done
