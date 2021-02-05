#!/usr/bin/env bash

echo "Hello from vapurrmaid/dotfiles install.sh"

echo "Cloning home dotfiles..."
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

# Install HOME-based bash files
ln -sf $DIR/bash/.bash_aliases $HOME
ln -sf $DIR/bash/.bash_path $HOME
ln -sf $DIR/bash/.bashrc $HOME
ln -sf $DIR/bash/.profile $HOME

# Install git files
ln -sf $DIR/git/.gitconfig $HOME

# Install VS Code files
mkdir -p $HOME/.config/Code/User
ln -sf $DIR/Code/User/keybindings.json $HOME/.config/Code/User
ln -sf $DIR/Code/User/settings.json $HOME/.config/Code/User

# Install code-server files
if [ -d "$HOME/.local/share/code-server" ]; then
	echo "Installing code-server settings"
	mkdir -p "$HOME/.local/share/code-server/User"
        ln -sf $DIR/Code/User/keybindings.json $HOME/.local/share/code-server/User
        ln -sf $DIR/Code/User/settings.json $HOME/.local/share/code-server/User
else
	echo ".local/share not found, skipping code-server"
fi
