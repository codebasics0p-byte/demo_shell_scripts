#!/bin/bash

echo "========= Creation Of User Started ==========="

read -p "enter username: " username
read -p "enter password: " password

function user_create {

#user create
sudo useradd -m $username
echo -e "$password\n$password" | sudo passwd $username

echo "========= Creation Of User Completed ========="
}

function user_delete {

#user delete
sudo userdel "$username"

echo "========= deletion completed ========="
}

function user_check {

#user check
if [ $(cat /etc/passwd | grep "$username" | wc | awk '{print $1}') == 0 ]
then
	echo "user deleted"
else
	echo "user is'nt deleted"
fi
}

user_create
user_delete
user_check
