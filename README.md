# Dir-miner

The purpose of this tool is to generate custom wordlists from GitHub repositories. It provides a convenient way to gather file paths for further analysis. It comes in handy when you have identified that the target in scope is using a tool, theme, or plugin sourced from a public GitHub repository. 

The wordlist generated by this tool can be used in combination with fuzzers like ffuf, dirbuster and burp intruder to access sensitive files.

## Usage
To use this script, follow the steps below:

- Ensure that you have read and write permissions on your current working directory.
- After cloning this repo, run:
	 ```chmod +x dir-miner.sh```
- Then, run the script with the following command:
	```./dir-miner.sh <repository_link_or_path> <output_file>```

Syntax:```./dir-miner.sh <repository_link_or_path> <output_file>```\
<br>
Example1: ```./dir-miner.sh wp-install-dir custom-dir.txt```\
Example2: ```./dir-miner.sh https://github.com/tonik/theme.git custom-dir.txt```

This will directly extract the relative directory paths to each file in the specified local directory or github repo and write them to the output.txt file.


## Requirements
- Bash (Bourne Again SHell)
