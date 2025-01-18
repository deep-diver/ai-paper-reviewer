#!/bin/bash

# Get all directories matching YYYY-MM-DD format within ./content/, sorted chronologically
dirs=$(find ./content -mindepth 1 -maxdepth 1 -type d -name '[0-9][0-9][0-9][0-9]-[0-9][0-9]-[0-9][0-9]' | awk -F/ '{print $NF}' | sort -n)

# Get the 3 latest directories
latest_dirs=$(echo "$dirs" | tail -n 3)

# Iterate over all directories
for dir in $dirs; do
  # Check if the current directory is NOT in the list of latest directories
  if ! echo "$latest_dirs" | grep -q "$dir"; then
    echo "Processing directory: $dir"
    mv ./content/$dir/* ./content/paper-reviews/
    rm -rf ./content/$dir
  fi
done
