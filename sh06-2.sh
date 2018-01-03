#!/bin/bash
#Program:
#	This program show the user's choice
#History:
#2018/01/03
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

read -p "Please input (Y/N): " choice

if [ "$choice" == "Y" ] || [ "$choice" == "y" ]; then
	echo "OK, Continue"
	exit 0
fi
if [ "$choice" == "N" ] || [ "$choice" == "N" ]; then
	echo "Oh, Interrupt!"
	exit 0
fi
echo "I don't know your choice" && exit 0
