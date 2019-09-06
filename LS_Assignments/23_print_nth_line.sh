#!/bin/bash

cat nth.txt

echo " Entered line is "

cat nth.txt | sed -n $1p
echo	
