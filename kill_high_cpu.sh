#!/bin/bash

while true
do
    ps -eo pid,%cpu --sort=-%cpu | awk '$2 > 80 {print $1}' | while read pid
do
        kill -9 $pid
    done
    sleep 5
done
