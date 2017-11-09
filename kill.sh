#!/bin/bash 

echo "Waiting for 1000 seconds "

sleep 1000 &
jobs
#fg 1

wait 

times 

echo "done"
