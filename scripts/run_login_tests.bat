@echo off
REM PAYAPP Login Flow Test Runner for Windows
REM This script runs all login-related Maestro tests

echo 🚀 Starting PAYAPP Login Flow Tests...
echo ==================================

REM Check if Maestro is installed
maestro --version >nul 2>&1
if errorlevel 1 (
    echo ❌ Maestro is not installed. Please install it first:
    echo    curl -Ls "https://get.maestro.mobile.dev" ^| bash
    exit /b 1
)

echo ✅ Maestro is installed
echo.

REM Run login test
echo 🔐 Running Login Test...
echo ----------------------

echo 🔑 Testing PIN login (1212)...
maestro test flows/login.yaml
if errorlevel 1 (
    echo ❌ Login test failed
) else (
    echo ✅ Login test passed
)
echo.

echo 🎉 Login test completed!
echo Check the screenshots in the current directory for visual verification.
pause
