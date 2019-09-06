#!/bin/bash

#Prompt the user to enter the limit
read -p "Enter the limit: " n

#Initialising a variable to print output
num=1

#Logic
for ((i=1; i<=n; i++))
do
	for ((j=1; j<=i; j++))
	do
		printf "$num "
		let num=num+1
	done
	printf "\n"
done
