#!/bin/bash
username="newuser"
# Check if user exists; if not, create new user
if id "Susername" &>/dev/null; then
    echo "User Susername already exists."
else
    useradd -m "$username”
echo "User Susername created."