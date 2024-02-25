#!/bin/bash

if [ -d "$1" ]
then
    if [ -z "$2" ]
    then
        echo "Invalid search string"
        exit 1
    fi
else
    echo "Invalid search directory"
    exit 1
fi


numFile=$(ls $1 | wc -l)
numMatch=$(grep -r $2 $1 | wc -l)

echo "The number of files are $numFile and the number of matching lines are $numMatch"