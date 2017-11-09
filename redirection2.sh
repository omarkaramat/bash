#!/bin/bash

E_FILE_ACESS=70
E_BADARGS=71 
if [ ! -r "$1" ] 
then 
  echo "Can't read from input file!" 
  echo "Usage: $0 input-file output-file"
  exit $E_FILE_ACCESS
fi 

if [ -z "$2" ] 
then 
  echo "Specify output file!"
  echo "Usage: $0 input-file output-file"
  exit $E_BADARGS
fi 

# apply 4 to file descriptor
exec 4<&0
# read from file 1 parameter
exec < $1

# link file descriptor 7 to file parameter 2
exec 7>&1

#read from file 2
exec > $2

#make everthing uppercase
tr a-z A-Z

# restore standard output and close file descriptors
exec 1>&7 7>&-
exec 0<&4 4<&-

# ysadmin@localhost:~$ ./redirection2.sh wood.txt woody.txt && cat woody.txt
# THIS LINE IS SENT TO WOOD.TXT

