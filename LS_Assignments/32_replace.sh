#!/bin/bash
ls -l > longlist.txt
myfile=$1
totallines=`cat $myfile | wc -l`
echo totoal lines=$totallines
tenperc=$(($(($totallines*20))/100))
echo 20 percent of lines = $tenperc
pattern="<--hi-->"
for (( i=0 ; i<$tenperc ; i++ ))
	do
		random=$(($RANDOM%$totallines))
		if [ " `sed -n "${random}"p $myfile` " = $pattern ]
			then
				random=`shuf -i 1-$totallines n 1`
				sed -i ''$random's/.*/<--hi-->/' $myfile
			else
				sed -i ''$random's/.*/<--hi-->/' $myfile
		fi
	done
	cat longlist.txt
