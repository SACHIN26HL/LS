#!/bin/bash

#Prompt the user to enter the limit
read -p "Enter the limit: " n

#logic to print the output
for ((i=1; i<=n; i++))
do
	for ((j=1; j<=i; j++))
	do
		printf "$j "
	done
# \n is provided for the output to print in the next line
	printf "\n"
done
