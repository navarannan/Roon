#!/bin/bash

master_dir="//DS923PLUS/KODI-Files/Bollywood_Pack_ MUSIC_VIDEOS_ALBUM"


# Iterate through each folder in the master directory
find "$master_dir" -type d -name '* \[ByTeam-DusIcTv\]' -print0 | while IFS= read -r -d $'\0' folder; do
  new_folder="${folder// \[ByTeam-DusIcTv\]}"  # Remove " [ByTeam-DusIcTv]"
  mv "$folder" "$new_folder"
  echo "Renamed folder: $folder -> $new_folder"

  # Iterate through each file in the folder
  find "$new_folder" -type f -name '* \[By-DusIcTv\].mkv' -print0 | while IFS= read -r -d $'\0' file; do
    new_file="${file// \[By-DusIcTv\]}"  # Remove " [By-DusIcTv]"
    mv "$file" "$new_file"
    echo "Renamed file: $file -> $new_file"
  done
done
