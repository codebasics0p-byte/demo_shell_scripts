#!/bin/bash

echo "Today is $(date)"

echo "uptime"
uptime

echo "Currently Connected:"
w

echo "Last Logins:"
last -a | head -3
echo "--------------------------"
echo "Disk and memory usage:"

df -h | xargs | awk '{print "Free/Total Disk: "$22"/"$21}'
free -h | xargs | awk '{print "Free/Total Memory: "$9"/"$8}'

echo "--------------------------"
echo "Utilization and most expensive processes:"
top -b | head -3

