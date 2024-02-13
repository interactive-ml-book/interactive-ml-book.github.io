import os
import shutil

# Set the parent directory to the 'docs' folder within the current directory
parent_directory = os.path.join(os.getcwd(), 'docs')
target_folder = '_build'

# Construct the full path to the target folder
target_folder_path = os.path.join(parent_directory, target_folder)

# Check if the target folder exists within the 'docs' directory
if os.path.exists(target_folder_path) and os.path.isdir(target_folder_path):
    # If the target folder exists, delete it permanently
    shutil.rmtree(target_folder_path)
    print(f"Deleted '{target_folder}'.")
else:
    # If the target folder does not exist, do nothing
    print(f"'{target_folder}' does not exist in 'docs'.")

os.system("jb build docs/")
