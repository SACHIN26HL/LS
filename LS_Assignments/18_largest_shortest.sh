#!/bin/bash

cat /etc/passwd | cut -d: -f1 > etc.txt
cat etc.txt

usr=0
while read -r line
	do
		if [ ${#line} -gt ${#usr} ]
			then 
				usr=$line
				lar=${#line}
				larn=$line
		fi
	done < etc.txt
	echo "largest username & length : $larn & $lar"
while read -r line
    do
       if [ ${#line} -lt ${#larn} ]
          then
               larn=$line
               sht=${#line}
               shtn=$line
       fi
    done < etc.txt
    echo "shortest username & length : $shtn & $sht"

