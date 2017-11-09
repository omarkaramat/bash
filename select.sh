#!/bin/bash 

PS3='Pick a color: ' 

echo 

select colour in "brown" "grey" "black" "orange" "red" 
do 
	echo "You selected this color: $colour"
	break
done 
