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

# Upgrade any already-installed formulae.
#brew upgrade --all

# Install GNU core utilities (those that come with OS X are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
sudo ln -s /usr/local/bin/gsha256sum /usr/local/bin/sha256sum

# Tap some kegs
echo ""
echo "#######################################################"
echo "# KEGS"
echo "#######################################################"
#brew tap homebrew/versions
#brew tap homebrew/science
#brew tap caskroom/versions
brew tap gigalixir/brew
brew tap mongodb/brew

echo ""
echo "#######################################################"
echo "# INSTALLING BREW PACKAGES"
echo "#######################################################"

brew install act
brew install autoconf

# asciinema.org -> Record and share your terminal sessions
brew install asciinema

brew install bashdb
brew install bison
brew install buildpacks/tap/pack

# https://github.com/bup/bup backup system
brew install bup
brew install cjdns
brew install colordiff
brew install cowsay
brew install cmus
brew install ctags
brew install direnv
brew install dockutil
brew install emacs
#brew installme fdupes
brew install ffind
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils

brew install fish
brew install gcc
#brew installme homebrew/versions/gcc46
#brew installme gist
brew install gigalixir
brew install gnupg
brew install gource
brew install graphviz
brew install httpie

brew install htop
brew install jq
brew install kerl
brew install leiningen
brew install libevent
brew install libiconv
brew install libzip
brew install lolcat
brew install mackup

brew install monero
brew install mongodb-community

# Install some other useful utilities like `sponge`.
brew install moreutils
brew install nginx

brew install openssl@3
brew install optipng
brew install eddieantonio/eddieantonio/imgcat
brew install overmind
brew install par2
brew install pdfgrep
brew install jpeg libpng libtiff openexr
brew install eigen tbb
brew install wget
brew install pngquant
brew install pv
brew install pyqt5
brew install rabbitmq
brew install reattach-to-user-namespace
brew install re2c
brew install gawk

# backup program
brew install restic

brew install selecta
brew install shopify-cli
brew install stripe/stripe-cli/stripe
brew install superfly/tap/flyctl
brew install the_silver_searcher
brew install tig
brew install tmux
brew install unrar
brew install unzip
brew install vagrant
brew install vim
brew install vips
brew install watch
brew install wireguard-tools
brew install wxwidgets
brew install zeromq
brew install zmq

brew install glib

# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed

# databases
#brew install mysql
brew install postgresql
brew install mysql
brew install redis
brew install elasticsearch
brew install flux

# Install more recent versions of some OS X tools.
brew install homebrew/dupes/grep
brew install homebrew/dupes/openssh
brew install homebrew/dupes/screen

# Install font tools.
brew tap bramstein/webfonttools
brew install sfnt2woff
brew install sfnt2woff-zopfli
brew install woff2

# Install some CTF tools; see https://github.com/ctfs/write-ups.
brew install aircrack-ng
brew install bfg
brew install binutils
brew install binwalk
brew install cifer
brew install dex2jar
brew install dns2tcp
brew install fcrackzip
brew install foremost
brew install hashpump
brew install hydra
brew install john
brew install knock
brew install netpbm
brew install nmap
brew install pngcheck
brew install socat
brew install sqlmap
brew install tcpflow
brew install tcpreplay
brew install tcptrace
brew install ucspi-tcp # create a tcpserver etc.
brew install xz

# Install other useful binaries.
brew install ack
brew install dark-mode
brew install exiv2
brew install git
brew install git-lfs
brew install git-flow
brew install git-extras
brew install hub
brew install imagemagick
brew install lua
brew install lynx
brew install mono
brew install p7zip
brew install pigz
brew install puma/puma/puma-dev
brew install pv
brew install rename
brew install rhino
brew install speedtest-cli
brew install ssh-copy-id
brew install tree
brew install webkit2png
brew install zopfli
brew install pkg-config libffi
brew install pandoc

# Lxml and Libxslt
brew install libxml2
brew install libxslt
brew link libxml2 --force
brew link libxslt --force

# Install Heroku
brew install heroku/brew/heroku
heroku update

# neovim
brew install neovim