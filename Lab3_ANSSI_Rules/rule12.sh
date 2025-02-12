#!/bin/bash

count=0
# open input files
exec {fdA}<content1_R12
exec {fdB}<content2_R12

while read -r -u "$fdA" line1 && read -r -u "$fdB" line2
do
    var=$(mount | grep "$line1" | grep "$line2")
    
    if [ -z "$var" ];
    then count=$((count+1))  
    fi
done

exec {fdA}>&- {fdB}>&- # close input files

if [[ $count -gt 0 ]]; then
echo "Rule 12 - KO"
else
echo "Rule 12 - OK"
fi

