#!/bin/bash 

UPPER_LIMIT=9

echo "Numbers 1 to 10 (but not 3 and 11)"
n=0 

while [ "$n" -le "$UPPER_LIMIT" ] 
do 
	n=$(($n+1))
	
	if [ "$n" -eq 3 ] || [ "$n" -eq 11 ] 
	then 
	  continue
	fi 
	
	echo -n "$n "
done

echo

n=0

while [ "$n" -le "$UPPER_LIMIT" ] 
 do 
   n=$(($n+1))

if [ "$n" -gt 2 ] 	
then
 break
fi 

 echo -n "$n " 
done
echo 




 
