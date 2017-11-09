#!/bin/bash 

trap 'echo "Listening variables: m=$m n=$n o=$o"' EXIT

m=1
n=2
o=3
 
let "sum = $m+$n+$o"

echo "the sum is $sum"

echo "the next line is a trap when exit happens"




