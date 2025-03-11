#!/bin/bash

echo "Starting setup..."
brew=$(which -s brew)

if [[ $? -eq 1 ]]; then
	echo "Installing Homebrew..."
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
	echo 'eval $(/opt/homebrew/bin/brew shellenv)' >>/Users/$USER/.zprofile
	eval $(/opt/homebrew/bin/brew shellenv)
else
	echo "Updating Homebrew..."
	brew update
	echo "Upgrding Homebrew..."
	brew upgrade
fi

# exit 0;
echo "Brew install..."
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

echo "Brew Cask install..."
brew install --cask iterm2
brew install --cask warp
brew install --cask docker
brew install --cask arc
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

echo -e "Enter git user.name: \c"
read -r git_user_name
git config --global user.name "$git_user_name"
echo -e "Git user.name set as : $git_user_name"

echo -e "Enter git user.email: \c"
read -r git_user_email
git config --global user.email $git_user_email
echo -e "Git user.email set as : $git_user_email"

echo "Setup fnm ..."
echo 'eval "$(fnm env --use-on-cd)"' >>~/.zshrc

echo "Setup oh-my-zsh..."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "Setup nvim LazyVim"
git clone https://github.com/LazyVim/starter ~/.config/nvim

echo "Install Inconsolata LGC Nerd font"
brew tap homebrew/cask-fonts
brew install --cask font-inconsolata-lgc-nerd-font
