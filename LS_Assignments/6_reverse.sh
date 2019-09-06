 #!/bin/bash

#Initialising the variables 
rev=0
n=$1
num=$1

#logic to reverse the number
while [ $n != 0 ]
    do
        rem=`expr $n % 10`
         rev=`expr $rev \* 10 + $rem`
         n=`expr $n / 10`
    done

#Logic to print the output only if the input is more that 
if [ $num -gt 9 ]
then
	echo "Reverse of $num is $rev"
else
	echo "Unable to perform reversal"
fi

