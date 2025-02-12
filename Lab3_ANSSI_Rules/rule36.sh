#!/bin/bash

gshadow=$(ls /etc/gshadow -la | grep rw-r-----)
shadow=$(ls /etc/shadow -la | grep rw-r-----)

if [ -z "$gshadow" ] && [ -z "$shadow" ]
then
      echo "Rule 36 - KO"
else
      echo "Rule 36 - OK"
fi
