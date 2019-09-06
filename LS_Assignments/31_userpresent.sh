#!/bin/bash
cat /etc/passwd | cut -d: -f1 > etc.txt
cat etc.txt
user=$1
count=0
while read -r line
	do
		if [ $line = $user ]
			then
				count=$(($count+1))
		fi
	done < etc.txt
	if [ $count -eq 1 ]
		then
			echo "User Present"
		else
			echo "User not Present"
	fi
	rm etc.txt
