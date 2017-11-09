#!/bin/bash

for ((n=1;n<4;n++)); 
do 

echo "----------------------------------------" 
echo "Iteration number: $n"
bash /home/sysadmin/logGenerator.sh;
sleep 30;
done
