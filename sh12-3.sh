#!/bin/bash
#Program:
#	Use function to repeat information.
#History:
#2018/01/04

PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

function printit(){
	echo  "Your choice is $1 "
}

echo "This program will show your selection"
case $1 in
 "one")
	printit 1
	;;
 "two") 
	printit 2
	;;

 "three")
	printit 3
	;;

 *)
	echo "Usage $0 {one|two|three}"
esac
