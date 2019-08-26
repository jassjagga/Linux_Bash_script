#!/bin/bash


FILE=$1 #file name which we want to open
if [ -e "$FILE" ]
then
echo "file exit "
else
echo "file not exit"
exit
fi

