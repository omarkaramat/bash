#!/bin/bash 

echo "$$" # pid of current bash script

for n in {0..5}
do 	
	echo "BASH_VERSINFO[$n] = ${BASH_VERSINFO[$n]}"
done


