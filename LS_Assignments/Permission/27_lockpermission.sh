#!/bin/bash

echo "Before locking"
ls -l
echo "Output"
echo "After locking"
for i in *
	do
		if [ -d $i ]
			then
				chmod 400 $i
			else
				chmod 600 $i
		fi
	done

find . -type d -perm 400
ls -l -d */
find . -type f -perm 600
ls -l ./*.*
