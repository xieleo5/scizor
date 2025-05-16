#!/bin/bash

# Ensure a commit message was provided
if [ -z "$1" ]; then
  echo "Usage: $0 \"commit message\""
  exit 1
fi

# Save the commit message
COMMIT_MSG="$1"

# Read the current git config
OLD_NAME=$(git config user.name)
OLD_EMAIL=$(git config user.email)

# Set temporary user info
git config user.name "Scizor-CoRL2025"
git config user.email "scizor.corl.2025@gmail.com"

# Commit with the provided message
git commit -m "$COMMIT_MSG"

# Restore original git config
git config user.name "$OLD_NAME"
git config user.email "$OLD_EMAIL"

echo "Commit made as Scizor and reverted to original user."
