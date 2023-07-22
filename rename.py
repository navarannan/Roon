import os

root_folder = "path/to/root/folder"

for root, dirs, files in os.walk(root_folder):
    for file in files:
        if file.endswith(".cue"):
            file_path = os.path.join(root, file)
            new_file_name = file.replace(".cuetools.wav", "")
            new_file_path = os.path.join(root, new_file_name)
            os.rename(file_path, new_file_path)
            print(f"Renamed file: {file_path} -> {new_file_path}")
import os

root_folder = r"Z:\!!!order\cue_files"

for root, dirs, files in os.walk(root_folder):
    for file in files:
        if file.endswith(".cue"):
            file_path = os.path.join(root, file)
            new_file_name = file.replace(".cuetools.wav", "")
            new_file_path = os.path.join(root, new_file_name)
            os.rename(file_path, new_file_path)
            print(f"Renamed file: {file_path} -> {new_file_path}")
