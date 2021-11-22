#!/bin/bash

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
        python3 python3.py $1
    fi
done
