import os
import shutil

root_folder = r"Z:\!!!order"
cue_files_folder = r"Z:\!!!order\cue_files"

if not os.path.exists(cue_files_folder):
    os.makedirs(cue_files_folder)

for root, dirs, files in os.walk(root_folder):
    if not any(file.endswith(".cue") for file in files):
        continue

    for file in files:
        if file.endswith(".cue"):
            file_path = os.path.join(root, file)
            destination_path = os.path.join(cue_files_folder, file)
            if not os.path.exists(destination_path):
                shutil.copy2(file_path, destination_path)
                print(f"Copied file: {file_path} -> {destination_path}")
            else:
                print(f"File already exists at destination: {destination_path}")
