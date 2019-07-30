#!/bin/bash

SUB="/home/jass/subbash.sh"
while true; do

    today="$( date +"%s" )"
    number=0
    fname=$today.txt
    printf -v fname -- 'log.%s-%02d.txt' "$today" "$(( ++number ))"
     $SUB  >> $fname
    sleep 10
done
