#!bin/bash
#Description: Filter syslog(var/log/messages) file then write result into new file.


logDate=$(date|awk '{print $1,$2,$3 }')


tail -fn0 /var/log/messages | while read line # yeni bir line düşünce çalıştır.
do 

    echo $line | egrep -i "refused|invalid|error|fail|lost|shut|down|offline"
    if [ $? -eq 0 ]; then
    echo $line +" $logDate" 1>> /tmp/filtered-sys-messages
    fi 
done
