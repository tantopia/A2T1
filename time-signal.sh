#!/bin/bash
# save as time-signal.sh
# gives a time signal every hour when connected to cron
time=$(date +%I)
minutes=$(date +%M)
count=0
while test $count -lt $time; do
  echo -e "\a"
  sleep 1 # sleep for one second
  count=$[$count+1]
done

sleep 3

if test $minutes -ge 30; then
 echo -e "\a"
 echo -e "\a"
elif test $minutes -ge 45;then
 echo -e "\a"
 echo -e "\a"
 echo -e "\a"
elif test $minutes -ge 15;then
 echo -e "\a" 
fi

