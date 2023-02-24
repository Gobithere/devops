#!/bin/bash

#Description: Check network connectivity to multiple instance.


remoteInstanceIp1="192.168.56.111"
# remoteInstanceIp2="192.168.1.255"
# remoteInstanceIp3="192.168.1.255"


RED='\033[0;31m'
GREEN='\033[0;32m'
COLORRESET='\033[0m'


for ip in $remoteInstanceIp1

do

ping -c 1 $ip

if [ $? -eq 0 ]; then
echo
echo -e "Status ${remoteInstanceIp1} : ${GREEN}HOST AVAILABLE ${COLORRESET}"
echo
else
echo
echo -e "Status ${remoteInstanceIp1} : ${RED}HOST NOT AVAILABLE ${COLORRESET}"
echo
fi

done

