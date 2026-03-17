#!/bin/bash

# Exit on error
set -e

# Save the repository root directory
REPO_ROOT="$(cd "$(dirname "$0")" && pwd)"
echo "Repository root: $REPO_ROOT"

echo "Installing Flutter SDK..."

# Install Flutter
FLUTTER_SDK_PATH="$HOME/flutter"

# Download Flutter if not already present
if [ ! -d "$FLUTTER_SDK_PATH" ]; then
  echo "Downloading Flutter SDK..."
  cd $HOME
  git clone https://github.com/flutter/flutter.git -b stable --depth 1
  cd flutter
  git fetch --depth=1
else
  echo "Flutter SDK already exists, updating..."
  cd $FLUTTER_SDK_PATH
  git fetch --depth=1
  git reset --hard origin/stable
fi

# Add Flutter to PATH
export PATH="$FLUTTER_SDK_PATH/bin:$PATH"

# Precache web dependencies
echo "Precaching Flutter web dependencies..."
flutter precache --web

# Work around google_fonts 6.1.0 const map issue with Dart 3.11 web builds.
# Some Flutter stable releases pull in google_fonts 6.1.0 for the Flutter tool
# itself, which uses a const map keyed by FontWeight and fails constant
# evaluation under newer Dart versions. We patch that package in the cache
# by turning the offending const map into a non-const final map so the tool
# can compile.
GOOGLE_FONTS_VARIANT_PATH=\"$HOME/.pub-cache/hosted/pub.dev/google_fonts-6.1.0/lib/src/google_fonts_variant.dart\"
if [ -f \"$GOOGLE_FONTS_VARIANT_PATH\" ]; then
  echo \"Patching google_fonts 6.1.0 variant file to avoid const map error...\"
  sed -i \"s/^const _fontWeightToFilenameWeightParts = {/final _fontWeightToFilenameWeightParts = {/\" \"$GOOGLE_FONTS_VARIANT_PATH\" || true
fi

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

