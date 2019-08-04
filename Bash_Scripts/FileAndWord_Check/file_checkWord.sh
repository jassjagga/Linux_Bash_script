FILE=$1
WORD=$2
NOWORD=0

if [ -e "$FILE" ]
then
echo "File exist"
else
echo "File is not exist"
fi
#grep command used with wordcount 
WORD_CONT=$(grep -i -o $WORD $FILE | wc -l)

if [ "$WORD_CONT" -ne "$NOWORD" ]
then
echo "WORD FOUND "
echo "The word "$WORD" appeard ="
echo "$WORD_CONT"
else
echo "NO WORD FOUND"
fi 
