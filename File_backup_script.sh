#! /bin/bash
backup_dir ='backup_directory path'
source_dir = 'source_directory path'

#create a timestamped backup of the source directory

tar -czf "$backup_dir/backup_$(date +%Y%m%d_%H%M%s).tar.gz"
"$source_dir"