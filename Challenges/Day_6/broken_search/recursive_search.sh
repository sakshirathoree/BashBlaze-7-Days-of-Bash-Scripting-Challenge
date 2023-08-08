#!/bin/bash

# Check if the correct number of arguments is provided
if [ $# -ne 2 ]; then
  echo "Usage: ./recursive_search.sh <absolute path of directory> <target_file>"
  exit 1
fi

search_directory="$1"
target_file="$2"

# Convert search_directory to an absolute path
search_directory=$(realpath "$search_directory")

# Check if search_directory exists and is a directory
if [[ ! -d $search_directory ]]; then
  echo "Error: Directory $search_directory does not exist or is not a directory."
  echo "Please provide an existing directory name to search."
  exit 1
fi

# Search for the target file recursively
path=$(find "$search_directory" -type f -name "$target_file" -print -quit)

if [[ -n "$path" ]]; then
  echo "$target_file found!"
  echo "Path of the file is: $path"
  exit 0
else
  echo "File not found: $target_file"
  exit 1
fi

