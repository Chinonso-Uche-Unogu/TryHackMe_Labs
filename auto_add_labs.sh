#!/bin/bash
# auto_add_labs.sh
# Reads new_labs.txt (format: Lab Name | Lab URL | Completion Date)
# Creates markdown files, updates README.md, commits and pushes to GitHub.

set -e
REPO_DIR="$(cd "$(dirname "$0")" && pwd)"
cd "$REPO_DIR"

LAB_FILE="new_labs.txt"
README="README.md"

if [ ! -f "$LAB_FILE" ]; then
  echo "No $LAB_FILE found. Create it with lines like:"
  echo "CAPA Basics | https://tryhackme.com/room/capabasics | $(date +"%b %d, %Y")"
  exit 1
fi

CHANGES=false

while IFS='|' read -r LAB_NAME LAB_URL LAB_DATE
do
  LAB_NAME="$(echo "$LAB_NAME" | xargs)"   # trim
  LAB_URL="$(echo "$LAB_URL" | xargs)"
  LAB_DATE="$(echo "$LAB_DATE" | xargs)"

  [ -z "$LAB_NAME" ] && continue

  # safe filename
  FILE_NAME="$(echo "$LAB_NAME" | tr ' /' '__' | tr -cs 'A-Za-z0-9_.-' '_' ).md"

  # Skip if already exists
  if [ -f "$FILE_NAME" ]; then
    echo "Skipping existing: $FILE_NAME"
    continue
  fi

  cat > "$FILE_NAME" <<EOF
# $LAB_NAME

**Date Completed:** ${LAB_DATE:-$(date +"%b %d, %Y")}  
**Original Lab:** ${LAB_URL}

## Skills Learned
- Add skills here

## Tools Used
- Add tools here

## Summary
Add your short summary / notes here.
EOF

  git add "$FILE_NAME"
  git commit -m "Add TryHackMe Lab: $LAB_NAME" || true
  CHANGES=true

  # Ensure README exists and link this lab (avoid duplicates)
  if [ ! -f "$README" ]; then
    echo "# TryHackMe Labs" > "$README"
    echo "" >> "$README"
    echo "## Completed Labs" >> "$README"
    echo "" >> "$README"
    git add "$README"
    git commit -m "Create README for TryHackMe Labs" || true
  fi

  LINK="- [$LAB_NAME]($FILE_NAME)"
  if ! grep -Fxq "$LINK" "$README"; then
    echo "$LINK" >> "$README"
    git add "$README"
    git commit -m "Update README: add $LAB_NAME" || true
    CHANGES=true
  fi

done < "$LAB_FILE"

if [ "$CHANGES" = true ]; then
  git push origin main
  # clear new_labs.txt after successful push
  > "$LAB_FILE"
  echo "Pushed new labs and cleared $LAB_FILE"
else
  echo "No new labs to add."
fi
