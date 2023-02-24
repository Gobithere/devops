#!/bin/bash

#Description : Access Data From File

error_log_path=/root/scripts/messages
error_log_workdir=/root/scripts
current_workdir="$(pwd)"
logFileName=var-log-errors.log



echo $error_log_path
echo $error_log_workdir
echo $current_workdir

if [ $current_workdir != $error_log_workdir ]; then

cd ${error_log_workdir}
echo "WORKDIR is corrected into $(pwd)"
else
echo "WORKDIR is Already Correct"
fi


ls -ltr $(pwd)/var-log-errors.log



#let exitCode="$?"

#echo $exitCode


if [ $? -ne 0 ]; then

echo "$logFileName has not found."
echo "Creating $logFileName"

touch $logFileName
grep -i Successfully ${error_log_path} | tee $logFileName

else

echo "$logFileName already has found."

fi



