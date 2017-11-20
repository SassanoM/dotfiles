#!/usr/bin/env bash

# Get current dir (so run this script from anywhere)

export DOTFILES_DIR DOTFILES_CACHE DOTFILES_EXTRA_DIR
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
DOTFILES_CACHE="$DOTFILES_DIR/.cache.sh"
DOTFILES_EXTRA_DIR="$HOME/.extra"

# Make utilities available

PATH="$DOTFILES_DIR/bin:$PATH"

# Bunch of symlinks
ln -sfv "$DOTFILES_DIR/zsh/.zshrc" ~
ln -sfv "$DOTFILES_DIR/git/.gitconfig" ~
ln -sfv "$DOTFILES_DIR/git/.gitignore" ~
ln -sfv "$DOTFILES_DIR/vim/.vim" ~
ln -sfv "$DOTFILES_DIR/vim/.vimrc" ~

# Package managers & packages

. "$DOTFILES_DIR/install/osxprep.sh"
. "$DOTFILES_DIR/install/brew.sh"
. "$DOTFILES_DIR/install/brew_cask.sh"
. "$DOTFILES_DIR/install/zsh.sh"
. "$DOTFILES_DIR/install/python.sh"
. "$DOTFILES_DIR/install/vim.sh"

# Set macOS and software preferences

for DEFAULTS_FILE in "${DOTFILES_DIR}"/macos/defaults*.sh; do
  echo "Applying ${DEFAULTS_FILE}" && . "${DEFAULTS_FILE}"
done
echo "Done. Some changes may require a logout/restart to take effect."
