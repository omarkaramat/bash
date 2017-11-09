#!/bin/bash

# :2,4d deletes lines between 2 and 4


# :set number
# :set nonumber

arr[0]=20
arr[1]=30 

echo -e "${arr[0]} \n${arr[1]}" 

# another way 
declare -a arrr

arrr=( 10 20 30 40 50 60 70 ) 

echo -e "${arrr[0]} \n${arrr[1]} \n${arrr[2]} \n${arrr[3]} \n${arrr[4]} \n${arrr[5]}" 
 


# strings 
arrrr=( [0]=first [1]=second [7]=45 )

echo -e "${arrrr[0]} \n${arrrr[1]} \n${arrrr[5]} \n${arrrr[7]}" 
echo "========================="

echo ${arrrr[*]}
echo ${arrrr[0]}
echo ${arrrr[1]}
echo "size of element" ${#arrrr[@]}


echo "========================="
omarArray=( zero one two )
echo ${omarArray[0]}
echo ${#omarArray[0]}
echo ${#omarArray[*]}



echo "========================="



