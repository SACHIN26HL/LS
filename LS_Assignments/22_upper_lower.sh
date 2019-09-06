#!/bin/bash

read -p "Enter your choice
1.UPPER 
2.lower 
" ch

case $ch in
1) echo $1 | tr '[:lower:]' '[:upper:]'
   ;;
2) echo $1 | tr '[:upper:]' '[:lower:]'
   ;;
*) echo "Invalid"
   ;;
esac
