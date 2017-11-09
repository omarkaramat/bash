#!/bin/bash

swap()
{ 
	local tmp=${colors[$1]}
	colors[$1]=${colors[$2]}
	colors[$2]=$tmp

return
}

declare -a colors 

colors=(red black blue white brown ) 

size=${#colors[@]}

for (( last = $size -1 ; last > 0 ; last-- )) 
do 
	for (( i = 0 ; i < last ; i++ ))
	do 
		[[ "${colors[$i]}" > "${colors[$((i+1))]}" ]] && swap $1 $((i+1))  	
	done	
done

echo ${colors[@]} 
