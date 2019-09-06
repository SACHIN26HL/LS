#!/bin/bash

df -H
echo "Filesystem with less than $1% used space"
df -H | grep -vE '^Filesystem' | awk '{ print $5 " " $1 }' | while read output
do
	usep=$( echo  $output | awk '{print $1}' | cut -d% -f1 )
	avail=$((100- $usep))
	partition=$( echo $output | awk '{print $2}' )
	if [ $usep -le $1 ] 
		then
			echo  "$partition ($usep%) available=$avail%"
	fi
done
