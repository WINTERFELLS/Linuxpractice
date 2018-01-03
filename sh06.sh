#!/bin/bash
#Program:
#	This program show the user's choice
#History:
#2018/01/02
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

read -p "Please input (Y/N):" choice
[ "$choice" = "Y" -o "$choice" = "y" ] && echo "OK, Continue" || exit 0
[ "$choice" = "N" -o "$choice" = "n" ] && echo "Interrupt" || exit 0
echo "I don't know your choice" && exit 0
