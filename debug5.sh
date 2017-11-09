#!/bin/bash 

E_BADARGS=65
E_NOFILE=66

trap 'echo "no param"' EXIT 
if [ -z "$1" ] 
then 
  exit $E_BADARGS
fi
# exit trap is turned off below, before reusing it later 
trap - EXIT 


trap 'echo "File $1: not found"' EXIT 
if [ -f "$1" ] 
then 
  rm $1
  echo "$1 removed"
else 
  exit $E_NOFILE
fi
trap - EXIT 


 

 





