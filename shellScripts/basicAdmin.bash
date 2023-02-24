#!/bin/bash
# Author : Kutay CEBECİ
# Date Created : 10/01/2022
# Description: This script will output basic admin tasks.
# Date Modified: 10/01/2022

echo "Please Enter your Timeout Period"

read timeoutPeriod


t="timeout ${timeoutPeriod} top";
d = "df -h";

name="Kutay CEBECİ"

$t
$d
echo $name



