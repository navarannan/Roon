#!/bin/bash

# Loop through each directory in the current directory
for dir in */; do
    # Exclude folders with names starting with "!"
    if [[ ! $dir =~ ^! ]]; then
        # Check if the directory does not contain any file starting with "folder" (case-insensitive)
        if [[ -z $(find "${dir}" -maxdepth 1 -type f -iname 'folder*') ]]; then
            # Print the directory name
            echo "$dir"
        fi
    fi
done
