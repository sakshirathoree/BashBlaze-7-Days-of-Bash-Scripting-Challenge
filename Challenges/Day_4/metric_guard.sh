#!/bin/bash

# Function to display CPU usage
get_cpu_usage() {
    echo "$(top -bn1 | grep '%Cpu' | awk '{print "CPU Usage: " $2+$4 "%"}')"
}

# Function to display memory usage
get_memory_usage() {
    echo "$(free | grep 'Mem:' | awk '{print "Memory Usage: " $3/$2 * 100 "%"}')"
}

# Function to display disk space usage
get_disk_usage() {
    echo "$(df -h | grep '/dev/root' | awk '{print "Disk Space Usage: " $5}')"
}

# Function to check if a service is running
is_service_running() {
    systemctl is-active "$1" >/dev/null 2>&1
}

# Function to start a service
start_service() {
    systemctl start "$1"
}

# Function to display the main menu
show_main_menu() {
    echo "---- Monitoring Metrics Script ----"
    echo "1. View System Metrics"
    echo "2. Monitor a Specific Service"
    echo "3. Exit"
    echo -n "Enter your choice: "
}

# Main function to handle user choices
main() {
    while true; do
        show_main_menu
        read main_choice
        case $main_choice in
            1)
                echo "---- System Metrics ----"
                get_cpu_usage
                get_memory_usage
                get_disk_usage
                echo "Press Enter to continue..."
                read -r
                ;;
            2)
                echo "---- Monitor a Specific Service ----"
                echo -n "Enter the name of the service to monitor: "
                read service_name
                if is_service_running "$service_name"; then
                    echo "---- $service_name Status ----"
                    echo "$service_name is running."
                else
                    echo "---- $service_name Status ----"
                    echo "$service_name is not running."
                    echo -n "Do you want to start $service_name? (Y/N): "
                    read choice
                    if [[ $choice == [Yy] ]]; then
                        start_service "$service_name"
                        echo "$service_name started successfully."
                    fi
                fi
                echo "Press Enter to continue..."
                read -r
                ;;
            3)
                echo "Exiting..."
                exit 0
                ;;
            *)
                echo "Error: Invalid option. Please choose a valid option (1, 2, or 3)."
                ;;
        esac
    done
}

# Call the main function
main

