#!bin/bash
#Program:
#	Using netstat and grep to detect www, ssh, ftp and mail service.
#History:
#2018/01/03

PATH=bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

echo "Now, I will detect your linux server's services!"
echo "The www, ssh, ftp, and mail will be detected!\n"

testing=$(netstat -tuln | grep ":80 ")
if [ "$testing" != "" ]; then
	echo "www service is running in your system"
fi
testing=$(netstat -tuln | grep ":22 ")
if [ "$testing" != "" ]; then
	echo "ssh service is running in your system"
fi
testing=$(netstat -tuln | grep ":21 ")
if [ "$testing" != "" ]; then
	echo "ftp service is running in your system"
fi
testing=$(netstat -tuln | grep ":25 ")
if [ "$testing" != ""]; then
	echo "mail service is running in your system"
fi
