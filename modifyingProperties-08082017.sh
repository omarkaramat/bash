#!/bin/bash


declare -i x 
x=8/2
echo "\$x = $x"

declare -a x=(1 2 3 4 5) 

for i in {0..4} # 0 1 2 3 4
do 
	echo "x[$i]" 
	let "i += 1" # i = i = 1
done 

for i in {0..4} # 0 1 2 3 4
do 
	echo "${x[$i]}" 
	let "i += 1" # i = i = 1
done

declare -f someFunction

someFunction()
{
echo "are you having a good time? yes, no maybe or you don't care"

}

someFunction 

declare -x var_x=10
echo "$var_x"



