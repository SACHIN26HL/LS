#!/bin/bash

df -H
a=$1
df -H | grep -vE '^Filesystem' | awk '{ print $0 }' > filesystem.txt
count=0
while read output
	do
		partition=$(echo $output | awk '{ print $1 }')
        file=$(echo $output | awk '{ print $NF }' )
        if [ $a = $partition ]
        	then
        	    echo "$a is mounted on $file "
        	    count=1 
        fi
    done < filesystem.txt
		if [ 0 == $count ]
			then
				echo "Not mounted on anything"
		fi
