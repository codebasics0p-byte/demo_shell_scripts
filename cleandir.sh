#!/bin/bash

for i in *f*
do
	if [ -d "$i" ]
	then
		rm -r "$i"
	fi
done
