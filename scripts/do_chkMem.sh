#!/bin/bash

echo -n "Check Memory, input count:"
read CNT

INDEX=1
while [ $INDEX -le $CNT ]
do 
	echo "==="
	cat /proc/meminfo | grep "Mem"
	((INDEX++))
	sleep 1
done

