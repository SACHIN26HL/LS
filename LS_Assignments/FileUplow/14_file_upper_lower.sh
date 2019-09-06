#!/bin/bash

for i in $(ls *.sh)
	do
		mv -v "$i" "`echo $i | tr [:upper:] [:lower:]`"
	done

for i in */
	do
		mv -v "$i" "`echo $i | tr [:lower:] [:upper:]`"
	done

