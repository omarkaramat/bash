#!/bin/bash 

up=$'\x1b[A'
down=$'\x1b[B'
left=$'\x1b[D'
right=$'\x1b[C'

read -s -n3 -p "Press an arrow ket: " arrow
# -s does echo the input 
#- only accepts 3 chars 
# - echos prompt before options 
# arrow is variable

case "$arrow" in 
	
	$up) echo "You pressed up";; 
	$down) echo "You pressed down";; 
	$left) echo "You pressed left";; 
	$right) echo "You pressed right";; 

esac


echo "enter a string"
read -r var 
echo $var

# read as inputed - dont remove escape chars e.g. test\\ -> test\

echo "Read" 
while read var 
do 

	echo "$var"

done <wood.txt
