#!/bin/bash

echo $PATH > path.txt
cat path.txt
IFS=':' read -r -a array <<< "$PATH"
for (( i=0 ; i<${#array[@]} ; i++ ))
	do
		echo "${array[$i]}"
	done
for (( i=0 ; i<${#array[@]} ; i++ ))
	do
		cd ${array[$i]}
		echo "number of executable files in ${array[$i]}"
		find . -perm /u=x,g=x,o=x | wc -l
	done
