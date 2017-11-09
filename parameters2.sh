#!/bin/bash

NO_OF_ARGS=2
E_BARDARGS=85
E_UNREADABLE=86

if [ $# -ne "$NO_OF_ARGS" ]
then
	echo "Usage: `basename $0` testFile1 testFile2"

exit $E_BARDARGS
fi 

if [[ ! -r "$1" || ! -r "$2" ]]
then 
# dash R returns true if readable after exit

	echo "Files are not real" 
	exit "$E_UNREADABLE"
fi

cmp $1 $2 &> /dev/null 
# don'r need this on the screen 
# redirect to nothing 

if [ $? -eq 0 ] 
then 
	echo "Files are the same" 
else 
	echo "Files are NOT the same"
fi 

exit 0 
