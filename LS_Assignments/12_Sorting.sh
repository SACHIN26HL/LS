#!/bin/bash

#Prompt the user to enter the array size
read -p "Enter the size of the array: " n
declare -a array

#Prompt the user to enter the values
echo  "Enter $n values: "

#logic to read the values into the array
for ((i=0; i<n; i++))
do
	read array[$i]
done

#logic for sorting in ascending order
for ((i=0; i<n; i++))
do
	for ((k=0; k<n; k++))
	do
		if [ ${array[$i]} -lt ${array[$k]} ]
		then
			t=${array[$i]}
			array[$i]=${array[$k]}
			array[$k]=$t
		fi
	done
done

#Print the output
printf "Ascending order is: "
for ((i=0; i<n; i++))
do
	printf "${array[$i]}"
done

#Logic for sorting in descending order
for ((i=0; i<n; i++))
do
  for ((k=0; k<n; k++))
     do
       if [ ${array[$i]} -gt ${array[$k]} ]
       then
           t=${array[$i]}
           array[$i]=${array[$k]}
           array[$k]=$t
       fi
     done
done

#Print the output
printf "\nDescending order is: "
for ((i=0; i<n; i++))
do
	printf "${array[$i]}"
done
echo " "


