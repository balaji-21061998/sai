#!/bin/bash

# Set the path to the file
file_path="/home/ec2-user/scripts/file1.txt"

# Check if the file exists
if [ ! -f "$file_path" ]; then
    echo "File does not exist: $file_path"
    exit 1
fi

# Count the number of lines in the file
num_lines=$(wc -l < "$file_path")

# Calculate the starting line to delete
start_line=$((num_lines - 2))

# Delete the last 3 lines from the file
sed -i "${start_line},\$d" "$file_path"

echo "Last 3 lines deleted from the file: $file_path"

