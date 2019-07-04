#!/bin/bash
#assign the arguments to their corresponding variables
while getopts "a:b:o:" opt; do
  case $opt in
    a) operand1="$OPTARG"
    ;;
    b) operand2="$OPTARG"
    ;;
    o) operator="$OPTARG"
    ;;
    \?) echo "Invalid option -$OPTARG" >&2
    ;;
  esac
done
#code goes here

if [ "$operator" =  "*" ]; then
echo ` expr $operand1 \* $operand2 `
fi

if [ "$operator" =  "+" ]; then
echo ` expr $operand1 + $operand2 `
fi

if [ "$operator" =  "-" ]; then
echo ` expr $operand1 - $operand2 `
fi

if [ "$operator" =  "/" ]; then
echo ` expr $operand1 / $operand2 `
fi

