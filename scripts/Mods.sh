#!/bin/bash
set -e

echo "Mods script initialized"

ADD_MODS() {
    local FIRM_DIR=$1
    if [ "$USE_MODS" = "true" ]; then
        echo "Adding mods to $FIRM_DIR"
    else
        echo "Mods disabled, skipping"
    fi
}

export -f ADD_MODS
