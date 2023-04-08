# Dotfiles
These are my current dotfiles managed using [GNU Stow](https://www.gnu.org/software/stow/) and in use on Arch Linux, MacOS, Termux and the WSL!

## Install

Please ensure that you have zsh installed.

### Dependencies (oh-my-zsh, spaceship-prompt)
```bash
./deps.sh
```

### Install Stow

#### Ubuntu
```bash
sudo apt install stow
```
#### Arch Linux
```bash
sudo pacman -S stow
```
#### MacOS
```bash
brew install stow
```

### Clone the repo
```bash
git clone https://github.com/breuxi/dotfiles.git
```

### Choose the packages you want to symlink (eg. my zsh config)
```bash
stow zsh
```

### (Or just everything)
```bash
stow *
```


