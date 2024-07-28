#!/bin/bash

# Check if a commit msg is provided
if [ -z "$1" ]; then
  echo "Usage: $0 \"commit message\""
  exit 1
fi

# Variables
COMMIT_MESSAGE="$1"

# Pull the latest changes from the remote repository
echo "Pulling latest changes..."
git pull

# Stage all changes
echo "Staging changes..."
git add .

# Commit changes with the provided msg
echo "Committing changes..."
git commit -m "$COMMIT_MESSAGE"

# Push changes to the remote repository 
echo "Pushing changes..."
git push

echo "Done!"
