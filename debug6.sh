#!/bin/bash 

trap 'echo "LISTENING VARIABLES: a = \"$a\""' DEBUG
	
a=3; line=$LINENO

echo " \$a initialized to $a on line $line"

let "a *=2"; line=$LINENO

echo " \$a multiples by 2 on line $line."

 

 





