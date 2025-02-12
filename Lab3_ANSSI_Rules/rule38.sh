#!/bin/bash

file='r38reco'  

boolean=0
while read line; do
#var=$(grep "$line" r38reco)

var=$(ls $line -la 2>/dev/null| cut -b 1-10)
if [ $var==*'s'* ];
then 
boolean=$((boolean+1))
#echo $var 
fi

done < $file

if [[ $boolean -gt 0 ]]; then
echo "Rule 38 - KO"
else
echo "Rule 38 - OK"
fi
