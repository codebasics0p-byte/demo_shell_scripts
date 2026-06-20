#!/bin/bash

read -p "Enter number of the day in a week:" num

case "$num" in
	0) echo "MON";;
	1) echo "TUE";;
	2) echo "WED";;
	3) echo "THU";;
	4) echo "FRI";;
	5) echo "SAT";;
	6) echo "SUN";;
	*) echo "Invalid input";;
esac


