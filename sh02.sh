#!/bin/bash
#Program:
#	User inputs his first name and last name.
#	This program can show his full name.
#History:
#2018/01/02 dpf firts release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

read -p "Please input your first name: " firstname
read -p "Please input your last name: " lastname
echo "\nYour full name is: $firstname $lastname"
