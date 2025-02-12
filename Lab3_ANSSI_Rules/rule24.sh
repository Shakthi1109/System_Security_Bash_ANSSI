#!/bin/bash

var=$(grep 'kernel.modules_disabled = 1' /etc/sysctl.conf)
if [ -z $var ]; then
echo 'Rule 24 - KO'
else 
echo 'Rule 24 - OK'
fi
