#!/bin/bash
file ="file_path.txt"
#encryption fle using AES-256-CBC
openssl enc -aes-256-cbc -salt -in "$file" -out "$file.enc"
echo "File encrytped : $file.enc"

