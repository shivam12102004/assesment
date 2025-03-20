#!/bin/bash

LOG_FILE="cpu_mem_usage.log"
echo "Monitoring CPU and Memory Usage..." > $LOG_FILE
echo "Timestamp, CPU_Usage(%), Memory_Usage(%)" >> $LOG_FILE

while true
do
    timestamp=$(date '+%Y-%m-%d %H:%M:%S')
    cpu_usage=$(top -bn1 | grep "Cpu(s)" | awk '{print $2 + $4}')
    mem_usage=$(free | awk '/Mem/{printf "%.2f", $3/$2 * 100}')
    echo "$timestamp, $cpu_usage, $mem_usage" >> $LOG_FILE
    sleep 5
done
