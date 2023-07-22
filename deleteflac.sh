#!/bin/bash

root_folder="Z:/!!!order"

# Find all subfolders inside the root folder
find "$root_folder" -type d | while IFS= read -r folder; do
    # Delete .flac files if they exist
    find "$folder" -name "*.flac" -type f -delete
    
    # Delete .cue files if they exist
    find "$folder" -name "*.cue" -type f -delete
done
