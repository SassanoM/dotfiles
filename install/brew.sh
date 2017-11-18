if ! is-macos -o ! is-executable ruby -o ! is-executable curl -o ! is-executable git; then
  echo "Skipped: Homebrew (missing: ruby, curl and/or git)"
  return
fi

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew update
brew upgrade

apps=(
  git
  python
  python3
  zsh
  zsh-completetions
  tree
  zeromq
  pyqt
  vim
  diff-so-fancy
  git-extras
)

brew install "${apps[@]}"
