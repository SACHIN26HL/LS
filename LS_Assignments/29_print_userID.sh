#!/bin/bash

a=$1
b=$2
n=1
cat /etc/passwd > temp.txt
cut -d: -f3 temp.txt > userid.txt
cut -d: -f1,3 temp.txt > username.txt
while read -r line
	do
		if [ $line -gt $a ]
			then
				if [ $line -lt $b ]
					then
						head -n $n username.txt | tail -n +$n
				fi
		fi
		n=$((n+1))
	done < userid.txt
