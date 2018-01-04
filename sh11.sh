#!/bin/bash
#Program:
#	You input your demobilization date; I calculate how many days befor your demobilize.
#History:
#2018/01/04
PATH=/bin:/sbin:/usr/bin:/usr/sbin:usr/local/bin:/usr/local/sbin:~/bin
export PATH

echo "This program will try to calculate :"
echo "How many days before your demobilization date..."
read -p "Please input your demobilization date (YYYYMMDD ex>20180101): " date2

date_d=$(echo $date2 | grep '[0-9]\{8\}')
if [ "$date_d" = "" ]; then
	echo "You input in a wrong format"
	exit 1
fi

declare -i date_dem=`date --date="$date2" +%s`
declare -i date_now=`date +%s`
declare -i date_total_s=$(($date_dem-$date_now))
declare -i date_d=$(($date_total_s/60/60/24))
if [ "$date_total_s" -lt "0" ]; then
	echo "You had been demobilization before: " $((-1*date_d)) "ago"
else
	declare -i date_h=$(($((date_total_s-$date_d*60*60*24))/60/60))
	echo "You will demobileze after $date_d days and $date_h hour."
fi
