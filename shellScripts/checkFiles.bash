#!/bin/bash 
#Description to check availability of specified files, rpms etc.

RED='\033[0;31m'
GREEN='\033[0;32m'
COLORRESET='\033[0m'

FILES="/etc/passwd
/etc/group
/etc/shadow
/etc/nsswitch.conf
/etc/sshd_ssh_config
/etc/fake "


# Command to check ıf rpm package is available with exit code.
# rpm -e --test [packageName]

echo 

for file in $FILES
do 

    if [ ! -e $file ]; then   # -e returns true if file exists.
    echo
    echo -e "${RED} $file do not exist ${COLORRESET}"
    echo
    else 
    echo 
    echo -e "${GREEN} $file has been found! ${COLORRESET}"
    echo
    fi

done



