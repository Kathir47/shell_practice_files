#!/bin/bash


threshold=70
report="/mnt/c/Users/kathi/Desktop/shell_practice/disk_alert.log"


echo "======================="
echo "Disk Space Report"
echo "$(date)"
echo "======================="


df -h | grep -v "tmpfs\|none\|rootfs" | tail -n +2 | while read line; do

    usage=$(echo $line | awk '{print $5}' | tr -d "%")
    drive=$(echo $line | awk '{print $1}')


    if [ $usage -ge $threshold ]; then

        echo "Alert! $drive is at $usage% - critically high"
        echo "Alert: $drive at $usage% on $(date)" >> $report

    else

        echo "$drive is at $usage% - OK"

    fi
done    