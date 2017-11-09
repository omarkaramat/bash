#!/bin/bash

var=/home/sysadmin/wood.txt

if [[ -e $var ]] #file test operator to check file exists
then
	echo "File exists"
else
	echo "FILE DOES NOT EXIST"
fi

(( 2 > 1))
echo "Exit status is $?"


(( 2 <  1))
echo "Exit status is $?"
# is answer is 0 , then 0, any other anser is 1 -- 4

(( 2 + 2 ))
echo "Exit status is $?"

# very good 

# return if file is not 0 size -s
# return if file is not drectory or device file -f
# return true if user running test has permission to read file
# -x if user running test has permission to execute file
# -w if user running test has permission to write to fiile
# ! reverses operator 

NO_OF_ARGS=2

E_NOARGS=65
E_BADARGS=85
E_UNREADABLE=86
E_NOFILE=87
E_SIZE=89

# No arguments given then exit
if [[ -z "$1" && -z "$2" ]]
then 
	echo "No arguements given"
	exit $E_NOARGS
fi 

# No of arguements too low
if [[ $# -ne "$NO_OF_ARGS" ]]
then
        echo "USAGE: `basename $0` file1 file2"
        exit $E_BADARGS
fi

if [[ ! -e "$1" || ! -e "$2" ]]
then 
	echo "Files do not exist"
	exit $E_NOFILE
elif [[ ! -f "$1" || ! -f "$2" ]]
then 
	echo "Files need to be regular files"
	exit $E_NOTFILE
elif [[ ! -r "$1" || ! -r "$2" ]]
then 
	echo "No read permission"
	exit $E_UNREADBALE

elif [[ ! -s "$1" || ! -s "$2" ]]
then 	
	echo "Files are zero size"
	exit $E_SIZE
fi 

cat $1 $2 | sort > file.txt 

if [ $? -eq 0 ]
then 
	echo "execution of script was successful"
else
	echo "execution failed"
fi


cat file.txt






























