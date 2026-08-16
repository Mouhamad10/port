#!/bin/bash
set -e

echo "Running script: $(basename "$0")"

if [ "$#" -lt 1 ]; then
    echo "Usage: $0 <dir1> <dir2> ... <dirN>"
    exit 1
fi

for DIR in "$@"; do
    # Clean old dir
    if [ -d "$DIR" ]; then
        echo "Removing existing directory: $DIR"
        rm -rf "$DIR"
    fi
    # Recreate dir
    mkdir -p "$DIR"
    # Show result
    echo "Directory prepared: $DIR"
done

echo "Directory setup completed!"
