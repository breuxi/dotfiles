#!/bin/bash

APT_CMD=$(which apt)
PACMAN_CMD=$(which pacman)
BREW_CMD=$(which brew)

if [[ ! -z $APT_CMD ]]; then
    sudo apt install zsh
elif [[ ! -z $PACMAN_CMD ]]; then
    sudo pacman -S zsh
elif [[ ! -z $BREW_CMD ]]; then
    brew install zsh 
else
    echo "No supported package manager found!"
    exit 1;
fi


if [ ! -d $HOME/.oh-my-zsh ]; then
    echo "Installing Oh-my-Zsh!"
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"    
fi

if [ ! -d ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/spaceship-prompt ]; then
    echo "Installing Spaceship Prompt!"
    git clone https://github.com/spaceship-prompt/spaceship-prompt.git "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/spaceship-prompt" --depth=1
    ln -s "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/spaceship-prompt/spaceship.zsh-theme"
    "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/spaceship.zsh-theme"
fi

