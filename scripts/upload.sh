#!/bin/bash
set -e

echo "Upload script initialized"

DESTINATION=$1

if [ "$DESTINATION" = "huggingface" ]; then
    echo "Uploading to Hugging Face"
    if [ -z "$HF_TOKEN" ] || [ -z "$HF_USER" ]; then
        echo "ERROR: HF_TOKEN or HF_USER not set"
        exit 1
    fi
elif [ "$DESTINATION" = "gofile" ]; then
    echo "Uploading to GoFile"
else
    echo "ERROR: Unknown destination: $DESTINATION"
    exit 1
fi
