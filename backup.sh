#!/bin/bash

BACKUP_DIR="$HOME/backups"
mkdir -p "$BACKUP_DIR"

SOURCE_DIR="$1"
if [ -z "$SOURCE_DIR" ]; then
  echo "Usage: $0 /path/to/folder"
  exit 1
fi

DATE=$(date +"%Y-%m-%d_%H-%M-%S")
ARCHIVE_NAME="$(basename "$SOURCE_DIR")_$DATE.tar.gz"

tar -czf "$BACKUP_DIR/$ARCHIVE_NAME" "$SOURCE_DIR"
echo "BACKUP CREATED: $BACKUP_DIR/$ARCHIVE_NAME"
