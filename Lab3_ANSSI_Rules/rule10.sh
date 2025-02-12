#!/bin/bash

version=$(getconf LONG_BIT)
if [ $version -eq 64 ]
then
echo "Rule 10 - OK"
else
echo "Rule 10 - KO"
fi
