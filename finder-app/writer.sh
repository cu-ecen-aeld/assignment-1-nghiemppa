#!/bin/bash

if [[ -z "$1" ]] || [[ -z "$2" ]]
then
    echo "Invalid parameters"
    exit 1
else
    if [ -f "$1" ]
    then
        echo "File exist and will be updated"
    else
        echo "File not exist and will be created"
        dirName="$(dirname "$1")"
        mkdir -p $dirName
    fi
fi

echo $2 > $1