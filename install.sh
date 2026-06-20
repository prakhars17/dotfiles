#!/bin/bash
set -e

echo "Installing dotfiles..."

# Check if Homebrew is installed
if ! command -v brew &> /dev/null; then
    echo "Error: Homebrew is not installed. Please install it first."
    exit 1
fi

echo "Installing Ghostty..."
brew install --cask ghostty

echo "Installing packages..."
brew install starship zsh-autosuggestions zsh-syntax-highlighting zoxide fzf bat eza

echo "Setting up fzf keybindings..."
yes | $(brew --prefix)/opt/fzf/install --key-bindings --completion --no-bash

echo "Installing fonts..."
brew install --cask font-jetbrains-mono-nerd-font

echo "Copying dotfiles to home directory..."
cp .gitconfig ~/.gitconfig
cp -r .config ~/.config
cp .zshrc ~/.zshrc

echo "Installation complete!"
echo "Reloading shell configuration..."
exec zsh
