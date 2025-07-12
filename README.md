# Linux Automated Backup Script

This is a simple Bash script to automate backups of a specified directory
on a Linux system. It creates timestamed backup folders, logs each backup
event, and deletes backups older than 7 days.

## Features

- Automated backups of any directory
- Timestamped backup folders for easy tracking
- Logging of backup events to a log file
- Optional cleanup of backups older than 7 days

## Usage

1. Update the `SOURCE_DIR` and `DEST_DIR` variables in the script to your
directories.
2. Make the script executable:

```bash
chmod +x backup.sh
