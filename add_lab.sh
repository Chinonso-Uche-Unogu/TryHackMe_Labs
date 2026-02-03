#!/bin/bash

# Usage: ./add_lab.sh "Lab Title" "Lab URL" "Date Completed"

LAB_TITLE="$1"
LAB_URL="$2"
LAB_DATE="$3"

# Replace spaces with underscores for filename
FILE_NAME=$(echo "$LAB_TITLE" | tr ' ' '_').md

# Create markdown file
cat <<EOL > "$FILE_NAME"
# 🕵️ TryHackMe Lab: $LAB_TITLE

**Date Completed:** $LAB_DATE  
**Link to Lab:** [$LAB_TITLE]($LAB_URL)

**Skills Learned:**  
- Add your skills here

**Tools Used:**  
- Add tools here

**Summary:**  
Add a brief summary here.
EOL

# Add to git
git add "$FILE_NAME"
git commit -m "Add TryHackMe Lab: $LAB_TITLE"
git push origin main
