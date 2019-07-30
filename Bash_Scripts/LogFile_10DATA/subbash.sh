#!/bin/bash

FILE="/home/jass/words.txt"

echo "Device Name ="
uname
echo "Date: "
date

while read line; do
# reading each line
echo "$line"
done < $FILE
