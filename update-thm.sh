#!/bin/bash

FILE="tryhackme-progress.md"

# Add timestamp (optional)
echo "" >> $FILE
echo "## Update: $(date '+%Y-%m-%d %H:%M:%S')" >> $FILE

# Add your message
echo "- $1" >> $FILE

# Git automation
git add $FILE
git commit -m "Updated TryHackMe progress: $1"
git push

echo "✔️ Update pushed successfully!"
