#!/bin/bash

#!/bin/bash

echo "========= Creation Of User Started ==========="

read -p "enter username: " username
read -p "enter password: " password

sudo useradd -m $username
echo -e "$password\n$password" | sudo passwd "$username"

echo "========= Creation Of User Completed ========="

sudo userdel "$username"

if [ -n $(grep "$username" /etc/passwd) ]
then
	echo "======== successfully deleted ($username) ==========="
else
	echo "======== User Not deleted ========="
fi
