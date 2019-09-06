#!/bin/bash
read -p "Enter the limit: " limit
let a=0
let b=1
for ((i=0; i<=$limit; i++))
	do
		printf "$a"
		res=$(($a+$b))
		a=$b
		b=$res
	done
