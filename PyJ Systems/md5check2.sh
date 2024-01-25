#!/bin/bash

file_path="filename.iso"
hash_file_path="md5check.iso.md5"
output_file="hash_check_result.txt"

# Run the md5sum command, display output on console, and save to a file
md5sum -c "$hash_file_path" | tee "$output_file"

# Check the exit status and print a message
if [ "${PIPESTATUS[0]}" -eq 0 ]; then
    echo "All hashes are OK."
else
    echo "Hash check failed. Some hashes have changed."
fi

