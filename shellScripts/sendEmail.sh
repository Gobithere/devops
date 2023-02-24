#!/bin/bash

#Description: This script will send an email to administrator.


mailAdress="scebeci@havelsan.com.tr"

if [ -s /tmp/filtered-messages ]; then # file exist and size greater then zero
    
    cat /tmp/filtered-messages | sort | uniq | mail -s "syslog" $mailAdress
    rm /tmp/filtered-messages
fi

