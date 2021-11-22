#!/bin/bash

if [ "$1" == "" ] ; then
    echo "Usage: ./`basename $0` [FILENAME]"
    exit 0
fi

while true; do
    filename=$1
    while read -r line; do
        pid="$line"
        #echo "$pid"
    done < "$filename"

    if ps -p $pid > /dev/null 2>&1; then
        echo "1: It is alive"
    else
        echo "1: It is dead"
        python3 process.py $1
    fi
done
