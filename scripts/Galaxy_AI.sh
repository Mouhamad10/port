#!/bin/bash
set -e

echo "Galaxy AI script initialized"

GALAXY_AI() {
    local FIRM_DIR=$1
    if [ "$USE_GALAXY_AI" = "true" ]; then
        echo "Adding Galaxy AI to $FIRM_DIR"
    else
        echo "Galaxy AI disabled, skipping"
    fi
}

export -f GALAXY_AI
