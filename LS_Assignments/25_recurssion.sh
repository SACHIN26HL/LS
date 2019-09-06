#!/bin/bash

declare -a input=($@)
i=0
recurse()
{
	if [[ $i -lt ${#input[@]} ]]
		then
			echo $input
			i=$(($i+1))
			input=${input[i]}
			recurse
	fi
}
recurse
