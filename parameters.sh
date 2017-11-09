#!/bin/bash 

MIN=3

if [ -n "$1" ]
then
	echo "1st parameter is $1"
fi


if [ -n "$2" ]
then
        echo "2nd parameter is $2"
fi


if [ -n "$3" ]
then
        echo "3rd parameter is $3"
fi

# 10th parameter is £{10}



echo "List of arguements: "$*""
echo "name of script: \""$0"\""

if [ $# -lt "$MIN" ]
then 
	echo "Not enough arguements, to 3 to run"	
fi

echo $?


NO_OF_ARGS=2
E_BADARGS=85
E_UNREADABLE=86

if [ $# -ne "$NO_OF_ARGS" ]
then 	
	echo "Usage: `basename $0` testFile1 testFile2"

exit $E_BADARGS
fi

echo $?
