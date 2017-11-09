#!/bin/bash

declare -a colors

echo "Your favourite colors seperated by space: "
read -a colors

count=${#colors[@]} 

i=0
while [ "$i" -lt "$count" ] 
do 
 echo ${colors[$i]}
 (( i++ ))
done 

echo ${colors[*]}

unset colors[2]
echo ${colors[*]}

unset colors 
echo "no colors. colors gone"
echo ${colors[*]} 




