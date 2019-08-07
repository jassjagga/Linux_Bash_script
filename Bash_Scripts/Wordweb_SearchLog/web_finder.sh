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
count=0
LIMIT=10

while [ "$count" -lt "$LIMIT" ]
do
    datestr=`date +%m-%d-%Y_%N` #generate date like this eg[08-01-2019_15435535]means [Month-day-year_nanoseconds]

   #just temporary files to store the word of dict. and other for ip address and all web deatial
   touch "tempvar.txt"
   touch "temp2.txt"
   #this will make the file in format of eg [log_MM-DD-YYYY_Nanoseconds.txt] 
   touch "log_$datestr_$dateNstr.txt"
   #read the file word.txt and take the one word at a time
   grep -m `expr $count + 1` $sstring words.txt | tail -1 >> tempvar.txt

   host www."$( cat tempvar.txt )".com >> temp2.txt

   cat tempvar.txt >> log_$datestr.txt


Found="$( grep -o "found" temp2.txt )"
YES="found"
if [ "$Found" ==  "$YES" ]
then
    echo "NO Such Web Found"  >> log_$datestr.txt
else
   head -n 1 temp2.txt|tail -c 18 >> log_$datestr.txt 
fi
 
sleep 2 #wait for 2 seconds
count=`expr $count + 1`
   rm tempvar.txt
   rm temp2.txt
done #while
echo
exit 0
