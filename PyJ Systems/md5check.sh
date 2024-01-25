#!/bin/bash

file_path="filename.iso" 
hash_file_path="md5check.iso.md5"
# Run the md5sum command and check the exit status
if md5sum -c "$hash_file_path"; then
    echo "All hashes are OK."
else
    echo "Hash check failed. Some hashes have changed."
fi
