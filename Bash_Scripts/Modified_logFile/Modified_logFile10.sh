#!/bin/bash

#check if a search has been specified
numargs=$#
if [ $numargs -lt 1 ]
then
     echo #new line separator
     echo "Search string not specified"
     exit
fi

#generate the log file 
sstring=$1 #search string
count=0 #counter variable
LIMIT=10

while [ "$count" -lt "$LIMIT" ]
do
datestr=`date +%s` #generate date string for file
touch "log_$datestr.txt"
uname >> log_$datestr.txt
date >> log_$datestr.txt
grep -m `expr $count + 1` $sstring words.txt | tail -1 >> log_$datestr.txt
sleep 10 #wait for 10 seconds
count=`expr $count + 1`
done #while

echo
exit 0

