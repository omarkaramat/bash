#!/bin/bash

colors1="red-brown-orange"
colors2="red+brown+orange"

echo "IFS=-"
IFS=-
 # info field seperators
 # replaces seperator with space

echo "Line number is $LINENO"
echo $colors1
echo $colors2


echo $PWD
echo $OSTYPE

cat wood.txt | sort
echo ${PIPESTATUS[*]}

