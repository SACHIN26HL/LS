#!/bin/bash

#Inputs are given in the command line itself

#Cases are used to identify the the operator and  perform the operations 
case $2 in
	+)
		res=`expr "$1" + "$3"`
		echo "Result is $res "
		;;
	-)
		res=`expr "$1" - "$3"`
		echo "Result is $res "
		;;
	/)
		res=`expr "$1" / "$3"`
		echo "Result is $res "
		;;
	%)
		res=`expr "$1" % "$3"`
		echo "Result is $res "
		;;
	\*)
		res=`expr "$1" \* "$3"`
		echo "Result is $res "
		;;
	*) echo " Invalid "
esac

