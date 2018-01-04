#!/bin/bash
#Program:
#	Use id, finger command to check system account's information
#History:
#2018/01/04
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

user=$(cut -d ':' -f1 /etc/password)
for username in user
do
	id $username
	finger $username
done
