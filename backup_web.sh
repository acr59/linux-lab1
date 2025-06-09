#!/bin/bash
# Backup Nginx web files to ~/web_backups

backup_folder=~/web_backups
timestamps=$(date +%Y-%m-%d_%H-%M-%S)
backup_file=$backup_folder/web_backup_timestamp.tar.gz
tar -czvf $backup_file /var/www/html
echo "Backup created at $backup_file"

