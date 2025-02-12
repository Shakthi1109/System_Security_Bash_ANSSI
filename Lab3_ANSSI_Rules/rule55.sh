#!/bin/bash

Service="sshd"
ChrootDir="/var/chroot/sshd"

# Check if the service is running within a chroot jail
if pgrep -fl $Service | grep -q "$ChrootDir"; then
    # Check if the service has proper access rights
    if [ -d "$ChrootDir" ] && [ "$(stat -c %a $ChrootDir)" -eq "755" ]; then
        echo "Rule 55 - OK"
    else
        echo "Rule 55 - KO"
    fi
else
    echo "Rule 55 - KO"
fi


