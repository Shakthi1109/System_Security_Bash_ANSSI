#!/bin/bash

command=$(grep "GRUB_CMDLINE_LINUX=" /etc/default/grub)
command1=$(echo $command | cut -d '=' -f2)
command2=$(echo $command | cut -d '=' -f3)

if [ $command1 == "\"iommu" ] && [ $command2 == "force\"" ] 
    then
        echo "Rule 11 - OK"
    else
        echo "Rule 11 - KO"
fi
