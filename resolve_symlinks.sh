#!/bin/bash

# This script finds all symbolic links in a specified directory,
# resolves their targets, copies the content of the target to a
# separate directory, and stages the new content for a Git commit.

# --- Configuration ---
# The root directory to start searching for symbolic links.
# Set this to your repository's root or any specific subdirectory.
SEARCH_ROOT_DIR="./"

# The separate destination directory to store the copied content.
# This will serve as a parent for all the copied files.
# For example, if a symlink is at ./path/to/symlink, the content will be copied to ./destination/path/to/symlink.
DESTINATION_PARENT_DIR="/home/$USER/Escritorio/PERTE/TFM/GitHub/perte-tfm"

# --- Script Logic ---

# Check if the search root directory exists
if [ ! -d "$SEARCH_ROOT_DIR" ]; then
    echo "Error: Search root directory '$SEARCH_ROOT_DIR' not found."
    exit 1
fi

# Use 'find' to locate all symbolic links and loop through them.
# The '-L' option ensures that we process symbolic links only.
# The 'while' loop is more robust than a 'for' loop for handling file names with spaces.
echo "Scanning for symbolic links in '$SEARCH_ROOT_DIR'..."
find "$SEARCH_ROOT_DIR" -type l | while read SYMLINK_PATH; do
    echo "--- Processing symlink: '$SYMLINK_PATH' ---"

    # Resolve the target of the symbolic link
    SOURCE_PATH=$(readlink -f "$SYMLINK_PATH")
    SYMLINK_PATH="${SYMLINK_PATH%_symlink}"
    SYMLINK_PATH="${SYMLINK_PATH#./}"
    
    # # Determine the destination path for the copied content.
    DEST_PATH="${DESTINATION_PARENT_DIR}/${SYMLINK_PATH}"

    # # Check if the source exists and is a directory or file.
    if [ ! -e "$SOURCE_PATH" ]; then
        echo "Warning: Target of symlink '$SYMLINK_PATH' does not exist. Skipping."
        continue
    fi

    # Remove the destination path if it already exists to ensure a clean copy.
    if [ -e "$DEST_PATH" ]; then
        echo "Removing existing destination: '$DEST_PATH'..."
        rm -r "$DEST_PATH"
    fi

    # Create the new destination directory
    echo "Creating destination directory: '$DEST_PATH'..."
    mkdir -p "$(dirname "$DEST_PATH")"

    # Copy the contents of the source into the destination
    # The 'cp -R' command handles both directories and single files.
    echo "Copying content from '$SOURCE_PATH' to '$DEST_PATH'..."
    cp -R "$SOURCE_PATH" "$DEST_PATH"

    # # Stage the new files for a commit
    echo "Staging new content at '$DEST_PATH' for git commit..."
    git add "$DEST_PATH"

    echo "Finished processing '$SYMLINK_PATH'."
done

echo "--- All symlinks processed. The copied content is ready for commit. ---"

echo "Done. The copied content is ready for commit, and the symlink is untouched."
