#!/bin/bash
#Program:
#	Program shows the effect of shift function.
#History:
#2018/01/03

PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

echo "The script name is ==> $0"
echo "Total parameter number is ==> $#"
[ "$#" -lt 2 ] && echo "The number of parameter is less tan 2. Stop here" && exit 0
shift
echo "Total parameter number is ==> $#"
echo "Your whole parameter is ==> '$@'"
shift
echo "Total parameter number is ==> $#"
echo "Your whole parameter is ==> '$@'"
echo "The 1st parameter ==> $1"
echo "The 2nd parameter ==> $2"
