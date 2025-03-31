#!/bin/bash

echo "Running Gaussian 16 calculations..."

# Define Gaussian executable path
GAUSSIAN_EXEC="/c/G16W/g16"

# Define input files
INPUT_FILES=("Molecule_PENCEN_SP.com" "Molecule_TETCEN_SP.com")

# Loop through input files and execute Gaussian
for file in "${INPUT_FILES[@]}"; do
    if [ -f "$file" ]; then
        echo "Processing $file..."
        "$GAUSSIAN_EXEC" "$file"
        echo "Completed: $file"
    else
        echo "Error: File $file not found!"
        exit 1
    fi
done

echo "All Gaussian jobs finished successfully!"
