#!/bin/bash

file='r23reco'  

boolean=0
while read line; do
var=$(grep "$line" r23reco)
#var=$(grep "$line" /etc/sysctl.conf)
if [ -z "$var" ];
then boolean=$((boolean+1))  
fi

done < $file

if [[ $boolean -gt 0 ]]; then
echo "Rule 23 - KO"
else
echo "Rule 23 - OK"
fi
