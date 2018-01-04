#!/bin/bash
#Program:
#	This script only accepts the flowing parameter : one, two or three.
#History:
#2018/01/04
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

echo "This program will print your selection"
case $1 in
 "one")
	echo "Your choice is one"
	;;
 "two")
	echo "Your choice is two"
	;;
 "three")
	echo "Your choice is three"
	;;
 *)
	echo "Usage $0 {one|two|three}"
	;;
esac
