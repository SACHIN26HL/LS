#!/bin/bash

#Numbers to be added are given the command line itself 

#Logic to add the numbers
sum=$(bc <<< $1+$2)

#Print the output on the screen
echo "Sum of $1 and $2 is $sum"
