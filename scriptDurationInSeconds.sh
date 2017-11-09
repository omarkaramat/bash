#!/bin/bash 

LIMIT_TIME=12
TIME_INTERNAL=3

echo "This script will run for $LIMIT_TIME seconds."

echo "Press Ctrl-c to exit before the time limit."

while [ "$SECONDS" -le "$LIMIT_TIME" ] 
do 	
	echo "This script has been running for $SECONDS seconds"
	sleep $TIME_INTERNAL
done 

echo "Script executed sucessfully - yeay"
