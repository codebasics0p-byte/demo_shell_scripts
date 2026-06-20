#!/bin/bash

<< info
This shell script checks if user exists
info

read -p "enter the username you wish to check:" username
count=$(cat /etc/passwd | grep "$username" | wc | awk '{print $1}')
if [ $count -eq 0 ]
then
	echo "user doesn't exist"
else
	echo "user exists"
fi
