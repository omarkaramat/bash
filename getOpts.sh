#!/bin/bash

while getops :dm options 
do 
  case $options in 
    d) d_option=1
    ;;
    m) m_option=1
    ;;
    *) echo "Usage: -dm"
   esac
done

day=`date | awk '{print $1}'`

if [[ ! -z $d_option ]] 
then 
  echo "Date is: $day"
fi 

 
month=`date | awk '{print $3}'`

if [[ ! -z $d_option ]] 
then 
  echo "Month is: $day"
fi 

shift $(($OPTIND - 1))


sleep 15 &
jobs
