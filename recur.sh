#!/bin/bash

# Function to check if a directory contains a file starting with "folder" (case-insensitive)
check_directory() {
    local current_dir="$1"

    # Loop through each directory within the current directory
    for dir in "$current_dir"/*/; do
        # Exclude folders with names starting with "!"
        if [[ ! $dir =~ ^! ]]; then
            # Check if the directory does not contain any file starting with "folder" (case-insensitive)
            if [[ -z $(find "${dir}" -maxdepth 1 -type f -iname 'folder*') ]]; then
                # Print the directory name
                echo "$dir"
            fi
        fi
    done
}

# Loop through each subdirectory in the current directory
for subdir in */; do
    # Exclude folders with names starting with "!"
    if [[ ! $subdir =~ ^! ]]; then
        # Call the function to check each directory within the subdirectory
        check_directory "$subdir"
    fi
done
