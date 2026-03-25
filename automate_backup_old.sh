#!/bin/bash

# BACKUP AUTOMATE SCRIPT


date=$(date)
backup_dir="/mnt/c/Users/kathi/Desktop/backups"
log_file="/mnt/c/Users/kathi/Desktop/shell_practice/backup.log"

mkdir -p $backup_dir

echo "Backup Process Started"
echo "Date : $date"

read -p "Enter the full path of folder you want to backup: : " source_dir

if [ -d $source_dir ];

then 
    echo "Folder found, Backup started..."


    cp -r $source_dir $backup_dir/backup_$(date +%Y-%m-%d_%H-%M-%S)

    # check if backup is successull

    if [ $? -eq 0 ];

    then
        echo "Backup is completed successfully"
        echo "Backup completed: $(date)" >> $log_file

    else
        echo "Backup failed"
        echo "Backup failed_$(date)" >> $log_file
    fi

else 
    echo "Folder not found! Please check the Path!"
    exit 1
fi