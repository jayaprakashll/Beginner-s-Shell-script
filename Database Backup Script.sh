#!/bin/bash
database_name="your_database"
output_file="database_backup_$(date +%Y%m%d).sql"
# Perform database backup using mysqldump
mysqldump -u username -ppassword "$database_name
echo "Database backup created: Soutput_file"