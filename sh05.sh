#!/bin/bash
#Program:
#	User input a filename, program will check the follwing:
#	1.)exist? 2.)file?directory? 3.)file permission
#History:
#2018/01/02
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

echo "Please input a filename, I will check the file type and permission\n\n"
read -p "Input a filename: " filename
#judge whether user have input the filename
test -z $filename && "You must input a filename" && exit 0
#judge whether the file is exist?
test ! -e $filename && "The file $filename didn't exist" && exit 0
#judge the file type
test -f $filename && filetype="file"
test -d $filename && filetype="directory"
test -r $filename && permission="readable"
test -w $filename && permission="$permission writable"
test -x $filename && permission="$permission executable"

echo "The file $filename is a $filetype"
echo "The permission is $permission"
