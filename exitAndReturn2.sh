#!/bin/bash

ARGS=1
E_BADARGS=85

FILE=/etc/passwd
pattern=$1

# codes go to 255 without going to global variables 

if [ $# -ne "$ARGS" ] 
then 
	echo "Usage: `basename $0` USERNAME"
	exit $E_BADARGS
fi 

get_real_name()
{
	while read line
	do 
		echo "$line" | grep $1 | awk -F":" '{ print $5 }'
	done
} <$FILE

get_real_name $pattern	
