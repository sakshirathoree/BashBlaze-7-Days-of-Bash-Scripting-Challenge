#!/bin/bash

# Function to display usage information
display_usage() {
    echo "Usage: user_management.sh [options]"
    echo "Options:"
    echo "  -c, --create  : Create a new user account"
    echo "  -d, --delete  : Delete an existing user account"
    echo "  -r, --reset   : Reset the password of an existing user account"
    echo "  -l, --list    : List all user accounts"
    echo "  -h, --help    : Display this help message"
}

# Function to check if a username exists
is_username_exist() {
    local username="$1"
    id "$username" &>/dev/null
}

# Function to create a new user account
create_user_account() {
    read -p "Enter the new username: " new_username

    if is_username_exist "$new_username"; then
        echo "Username already exists. Please choose a different username."
        exit 1
    fi

    read -sp "Enter the password: " new_password
    echo

    sudo useradd -m "$new_username"
    echo "$new_username:$new_password" | sudo chpasswd
    echo "New user account '$new_username' created successfully."
}

# Function to delete an existing user account
delete_user_account() {
    read -p "Enter the username to be deleted: " del_username

    if ! is_username_exist "$del_username"; then
        echo "User account '$del_username' does not exist."
        exit 1
    fi

    sudo userdel -r "$del_username"
    echo "User account '$del_username' deleted successfully."
}

# Function to reset the password of an existing user account
reset_user_password() {
    read -p "Enter the username for password reset: " reset_username

    if ! is_username_exist "$reset_username"; then
        echo "User account '$reset_username' does not exist."
        exit 1
    fi

    read -sp "Enter the new password: " new_password
    echo

    echo "$reset_username:$new_password" | sudo chpasswd
    echo "Password for user account '$reset_username' reset successfully."
}

# Function to list all user accounts
list_user_accounts() {
    echo "List of User Accounts:"
    echo "====================="
    awk -F: '{print "Username:", $1, "\tUID:", $3}' /etc/passwd
}

# Main script logic
case "$1" in
    -c|--create)
        create_user_account
        ;;
    -d|--delete)
        delete_user_account
        ;;
    -r|--reset)
        reset_user_password
        ;;
    -l|--list)
        list_user_accounts
        ;;
    -h|--help)
        display_usage
        ;;
    *)
        echo "Invalid option. Use -h or --help for usage information."
        exit 1
        ;;
esac

exit 0

=======
# Function to display usage information and available options
function display_usage {
    echo "Usage: $0 [OPTIONS]"
    echo "Options:"
    echo "  -c, --create     Create a new user account."
    echo "  -d, --delete     Delete an existing user account."
    echo "  -r, --reset      Reset password for an existing user account."
    echo "  -l, --list       List all user accounts on the system."
    echo "  -h, --help       Display this help and exit."
}

# Function to create a new user account
function create_user {
    read -p "Enter the new username: " username

    # Check if the username already exists
    if id "$username" &>/dev/null; then
        echo "Error: The username '$username' already exists. Please choose a different username."
    else
        # Prompt for password (Note: You might want to use 'read -s' to hide the password input)
        read -p "Enter the password for $username: " password

        # Create the user account
        useradd -m -p "$password" "$username"
        echo "User account '$username' created successfully."
    fi
}

# Function to delete an existing user account
function delete_user {
    read -p "Enter the username to delete: " username

    # Check if the username exists
    if id "$username" &>/dev/null; then
        userdel -r "$username"  # -r flag removes the user's home directory
        echo "User account '$username' deleted successfully."
    else
        echo "Error: The username '$username' does not exist. Please enter a valid username."
    fi
}

# Function to reset the password for an existing user account
function reset_password {
    read -p "Enter the username to reset password: " username

    # Check if the username exists
    if id "$username" &>/dev/null; then
        # Prompt for password (Note: You might want to use 'read -s' to hide the password input)
        read -p "Enter the new password for $username: " password

        # Set the new password
        echo "$username:$password" | chpasswd
        echo "Password for user '$username' reset successfully."
    else
        echo "Error: The username '$username' does not exist. Please enter a valid username."
    fi
}

# Function to list all user accounts on the system
function list_users {
    echo "User accounts on the system:"
    cat /etc/passwd | awk -F: '{ print "- " $1 " (UID: " $3 ")" }'
}

# Check if no arguments are provided or if the -h or --help option is given
if [ $# -eq 0 ] || [ "$1" = "-h" ] || [ "$1" = "--help" ]; then
    display_usage
    exit 0
fi

# Command-line argument parsing
while [ $# -gt 0 ]; do
    case "$1" in
        -c|--create)
            create_user
            ;;
        -d|--delete)
            delete_user
            ;;
        -r|--reset)
            reset_password
            ;;
        -l|--list)
            list_users
            ;;
        *)
            echo "Error: Invalid option '$1'. Use '--help' to see available options."
            exit 1
            ;;
    esac
    shift
done
