#!/bin/bash
<<COMMENT
read -p "Enter the limit: " n
echo "Enter the numbers: "
let large=0
for((i=0; i<n; i++))
do
	read num
    if [ $num -gt $large ]
    then
		large=$num
	fi
done
echo "Largest number is $large"
COMMENT

#Values will be entered in command line itself

#Iitialising a variable to hold the largest value
let large=0

#Logic
for i in $@
do
	if [ $i -gt $large ]
	then
		large=$i
	fi
done

#Print the output on the screen
echo "Largest number is $large"
