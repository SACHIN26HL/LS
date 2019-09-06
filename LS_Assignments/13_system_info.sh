#!/bin/bash

echo "Please select the option
1.Currently logged user
2.Your shell directory
3.Home Directory
4.OS name and version
5.Current working directory
6.Number of users logged in 
7.Show all available shells in the system
8.Hard Disk information
9.CPU information
10.Memory information
11.File System information
12. Currently running process "

read ch 

case $ch in
	1) echo "Currently logged user: "
	   whoami
	   ;;
	2) echo "Your shell directory: $BASH_SOURCE "
	   ;;
	3) echo "Home directory: $HOME"
	   ;;
	4) echo "OS name and version: "
	   uname -a
	   ;;
	5) echo "Current working directory: $PWD"
	   ;;
	6) echo "Number of users logged in: "
	   finger
	   ;;
	7) echo "Show all available shells in the system: "
	   cat /etc/shells
	   ;;
	8) echo "Hard Disk information: "
	   df -k
	   ;;
	9) echo "CPU information: "
	   lscpu
	   ;;
	10) echo "Memory information: "
	    lsmem
	    ;;
	11) echo "File system information: "
		df -Th
		;;
	12) echo "Currently running process: "
		ps
		;;
	*) echo "Invalid"
		;;
esac
