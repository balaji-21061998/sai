#!/bin/bash

directory="/home/ec2-user/scripts"

if [ -d "$directory" ]; then
    echo "Directory exists"
else
    echo "Directory does not exist"
fi

