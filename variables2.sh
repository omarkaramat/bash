#!/bin/bash

ROOT_UID=0

echo -n "YOU ARE: "

if ["$UID" -eq "$ROOT_UID" ]
then 	
	echo "root. YOUR \$UID = $UID"
else
	echo "user. YOUR \$UID = $UID"
fi 
