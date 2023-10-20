#!/bin/bash

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
echo "Brew install...";
brew install wget
brew install git
brew install neovim
brew install zsh
brew install lazygit
brew install fnm
brew install go
brew install rg
brew install jq
brew install noti
brew install httpie
brew install jless
brew install ansible
brew install awscli

echo "Brew Cask install...";
brew install --cask iterm2
brew install --cask docker
brew install --cask google-chrome
brew install --cask firefox
brew install --cask microsoft-edge
brew install --cask opera
brew install --cask slack
brew install --cask authy
brew install --cask postman
brew install --cask cleanmymac
brew install --cask raycast
brew install --cask todoist
brew install --cask telegram
brew install --cask font-victor-mono

echo -e "Enter git user.name: \c"
read -r git_user_name
git config --global user.name "$git_user_name"
echo -e "Git user.name set as : $git_user_name"

echo -e "Enter git user.email: \c"
read -r git_user_email
git config --global user.email $git_user_email
echo -e "Git user.email set as : $git_user_email"

echo "Setup fnm ..."
echo 'eval "$(fnm env --use-on-cd)"' >> ~/.zshrc

echo "Setup oh-my-zsh..."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# echo "Download material design color scheme..."
# curl -O https://raw.githubusercontent.com/MartinSeeler/iterm2-material-design/master/material-design-colors.itermcolors ~/Downloads

# echo "Setup italic in terminal..."
# tic -x xterm-256color-italic.terminfo
