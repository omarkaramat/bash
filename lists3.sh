#!/bin/bash

a=1
b=2
c=3

[ "$a" -gt "$b" ] || [ "$c" -gt "$b" ] || ( (( c += a + b)) ; echo "$c" ) 

