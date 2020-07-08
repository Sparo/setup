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
brew cask install iterm2
brew cask install google-chrome
brew cask install firefox
brew cask install microsoft-edge
brew cask install slack
brew cask install authy
brew cask install postman
brew cask install dropbox
brew cask install grammarly
brew cask install teamviewer
brew cask install skype
brew cask install vlc
brew cask install transmission
brew cask install viscosity
brew cask install font-victor-mono

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


