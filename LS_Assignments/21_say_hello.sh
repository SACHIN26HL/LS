#!/bin/bash
time=$(date "+%k")

if ((time < 12))
then
	echo "Good Morning Sachin"
elif ((time < 18))
then
	echo "Good Afternoon Sachin"
else
	echo "Good Evening Sachin"
fi
