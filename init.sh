#!/bin/bash

# Detect the operating system
if [[ "$OSTYPE" == "darwin"* ]]; then
  # macOS: check if Homebrew is installed, then use it to install Ansible
  if ! command -v brew &>/dev/null; then
    echo "Homebrew not found, installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  fi
  echo "Installing Ansible via Homebrew..."
  brew install ansible
elif [ -f /etc/lsb-release ]; then
  # Ubuntu: update apt repository and install Ansible
  echo "Updating apt repository..."
  sudo apt-get update
  echo "Installing Ansible via apt-get..."
  sudo apt-get install -y ansible
else
  echo "Unsupported OS"
  exit 1
fi
