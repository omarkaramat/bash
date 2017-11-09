#!/bin/bash

E_NOPATTERN=71
DICT=/home/sysadmin/linux.words

if [ -z "$1" ] 
then 
	echo 
	echo "Usage: "
	echo "`basename $0` \"pattern,\""
	echo "where \"pattern\" is in the form a"
	echo "ooo..oo.o.."
	echo 
	echo "The o's are letters you already know, "
	echo "and the periods are missing letters."
	echo "Letters and periods can be in any position"
	echo "Fore example: w...i....n"
	echo
	echo $E_NOPATTERN
fi 

grep ^"$1"$ "$DICT"	
