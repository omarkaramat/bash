#!/bin/bash 

count=0

exec 3<> wood.txt 

while read line <&3
do 
{
	echo "$line"
	(( count ++ )); 
} 
done

exec 3>&- 

echo "number of read lines is $count"



