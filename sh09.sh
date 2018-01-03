#!bin/bash
#Program:
#	Check $1 is equal to "Hello"
#History:
#2018/01/03

PATH=bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

if [ "$1" = "Hello" ]; then
	echo "Hello!"
elif [ "$1" = "" ]; then
	echo "You must input a parameter"
else
	echo "The only parameter is 'hello'"
fi
