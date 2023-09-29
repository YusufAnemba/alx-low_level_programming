#!/bin/bash

# Collect all the .c files in the current directory
c_files=$(find . -maxdepth 1 -type f -name "*.c")

# Compile each .c file into an object file and add it to the library
for file in $c_files; do
    # Extract the file name without extension
    file_name=$(basename "$file" .c)
    
    # Compile the C file into an object file
    gcc -c "$file" -o "$file_name.o"
    
    # Add the object file to the library
    ar rcs liball.a "$file_name.o"
    
    # Clean up the object file
    rm "$file_name.o"
done

echo "Static library liball.a created from .c files in the current directory."
