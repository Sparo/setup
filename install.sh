#!/bin/bash

taps=("homebrew/core" "homebrew/cask-fonts" "jesseduffield/lazygit");
brewinstall=(wget git vim zsh lazygit n go rg jq noti httpie)
brewcask=(iterm2 google-chrome firefox microsoft-edge slack authy postman dropbox grammarly teamviewer skype vlc viscosity font-victor-mono)

echo "Starting setup...";
brew=$(which -s brew);

echo "Check for Homebrew..."
if [[ $? != 0 ]]; then
    echo "Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
    echo 'eval $(/opt/homebrew/bin/brew shellenv)' >> /Users/$USER/.zprofile
    eval $(/opt/homebrew/bin/brew shellenv)
else
    echo "Updating Homebrew..."
    brew update;
    echo "Upgrding Homebrew..."
    brew upgrade;
fi

# exit 0;

brew tap homebrew/core
brew tap homebrew/cask-fonts
brew tap jesseduffield/lazygit

echo "Brew install...";
brew install wget
brew install git
brew install vim
brew install zsh
brew install lazygit
brew install n
brew install go
brew install rg
brew install jq
brew install noti
brew install httpie

echo "Brew Cask install...";
brew install --cask iterm2
brew install --cask google-chrome
brew install --cask firefox
brew install --cask microsoft-edge
brew install --cask slack
brew install --cask authy
brew install --cask postman
brew install --cask dropbox
brew install --cask grammarly
brew install --cask teamviewer
brew install --cask skype
brew install --cask vlc
brew install --cask transmission
brew install --cask viscosity
brew install --cask cleanmymac
brew install --cask font-victor-mono

echo "Install node...";
n lts
npm i -g @vue/cli
npm i -g nodemon

echo "Install and setup zsh..."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo "Download material design color scheme..."
curl -O https://raw.githubusercontent.com/MartinSeeler/iterm2-material-design/master/material-design-colors.itermcolors ~/Downloads

echo "Setup Vim plugin manager..."
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo "Setup italic in terminal..."
tic -x xterm-256color-italic.terminfo


{"mode":"full","isActive":false}
