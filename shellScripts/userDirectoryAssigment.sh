#!bin/bash

#Description: This script will find directories without users

cd /home

for DIR in *
do
        checkCount=$(grep -c "/home/$DIR" /etc/passwd)
        if [ checkCount -ge 1 ]; then

        echo "$DIR is assigned to a user"
        else
        echo "$DIR is NOT assigned to a user"
        fi
done 


