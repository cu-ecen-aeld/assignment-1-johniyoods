#!/bin/bash

writefile=$1
writestr=$2

if [ -z "$writefile" -o -z "$writestr" ];then
	echo "input argument missing.."
	exit 1;
fi
dir_name=$(dirname $writefile)
if [ ! -e $dir_name ]; then
	mkdir -p $dir_name
fi
touch $writefile
echo $writestr > $writefile
