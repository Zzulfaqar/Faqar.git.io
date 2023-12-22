#!/bin/bash
#code are from https://www.linkedin.com/in/mzulfaqar/
git config core.autocrlf false

# Check if log.txt exists and read the current number
if [ -f log.txt ]; then
    number=$(cat log.txt)
else
    # Set the initial number if log.txt doesn't exist
    number=1
fi

# Increment the number
number=$((number + 1))

# Log the current number to log.txt
echo "$number" > log.txt

# Run Git commands
git add .
git status
git commit -m "edit and auto launch scripted $number"
git push -u origin main
