echo "Auto install apps with cask"

apps=(
  caffeine
  spectacle
  vlc
  google-chrome
  brackets
  slack
  disk-inventory-x
  cyberduck
  cryptomator
  flux
  helium
  keepassxc
  iterm2
  numi
  macdown
  sequel-pro
  jumpcut
  limechat
  skitch
  spotify
  telegram
  the-unarchiver
  atom
  visual-studio
  unity
  vagrant
  virtualbox
  postman
)

brew cask install "${apps[@]}"

brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzipql qlimagesize webpquicklook suspicious-package

# Install fonts.
brew tap caskroom/fonts
fonts=(
    font-source-code-pro
    font-roboto
)
echo "Installing fonts..."
brew cask install ${fonts[@]}
