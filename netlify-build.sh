#!/bin/bash

# Exit on error
set -e

# Save the repository root directory
REPO_ROOT="$(cd "$(dirname "$0")" && pwd)"
echo "Repository root: $REPO_ROOT"

echo "Installing Flutter SDK..."

# google_fonts 6.3.3 requires Flutter 3.35+ / Dart 3.9+
FLUTTER_VERSION="3.35.0"
FLUTTER_SDK_PATH="$HOME/flutter"

install_flutter() {
  echo "Downloading Flutter SDK $FLUTTER_VERSION..."
  rm -rf "$FLUTTER_SDK_PATH"
  git clone https://github.com/flutter/flutter.git -b "$FLUTTER_VERSION" --depth 1 "$FLUTTER_SDK_PATH"
}

if [ ! -d "$FLUTTER_SDK_PATH" ]; then
  install_flutter
else
  cd "$FLUTTER_SDK_PATH"
  CURRENT_VERSION="$(git describe --tags --exact-match 2>/dev/null || echo unknown)"
  if [ "$CURRENT_VERSION" != "$FLUTTER_VERSION" ]; then
    echo "Flutter version mismatch ($CURRENT_VERSION != $FLUTTER_VERSION), reinstalling..."
    cd "$HOME"
    install_flutter
  else
    echo "Flutter SDK $FLUTTER_VERSION already installed."
  fi
fi

# Add Flutter to PATH
export PATH="$FLUTTER_SDK_PATH/bin:$PATH"

# Precache web dependencies
echo "Precaching Flutter web dependencies..."
flutter precache --web

# Verify Flutter installation
flutter --version

# Return to repository root
echo "Returning to repository root: $REPO_ROOT"
cd "$REPO_ROOT"

# Verify we're in the right place
if [ ! -f "pubspec.yaml" ]; then
  echo "Error: pubspec.yaml not found. Current directory: $(pwd)"
  ls -la
  exit 1
fi

# Get dependencies
echo "Getting Flutter dependencies..."
flutter pub get

# Build web app
echo "Building Flutter web app..."
flutter build web --release

echo "Build completed successfully!"

