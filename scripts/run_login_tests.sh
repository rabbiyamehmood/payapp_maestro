#!/bin/bash

# PAYAPP Login Flow Test Runner
# This script runs all login-related Maestro tests

echo "🚀 Starting PAYAPP Login Flow Tests..."
echo "=================================="

# Check if Maestro is installed
if ! command -v maestro &> /dev/null; then
    echo "❌ Maestro is not installed. Please install it first:"
    echo "   curl -Ls 'https://get.maestro.mobile.dev' | bash"
    exit 1
fi

# Check if device is connected
echo "📱 Checking connected devices..."
maestro test --help > /dev/null 2>&1
if [ $? -ne 0 ]; then
    echo "❌ No device connected or Maestro not working properly"
    exit 1
fi

echo "✅ Device connected successfully"
echo ""

# Run login test
echo "🔐 Running Login Test..."
echo "----------------------"

echo "🔑 Testing PIN login (1212)..."
maestro test flows/login.yaml
if [ $? -eq 0 ]; then
    echo "✅ Login test passed"
else
    echo "❌ Login test failed"
fi
echo ""

echo "🎉 Login test completed!"
echo "Check the screenshots in the current directory for visual verification."
