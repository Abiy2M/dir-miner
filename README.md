

This script allows you to extract the relative directory paths to each file in a GitHub repository or a local directory. It provides a convenient way to gather the file paths for further analysis or processing.

#Usage
To use this script, follow the steps below:

Ensure that you have the necessary permissions to clone a GitHub repository (if using a repository link) or access the local directory.

Open a terminal and navigate to the directory where the script is located.

Run the script with the following command:

```./dir-miner.sh <repository_link_or_path> <output_file>```

eg: ```./extract_paths.sh wp-install-dir custom-dir.txt```

This will directly extract the relative directory paths to each file in the specified local directory and write them to the output.txt file.

#Requirements
- Bash (Bourne Again SHell)