#!/bin/bash
 
n=$1
rev=0

#Logic for Reversing the entered number
while [ $n -gt 0 ]
do
	x=`expr $n % 10`
    rev=`expr $rev \* 10 + $x`
    n=`expr $n / 10`
done

#Cases to perform operations based on the operator
case $2 in
	+)
		while [ $rev -gt 0 ]
		do
			x=`expr $rev % 10`
			res=`expr $res + $x`
			rev=`expr $rev / 10`
		done
		echo "Result is $res "
		;;
	-) 
        res=`expr $rev % 10`
        rev=`expr $rev / 10`
        while [ $rev -gt 0 ]
        do
        	x=`expr $rev % 10`
        	res=`expr $res - $x`
        	rev=`expr $rev / 10`
        done
		echo "Result is $res "
		;;
	/)  
	     res=`expr $rev % 10`
         rev=`expr $rev / 10`
         while [ $rev -gt 0 ]
         do
             x=`expr $rev % 10`
             res=`expr $res / $x`
             rev=`expr $rev / 10`
         done
         echo "Result is $res "
		;;
	%)
		 res=`expr $rev % 10`
         rev=`expr $rev / 10`
         while [ $rev -gt 0 ]
         do
            x=`expr $rev % 10`
            res=`expr $res % $x`
            rev=`expr $rev / 10`
         done
         echo "Result is $res "
		;;

	\*)
		res=1
		while [ $rev -gt 0 ]
        do
             x=`expr $rev % 10`
             res=`expr $res \* $x`
             rev=`expr $rev / 10`
        done
		echo "Result is $res "
		;;
	*) echo " Invalid "
esac

