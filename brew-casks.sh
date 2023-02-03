#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Ask for the administrator password upfront.
sudo -v
#
## Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &
#
## Check for Homebrew,
## Install if we don't have it
if test ! $(which brew); then
  echo "Installing homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Make sure we’re using the latest Homebrew.
brew update

# brew casks
brew install --cask 1password
brew install --cask adobe-creative-cloud
brew install --cask android-studio
brew install --cask android-platform-tools
# brew install --cask --appdir="/Applications" arq
brew install --cask atom
brew install --cask beekeeper-studio
brew install --cask bisq
brew install --cask brave-browser
brew install --cask brewservicesmenubar
brew install --cask cookie
brew install --cask daisydisk
brew install --cask dbngin
brew install --cask discord
brew install --cask divvy
brew install --cask docker
brew install --cask dropbox
brew install --cask electrum
brew install --cask electron-api-demos
brew install --cask electron-fiddle
brew install --cask exodus
brew install --cask firefox

brew install --cask geekbench
brew install --cask github
brew install --cask gitkraken
brew install --cask google-chrome
brew install --cask google-drive
brew install --cask gpg-suite
brew install --cask hey
brew install --cask hubstaff
brew install --cask iterm2
brew install --cask itsycal
brew install --cask joplin
brew install --cask karabiner-elements
brew install --cask licecap
brew install --cask little-snitch
brew install --cask loom
brew install --cask macdown
brew install --cask mailplane
brew install --cask marked
brew install --cask micro-snitch
brew install --cask microsoft-edge
brew install --cask microsoft-office
brew install --cask monero-wallet
brew install --cask mongodb-compass
brew install --cask multipass
brew install --cask mymonero
brew install --cask ngrok
brew install --cask nordvpn
brew install --cask notion
brew install --cask postgres-unofficial
brew install --cask postico
brew install --cask postman
brew install --cask protonvpn
brew install --cask qbittorrent
brew install --cask rectangle
brew install --cask raycast
brew install --cask robo-3t
brew install --cask rubymine
brew install --cask setapp
brew install --cask screenflow
brew install --cask shottr
brew install --cask signal
brew install --cask sketch
brew install --cask skype
brew install --cask slack
brew install --cask spotify
brew install --cask steam
brew install --cask sublime-text
brew install --cask superduper
brew install --cask surge
brew install --cask tableplus
brew install --cask teamviewer
brew install --cask telegram
brew install --cask textmate
brew install --cask the-unarchiver
brew install --cask thunderbird
brew install --cask tor-browser
brew install --cask transmission
brew install --cask transmit
brew install --cask trezor-suite
brew install --cask tripmode
brew install --cask tunnelblick
brew install --cask tuple
brew install --cask vlc

brew tap dwarvesf/homebrew-tap
brew install --cask vimmotion

brew install --cask homebrew/cask-versions/virtualbox-beta	

brew install --cask viscosity
brew install --cask visual-studio-code
brew install --cask warp
brew install --cask whatsapp
brew install --cask xquartz
brew install --cask zoom

# Install developer friendly quick look plugins; see https://github.com/sindresorhus/quick-look-plugins
brew install --cask qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzip qlimagesize webpquicklook suspicious-package quicklookase qlvideo apparency

# Remove outdated versions from the cellar.
brew cleanup
