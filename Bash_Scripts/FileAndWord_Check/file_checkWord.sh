#!/bin/bash

#if arguments are not gave script will exit
argu=$#
if [ "$#" -lt 2 ]
then 
echo "Please Provide arguments"
exit
fi

RUSER=0
#To check Root or Not 
if [ "$UID" -ne "$RUSER" ]
then
echo "Nice! user is not ROOT"
else
echo "USER Must Not Be ROOT!!!"
echo "Exit!!!!!"
exit
fi

FILE=$1
WORD=$2
NOWORD=0
#To check if file exit or not 
if [ -e "$FILE" ]
then
echo "File exist"
else
echo "BUT File not  exist"
exit
fi
#grep command used with wordcount to count the word 
WORD_CONT=$(grep -i -o $WORD $FILE | wc -l)

#To check if word found or not 
if [ "$WORD_CONT" -ne "$NOWORD" ]
then
echo "WORD FOUND "
echo "The word "$WORD" appeard ="
echo "$WORD_CONT"
else
echo "BUT NO Such WORD FOUND"
exit
fi 
