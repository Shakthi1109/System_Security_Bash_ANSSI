#!/bin/bash

var="$(grep 'ENCRYPT_METHOD SHA256' /etc/login.defs)"
var="${var}$(grep 'ENCRYPT_METHOD SHA512' /etc/login.defs)"
if [ -z "$var" ]; then
    echo 'Rule 32 - KO'
else 
    echo 'Rule 32 - OK'
fi
