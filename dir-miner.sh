#!/bin/bash

# Check if the required arguments are provided
if [ $# -ne 2 ]; then
    echo "Usage: $0 <repository_link_or_path> <output_file>"
    exit 1
fi

repository_link_or_path="$1"
output_file="$2"

# Check if the repository link starts with "https://" to determine if it's a GitHub link
if [[ $repository_link_or_path == https://* ]]; then
    # Clone the repository
    git clone "$repository_link_or_path" repo
else
    # Use the provided path for local repository
    repo="$repository_link_or_path"
fi

# Navigate to the cloned repository directory
cd "$repo"

# Find all files in the directory and write their relative paths to the output file
find . -type f | sed 's/^\.\///' > "../$output_file"

# Move back to the original directory if a GitHub repository was cloned (Comment the following block out, if you want to keep the github repo)
cd ..
if [[ $repository_link_or_path == https://* ]]; then
    rm -rf repo
fi

echo "Relative directory paths to files have been written to: $output_file"
