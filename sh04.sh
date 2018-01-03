#!/bin/bash
#Program:
#	User input 2 integer numbers; program will cross these two numbers.
#History:
#2018/01/02
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH
echo "You should entre two integer and this program will cross them"
read -p "The first number: " first
read -p "The second number: " second

total=$(($first*$second))
echo "\nThe result of $first * $second is ==> $total "
