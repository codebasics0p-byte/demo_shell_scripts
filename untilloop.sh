#!/bin/bash

i=0
until [ "$i" -ge 5 ]
do
echo "username cheppu ra unga"
read u
	if [ "$u" != bob ]
	then
		echo "Please enter correct username"
		i=$(("$i"+1))
	else
		echo "----Welcome bob----"
	fi
done

