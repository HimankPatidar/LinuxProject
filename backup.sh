#!/bin/bash

# Define the backup directory
backupDir="/home/ubuntu/backup"

# Create a timestamp
timestamp=$(date +%Y%m%d%H%M%S)

# Create a backup file with a unique name
backupFile="$backupDir/backup-$timestamp.txt"

# Check if the backup directory exists, create it if it doesn't
mkdir -p "$backupDir"

# Append data to the backup file
cat - >> "$backupFile"

if [ $? -eq 0 ]; then
    echo "Data submitted and backed up successfully!" >> /home/ubuntu/backup.log
else
    echo "Backup failed." >> /home/ubuntu/backup.log
fi
