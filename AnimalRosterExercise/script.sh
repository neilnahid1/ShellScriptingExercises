#!/bin/sh
CONTENT=`cat animal_roster.txt` #fetch the content from the file.
IFS=$'\n' #input field separator.
for line in $CONTENT;#iterates through each line
do
    IFS="," #change the IFS to comma within this loop
    counter=0
    for word in $line; #iterate through each word of a line separated by comma
    do
        if [ $counter -eq 1 ]; #get the type on the second index word of the line
        then
            type="$word"
        fi
        counter=` expr $counter + 1 `
    done
    counter=` expr $counter - 2 ` #subtract by two since the first 2 words are for category and types
    echo "$type count: $counter"
done