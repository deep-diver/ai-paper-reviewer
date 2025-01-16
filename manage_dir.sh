#!/bin/bash

# Get all directories matching YYYY-MM-DD format within ./content/, sorted chronologically
dirs=$(find ./content -mindepth 1 -maxdepth 1 -type d -name '[0-9][0-9][0-9][0-9]-[0-9][0-9]-[0-9][0-9]' | awk -F/ '{print $NF}' | sort -n)

# Get the latest directory (last one in the sorted list)
latest_dir=$(echo "$dirs" | tail -n 1)

# Iterate over all directories except the latest one
for dir in $dirs; do
  if [[ "$dir" != "$latest_dir" ]]; then
    echo "Processing directory: $dir"
    mv ./content/$dir/* ./content/paper-reviews/
    rm -rf ./content/$dir
  fi
done