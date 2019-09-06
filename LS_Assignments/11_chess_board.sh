#!/bin/bash

#initialising the size of the chess board
n=8

#logic
for ((i=1; i<=n; i++))
do
	for((j=1; j<=n; j++))
	do
	    num=$(((i+j)%2))
		if [ $num == 0 ]
		then
			#printf "0"
			#white
			echo -e -n "\e[47m" " " 
		else
			#printf "1"
			#black
			echo -e -n "\e[40m" " "
		fi
	done
	#printf "\n"
	#restoring colour
	printf  "\e[0m\n" " "
done

