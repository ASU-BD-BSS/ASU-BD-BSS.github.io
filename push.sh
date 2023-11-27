#!/bin/bash
#have latest copy, if made changes from mobile
git pull
# Add all changes
git add .

# Commit changes with a provided message
git commit -m "Test"

# Push changes to the origin's HEAD
git push origin HEAD

read -p "Enter to exit" 