#!/bin/bash 

# for loop
# while loop
# until loop 
# break and continue commands
# case and control commands

for i in 1 2 3 4 5 
do 
	echo "Outer Loop $i -------------------------------"

 	for j in 1 2 3 
	do 
		echo "Inner Loop $j      !!!!!!  Outer loop $i"
	done 

done 


