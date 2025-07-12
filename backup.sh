#!/bin/bash

# Automated System Backup Script


SOURCE_DIR="$HOME/Documents"
DEST_DIR="$HOME/backup"

mkdir -p "$DEST_DIR"
TIMESTAMP=$(date +"%Y-%m-%d-%H-%M")
BACKUP_FOLDER="$DEST_DIR/backup-$TIMESTAMP"
cp -r "$SOURCE_DIR" "$BACKUP_FOLDER"
echo "Backup completed at $TIMESTAMP" >> "$DEST_DIR/backup-log.txt"
find "$DEST_DIR" -maxdepth 1 -type d -name "backup-*" -mtime +7 -exec rm -rf {} \;
