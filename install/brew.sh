/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew update
brew upgrade

apps=(
  git
  python
  python3
  zsh
  tree
  zeromq
  pyqt
  vim
  diff-so-fancy
  git-extras
)

brew install "${apps[@]}"
