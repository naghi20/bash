#!/bin/bash

# Function to validate if the input is a directory
validate_directory() {
    if [ ! -d "$1" ]; then
        echo "The input is not a valid directory."
        exit 1
    fi
}

# Take user input
echo "Enter the directory to validate:"
read directory
validate_directory "$directory"

# Navigate to the validated directory
cd "$directory"

# Execute the ls -l command
ls -l
if [ $? -eq 0 ]; then
    echo "Command 'ls -l' succeeded."
else
    echo "Command 'ls -l' failed."
fi
