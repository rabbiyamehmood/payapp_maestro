# 📱 PAYAPP Maestro Automation

![Maestro](https://img.shields.io/badge/Maestro-2.0.1-blue)
![Platform](https://img.shields.io/badge/Platform-Android-green)
![Status](https://img.shields.io/badge/Status-Working-brightgreen)

Automated mobile testing suite for PAYAPP using Maestro framework. This project automates the core login and logout flows with PIN-based authentication.

## Setup

1. Install Maestro CLI
2. Connect your device/emulator
3. Install the PAYAPP on your device
4. Run the tests

## Project Structure

```
├── flows/              # Maestro flow files
├── config/            # Configuration files
├── assets/            # Screenshots and other assets
└── scripts/           # Helper scripts
```

## Running Tests

```bash
# Run all tests
maestro test flows/

# Run specific test
maestro test flows/login.yaml

# Run with device selection
maestro test --device-id <device-id> flows/
```

## Test Flow

### Login/Authentication ✅
- **login.yaml** - PIN-based login flow (PIN: 1212)

## Quick Start

1. **Setup your app details**:
   - Update the `appId` in `flows/login.yaml` with your actual PAYAPP package name

2. **Run login test**:
   ```bash
   # Windows
   scripts\run_login_tests.bat
   
   # Linux/Mac
   bash scripts/run_login_tests.sh
   
   # Or run directly
   maestro test flows/login.yaml
   ```

## 🔐 Login Flow Details
- Launch PAYAPP
- Mobile number is pre-filled
- Enter PIN: 1212 (using precise coordinates)
- Automatic login after PIN entry

## 🚪 Logout Flow Details  
- Tap hamburger menu (top-left)
- Select LOGOUT option
- Confirm with "Yes" button
- Verify return to login screen

## 🛠️ Prerequisites

- [Maestro CLI](https://maestro.mobile.dev/) installed
- Android device/emulator connected via ADB
- PAYAPP installed on device
- USB debugging enabled

## 📦 Installation

1. Clone this repository:
   ```bash
   git clone <your-repo-url>
   cd PAYAPP
   ```

2. Verify Maestro installation:
   ```bash
   maestro --version
   ```

3. Check device connection:
   ```bash
   adb devices
   ```

## 🎯 Usage Examples

```bash
# Run individual flows
maestro test flows/login.yaml
maestro test flows/logout.yaml

# Run complete test suite
maestro test flows/

# Windows batch script
scripts\run_login_tests.bat
```

## 📁 Project Structure

```
├── flows/              # Test automation flows
├── config/            # Configuration files  
├── scripts/           # Helper scripts
└── README.md          # This file
```

## 🤝 Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## 📄 License

This project is licensed under the MIT License - see the LICENSE file for details.
