#!/bin/bash
set -e

echo "Validating build inputs..."

VALIDATION() {
    # Validate STOCK_DEVICE
    if [[ ! $STOCK_DEVICE =~ ^SM- ]]; then
        echo "ERROR: STOCK_DEVICE must start with SM-"
        exit 1
    fi
    
    # Validate TARGET_DEVICE
    if [[ ! $TARGET_DEVICE =~ ^SM- ]]; then
        echo "ERROR: TARGET_DEVICE must start with SM-"
        exit 1
    fi
    
    # Validate TARGET_CSC (3 letters)
    if [[ ! $TARGET_CSC =~ ^[A-Z]{3}$ ]]; then
        echo "ERROR: TARGET_CSC must be exactly 3 letters"
        exit 1
    fi
    
    # Validate TARGET_IMEI (15 digits)
    if [[ ! $TARGET_IMEI =~ ^[0-9]{15}$ ]]; then
        echo "ERROR: TARGET_IMEI must be exactly 15 digits"
        exit 1
    fi
    
    echo "✓ All validations passed!"
}

export -f VALIDATION
