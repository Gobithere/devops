#!bin/bash

#Description : The scripts lists the users that logged in by given date.



# bugünün tarihi ancak farklı tarihde girilebilir.  
today=`date|awk '{print $1,$2,$3}'` 

egrep -w -i 'Jan|Feb|'  #egrep ile multi tarih çekilebilir.

last | grep -i $today | awk '{print $1}'