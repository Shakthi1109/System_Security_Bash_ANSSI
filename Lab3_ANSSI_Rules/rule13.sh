#!/bin/bash

rights=$(ls /boot -la | grep drwxr-xr-x)

if [ -z "$rights" ]
then
      echo "Rule 13 - KO"
else
      echo "Rule 13 - OK"
fi
