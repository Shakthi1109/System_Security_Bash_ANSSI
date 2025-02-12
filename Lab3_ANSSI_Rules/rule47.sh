#!/bin/bash

Log_Path="/var/log"

if [ -d "$Log_Path" ] && [ "$(stat -c %d $Log_Path)" -ne "$(stat -c %d /)" ]; then
    echo "Rule 47 - OK"
else
    echo "Rule 47 - KO"
fi

