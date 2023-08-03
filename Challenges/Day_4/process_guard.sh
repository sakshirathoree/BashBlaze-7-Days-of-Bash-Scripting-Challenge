#!/bin/bash

# Check if the service name is provided as a command-line argument
if [ $# -eq 0 ]; then
    echo "Usage: sudo ./$0 <service_name>"
    echo "Example: sudo ./$0 nginx"
    echo "Description: This script monitors the specified service and restarts it if it's not running. Run the script with root permissions"
    exit 1
fi

# Define the service name and recipient email address
SERVICE_NAME="$1"
RECIPIENT_EMAIL="rathoresakshi2908@gmail.com"

# Function to check if the service is running
is_service_running() {
    if systemctl is-active "$SERVICE_NAME" >/dev/null 2>&1; then
        return 0
    else
        return 1
    fi
}

# Function to restart the service
restart_service() {
    systemctl restart "$SERVICE_NAME"
}

# Maximum number of restart attempts
MAX_RESTART_ATTEMPTS=3

# Check if the service is running
if is_service_running; then
    echo "$(date) - $SERVICE_NAME is running"
else
    # Try to restart the service
    echo "$(date) - $SERVICE_NAME is not running, trying to restart..."
    for ((attempt = 1; attempt <= MAX_RESTART_ATTEMPTS; attempt++)); do
        restart_service
        sleep 5 # Adjust the sleep time as needed before rechecking the service status
        if is_service_running; then
            echo "$(date) - $SERVICE_NAME restarted successfully"
            break
        else
            echo "$(date) - $SERVICE_NAME restart attempt $attempt failed"
        fi
    done

    # Send an email if the service could not be restarted after maximum attempts
    if ! is_service_running; then
        MESSAGE="ERROR: $SERVICE_NAME could not be restarted after $MAX_RESTART_ATTEMPTS attempts. Please check the process manually."
        echo "$(date) - $MESSAGE"
        echo -e "Subject: Service Restart Failure\n\n$MESSAGE" | mutt -F /root/.muttrc -s "Service Restart Failure" "$RECIPIENT_EMAIL"
    fi
fi

