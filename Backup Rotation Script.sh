!/bin/bash
backup_dir="/path/to/backups"
max_backups=5
# Rotate backups by deleting the oldest if more than max_backups
while [ $(1s -1 "S$backup_dir" | wc -1) -gt "Smax_backups" ]; do
    oldest_backup=$(1s -1t "$backup_dir" | tail -n 1)
    rm -r "$backup_dir/$oldest_backup”
done
echo "Backup rotation completed."