#!/bin/bash

#Declaring the array variable 
declare -a array=($@)

#Logic to find the string length
for ((i=0; i<$#; i++))
do
	echo "Length of ${array[$i]} is ${#array[$i]}"
done
