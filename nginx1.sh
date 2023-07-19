#!/bin/bash

# Check if Nginx service is running
if systemctl is-active --quiet nginx; then
    echo "Nginx service is already running."
else
    # Start Nginx service
    systemctl start nginx

    # Check if Nginx service started successfully
    if systemctl is-active --quiet nginx; then
        echo "Nginx service started successfully."
    else
        echo "Failed to start Nginx service."
    fi
fi

