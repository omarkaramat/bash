#!/bin/bash 

until [ "$n" = end ] 
do 
	echo "Input end to exit or something to move on to "
	read n
	echo "$n"	
done
