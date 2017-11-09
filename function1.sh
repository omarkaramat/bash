#!/bin/bash 

someFunction()
{
	echo "Function name is $FUNCNAME"
}

someFunction

echo "Outside, \$FUNCNAME = $FUNCNAME"

if [[ $HOSTNAME && $USER && $HOME ]]
then	
	echo "HOSTNAME: $HOSTNAME"
	echo "USER: $USER"
	echo "HOME: $HOME" 
	echo "Variables are set" 
else
	echo "Variables are not set" 
fi 



