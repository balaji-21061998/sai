#!/bin/bash

# Set the source directory you want to backup
source_directory="/home/ec2-user/scripts"

# Set the destination directory where you want to store the backup
backup_directory="/home/ec2-user/scripts/balu"

# Create a timestamp for the backup file
timestamp=$(date+"%2023%6%18%0%59%59")

# Create the backup filename
backup_filename="backup_$timestamp.tar.gz"

# Create the backup
tar -czf "$backup_directory/$backup_filename" "$source_directory"

if [ $? -eq 0 ]; then
    echo "Backup created successfully: $backup_filename"
else
    echo "Backup creation failed."
fi

