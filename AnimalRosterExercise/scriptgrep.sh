#!/bin/sh

#assigns the named arguments to their corresponding variables
while getopts ":f:c:" opt; do
  case $opt in
    f) file="$OPTARG"
    ;;
    c) cat="$OPTARG"
    ;;
    \?) echo "Invalid option -$OPTARG" >&2
    ;;
  esac
done


#pipe goes like this
#cat command output goes to >> grep command output goes to >> while command
cat $file | grep -w "$cat" | while read -r line; # basically iterates through each line
do
    IFS="," # set the IFS to comma to segregate each wordd
    counter=0
    for word in $line #iterates through each word
    do
        if [ $counter -eq 1 ] #if counter is 1, the word is a type(example: biped, cartoon, etc.)
        then
            type=$word #assign the type to the current word
        fi
        counter=` expr $counter + 1 ` #increment the counter
    done
    counter=` expr $counter - 2` #subtract by two because first 2 words of a line is category and type
    echo "$type count: $counter" #prints the type and the counter
done
