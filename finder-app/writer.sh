#!/bin/bash

if [ $# -ne 2 ] 
then
echo "please provide the directory path and the search text .
the number of arguments provided is $? but expected 2"
exit 1
fi

writefile=$1
writestr=$2
dir_path=$(dirname "$writefile")
if [ -e "$writefile" ] 
then 
echo $writestr > $writefile
exit 0
fi
if [ -d "$dir_path" ] 
then 
touch $writefile
echo $writestr > $writefile
exit 0
fi
if [ ! -d "$dir_path" ] 
then 
mkdir -p $dir_path
touch $writefile
echo $writestr > $writefile
exit 0
else exit 1
fi