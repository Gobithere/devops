#!/bin/bash
#Description: Backup home directory and send to remote host

RED='\033[0;31m'
GREEN='\033[0;32m'
COLORRESET='\033[0m'

remoteHostIp="192.168.56.111"
sshPasswd="Kutay916284!"


today=$(date +"%Y-%m-%d")

trap "echo -e "${RED} Remote Backup Canceled! ${COLORRESET}" " SIGINT 
sleep 3

tar -cvf /tmp/backup-${today}.tar /home/ 2> /dev/null

[[ $? != 0 ]] && echo -e "${RED}Create Tar Failed! " || echo -e "${GREEN}TAR File has been Created!"


find /tmp -name backup*.tar -mtime -1 -type f -print &> /dev/null


if [ $? -eq 0 ]; then 

        echo -e "${GREEN}The Backup File has been created${COLORRESET}"
        echo 
        echo -e "${RED}Archiving Backup to Remote Host${COLORRESET}"
        sshpass -p ${sshPasswd} scp /tmp/backup-${today}.tar root@${remoteHostIp}:/home
        [[ $? != 0 ]] && echo -e "${RED}Backup Terminated!${COLORRESET}" || echo -e "${GREEN}DONE..!${COLORRESET}"
        
        else 
        echo -e "${RED}Backup Failed!${COLORRESET}"
fi

