#!/bin/bash 

colours="red white blue"

echo "I'm about to return colours in the \$colour variable:"
for col in $colours
do 
	echo $col
done

let "y=(10/2)"
echo $y

let calcValue=10/2;

num=`echo $calcValue`;
echo $num;

var=OmarKARAmat

echo ${var,}
echo ${var,,}

num33=11;
if [ "$num33" -lt 10 ] 

# !=
# == 
# -gt 

then : 
else 
	echo "$num33 was returned"
fi 

touch /home/sysadmin/wood.txt
ls /home/sysadmin/wood.txt
echo "something on line 1" > /home/sysadmin/wood.txt
echo "something on line 2" >> /home/sysadmin/wood.txt
cat /home/sysadmin/wood.txt
echo "clearing file content";
: > /home/sysadmin/wood.txt
cat /home/sysadmin/wood.txt


omarVar=10
echo "excellent evaluation on one line"
echo $(( var2 = $omarVar<20?1:0))


echo \"{test1,test2,test3}\"

echo {0..9}


var=1
if [ "$var" -gt 0 ] || [ "$var" -eq 10 ] 
then 
	echo "One or both conditions are true!"
else 
	echo "Both conditions are false" 
fi 

let var=5/4

echo $var

someWord=tEsT

echo ${someWord^^}

# clears variable
unset var

var1=4

(( var2=var1<10?1:0)) 

echo $var2 # var1 in () didn't need $

####

echo "What is your name?"
read variable2
echo "Hi $variable2"


for var in 1 2 3 
do 
    echo "Value of \$var is \"\n\"$var"
done


var="kjkjkj k jj      skjskjsk s   kj "

echo $var
echo "$var"

aavar= 
let "aavar += 10"
echo $aavar

hi=$(ls -la)
echo "$hi"

clear;

num=1100
let "num -= 10"
	# num = num - 10
echo "$num"

var=${num/10/B}
echo $var




