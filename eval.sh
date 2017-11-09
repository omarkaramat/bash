#!/bin/bash

#paramater needs adding 

if [ ! -z $1 ] 
then 
	process="ps -e | grep $1" 
fi 

eval $process

set +o history 
# commands recorded

#set -o history 
# commands not recorded

echo "\$1 = $1"
echo "\$2 = $2"

set `echo "three four"`

echo "after setting parameters"

echo "\$1 = $1"
echo "\$2 = $2"
