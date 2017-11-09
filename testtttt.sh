#!/bin/bash 

# This is a read only variable 
declare -r var_r=5
echo "\$var_r = $var_r"

declare -i var_i=10
echo "\$var_i = $var_i"
var_i=blue 
echo "\$var_i = $var_i"

echo "\$var_i is in an integer - so goes to 0 values when assigning a string"
