#!/bin/bash
set -e

echo "ZIP creation script initialized"

UPDATE_ZIP_SCRIPT() {
    local FIRM_DIR=$1
    echo "Updating updater-script in $FIRM_DIR"
}

FLASHABLE_ZIP_CREATION() {
    echo "Creating flashable ZIP"
}

export -f UPDATE_ZIP_SCRIPT FLASHABLE_ZIP_CREATION
