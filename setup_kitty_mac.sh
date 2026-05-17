#!/bin/zsh

# Mouse Kitty - macOS Setup Script
# This script installs all dependencies needed to build the project on macOS

set -e  # Exit if any command fails

echo "🐱 Mouse Kitty - macOS Setup"
echo "============================"
echo ""

# Check if Homebrew is installed
if ! command -v brew &> /dev/null; then
    echo "📦 Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
    echo "✅ Homebrew is already installed"
fi

echo ""
echo "📥 Installing dependencies..."

# Install Git
if ! command -v git &> /dev/null; then
    echo "📦 Installing Git..."
    brew install git
else
    echo "✅ Git is already installed"
fi

# Install CMake
if ! command -v cmake &> /dev/null; then
    echo "📦 Installing CMake..."
    brew install cmake
else
    echo "✅ CMake is already installed"
fi

# Install Raylib
if ! brew list raylib &> /dev/null; then
    echo "📦 Installing Raylib..."
    brew install raylib
else
    echo "✅ Raylib is already installed"
fi

echo ""
echo "✅ All dependencies installed!"
echo ""
echo "🔨 Ready to build!"
echo ""
echo "Next steps:"
echo "  mkdir build"
echo "  cd build"
echo "  cmake .."
echo "  make"
echo "  ./kitty"
echo ""
