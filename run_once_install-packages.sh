#!/bin/bash
set -e

echo "Installing Homebrew packages..."

# Install Homebrew if not present
if ! command -v brew &>/dev/null; then
  echo "Installing Homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  
  # Add Homebrew to PATH for Apple Silicon Macs
  if [[ "$(uname -m)" == "arm64" ]]; then
    eval "$(/opt/homebrew/bin/brew shellenv)"
  fi
fi

# Install packages from Brewfile
brew bundle install --file="{{ .chezmoi.sourceDir }}/Brewfile" --no-lock

echo "✓ Packages installed"
