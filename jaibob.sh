#!/bin/bash

echo "collection cheppara unga"
read collection
if [ -n "$collection" ]
then
	if [ "$collection" -le 1 ]
		then echo "low tier collection ra unga"
	elif [ "$collection" -ge 1 ] && [ "$collection" -le 50 ]
	        then echo "middle tier collection ra unga"
	elif [ "$collection" -ge 51 ] && [ "$collection" -le 100 ]
	then echo "High tier collection ra unga"
	else 
		echo ""
	fi
else
	echo "collection correct ga evu ra unga"
fi
