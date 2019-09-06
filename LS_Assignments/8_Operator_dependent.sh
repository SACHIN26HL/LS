#!/bin/bash

#Storing the string content in a variable
s=$1

#Logic to store the values in an array
i=0
while [ $i -lt ${#s} ]
do
	y[$i]=${s:$i:1}
	let i=i+1
done
j=${#s}

#logic to initialise the variables and perform the operation
res=${y[0]}
n=$((j-1))
opr=${y[$n]}
for ((i=1; i<$n; i++))
do
   res=$(($res $opr ${y[$i]}))
done
echo "$res"
