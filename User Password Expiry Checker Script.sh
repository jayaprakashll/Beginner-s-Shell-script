#!/bin/bash
# Check password expiry for users with bash shell
IFS=$'\n’
for user in $(cat /etc/passwd | grep "/bin/bash" | cut -d: -f1); do
password_expires=8(chage -1 "Suser" | grep "Password expires”
awk '{print $4}')
echo "User: Suser, Password Expires: Spassword_expires”
done
unset IFS