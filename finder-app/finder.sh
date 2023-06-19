#!/bin/sh

if [ $# -ne 2 ] 
then
echo "please provide the directory path and the search text .
the number of arguments provided is $? but expected 2"
exit 1
fi
filesdir=$1
searchstr=$2
if [ ! -d "$filesdir" ] 
then 
echo "directory doesn't exist"
exit 1
fi
echo "The number of files are $(grep  -rl $searchstr $filesdir | wc -l) and the number of matching lines are $(grep  -r "$searchstr" $filesdir | wc -l)"

exit 0