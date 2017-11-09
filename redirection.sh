#!/bin/bash

# STDIN - keyboard input
# STDOUT - output to screen 
# STDERR -  output errors to screen 

file=wood.txt
echo "this line is sent to $file" 1>$file

# incorrectMethodSomething 2>>wood.txt
# something >> wood1.txt 2>&1 

cat wood.txt


echo 12345 > fd.txt
exec 3<>fd.txt
read -n 2 <&3
echo -n . >&3
exec 3>&-
cat fd.txt

