#!/bin/bash

# This script demonstrates the corrected version with proper error handling.

input_file="my_data.txt"

# Check if the file exists
if [ ! -f "$input_file" ]; then
  echo "Error: Input file '$input_file' not found. Exiting."
  exit 1 # Exit with an error code
fi

# Process the file only if it exists
while IFS= read -r line; do
  echo "Processing line: $line"
  # ... further processing of the line
done < "$input_file"

#The script exits 1 if the file is missing, otherwise it continues.