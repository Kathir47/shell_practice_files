#!/bin/bash

# BACKUP AUTOMATE SCRIPT

date=$(date)
backup_dir="/mnt/c/Users/kathi/Desktop/backups"
log_dir="/mnt/c/Users/kathi/Desktop/shell_practice/log_file.log"

mkdir -p $backup_dir

read -p "Enter the path of the folder you want to backup: " source_dir

if [ -d $backup_dir ];

    then

        cp -r $source_dir $backup_dir/backups_$(date +%Y-%m-%d_%H-%M-%S)

            if [ $? -eq 0 ];        
                then
                    echo "Backup is completed successfully"
                    echo "Backup is completed successfully_$(date)" >> $log_dir

                else
                    echo "Backup is not completed"
                    echo "Backup is completed successfully_$(date)" >> $log_dir
                fi

    else
        echo "Backup folder is not found. Please check the path!"
        exit 1
fi



