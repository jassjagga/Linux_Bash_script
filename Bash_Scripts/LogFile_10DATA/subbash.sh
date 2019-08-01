#!/bin/bash

FILE="/home/jass/words.txt"

uname

date

line="$( grep "word" -m $FILE)"
echo "$line"

#head -n $n $FILE

#while read line; do
# reading each line
#echo "$line"
#done < $FILE
