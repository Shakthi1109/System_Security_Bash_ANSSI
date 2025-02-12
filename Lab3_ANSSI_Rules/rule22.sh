#!/bin/bash

file='r22reco'  

boolean=0
while read line; do
#var=$(grep "$line" r22reco)
var=$(grep "$line" /etc/sysctl.conf)
if [ -z "$var" ];
then boolean=$((boolean+1))  
fi

done < $file

if [[ $boolean -gt 0 ]]; then
echo "Rule 22 - KO"
else
echo "Rule 22 - OK"
fi
