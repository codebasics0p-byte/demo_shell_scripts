#!/bin/bash
<<info
This is an explanation of function
info

function create_user {

read -p "enter username: " username

sudo useradd -m "$username"

echo "$username successfully created"
}

create_user
create_user
create_user
