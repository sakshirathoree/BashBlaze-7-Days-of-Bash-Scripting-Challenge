#!/bin/bash

# This script accepts multiple commands as a single command line argument enclosed with double quotes
# It then runs those commands on the specified clients

declare -A clients
clients["client1"]="ubuntu@172.31.92.62"
clients["client2"]="ubuntu@172.31.85.240"

executeCommand() {
    for key in "${target_clients[@]}"; do
        if [[ -v clients["$key"] ]]; then
            echo "---- BEGINNING $key ----"
            ssh "${clients[$key]}" "${command}"
            echo "---- ENDING $key ----"
        else
            echo "Client '$key' not found in the list."
        fi
    done
}

if [[ $# -ne 2 ]]; then
    echo "Usage: $0 \"command1;command2;command3\" \"client1,client2,...,clientN\""
    exit 1
fi

command=$1
target_clients=($(echo "$2" | tr ',' ' '))

if [[ -z $command ]]; then
    echo "Received Empty command"
    exit 1
fi

executeCommand

