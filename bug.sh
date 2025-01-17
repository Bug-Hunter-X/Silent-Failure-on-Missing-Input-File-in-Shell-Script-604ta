#!/bin/bash

# This script attempts to process a file, but it has a subtle bug.
# The bug is that it does not properly handle the case where the input file
# does not exist.

input_file="my_data.txt"

# Attempt to read data from the file
if [ -f "$input_file" ]; then
  while IFS= read -r line; do
    echo "Processing line: $line"
    # ... further processing of the line
  done < "$input_file"
else
  echo "Error: Input file '$input_file' not found."
fi

# The bug is here: if my_data.txt does not exist, the script proceeds without error
# but nothing is done. The user may not understand why nothing is happening.