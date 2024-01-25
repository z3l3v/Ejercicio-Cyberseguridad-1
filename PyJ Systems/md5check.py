import subprocess


file_path = "filename.iso"
hash_file_path = "md5check.iso.md5"
output_file_path = "hash_check_result1.txt"

# Run the md5sum command and capture the output
result = subprocess.run(['md5sum', '-c', hash_file_path], capture_output=True, text=True)

print(result.stdout)

# Save the output to a file
with open(output_file_path, 'w') as output_file:
    output_file.write(result.stdout)

# Check the exit status and print a message
if result.returncode == 0:
    print("All hashes are OK.")
else:
    print("Hash check failed. Some hashes have changed.")
