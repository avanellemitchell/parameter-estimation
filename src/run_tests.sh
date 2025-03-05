#!/bin/bash

# Navigate to the correct directory (if needed)
cd "$(dirname "$0")/.." || exit

# Set PYTHONPATH so Python finds the src/ module
export PYTHONPATH=src

# Run all tests inside the tests/ directory
echo "Running all unit tests..."
python3 -m unittest discover -s tests

# Check exit code
if [ $? -eq 0 ]; then
    echo "✅ All tests passed successfully!"
else
    echo "❌ Some tests failed. Check the output above."
fi
#Writtwn wirh the help of AI