#! /bin/bash
directory ='/path/to/cleanup'
#remove older files than 7 days in specified directory
find "$directory" -type f -mtime +7 -exec rm {} \;
echo "Old files removed"