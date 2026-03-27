# Dotfiles

My personal dotfiles. You can use this repository directly or fork/copy it to your own to customize it.

## Usage

Quickly clone and checkout dotfile repository as bare git repository from your home folder:

```
curl -Lks https://raw.githubusercontent.com/ngerritsen/dotfiles/refs/heads/master/.scripts/dotfiles.sh | /bin/bash
```

After the script has run a command line alias `dot` should be available to work with the bare git repository ([more information](https://www.atlassian.com/git/tutorials/dotfiles)).

### Zsh

These dotfiles support bash, but most of the shell enhancements use [Zsh](https://www.zsh.org/) + [Zap](https://github.com/zap-zsh/zap). If Zsh is not your default shell, install Zsh and set it as your default shell (`chsh -s $(which zsh)`);

### Fonts

To get the best experience, install and use a [Nerd Font](https://www.nerdfonts.com/), this repo uses FiraCode ([Installation instructions](https://github.com/ryanoasis/nerd-fonts#font-installation)).

### Tools

The shell has aliases for some tools, these are not automatically installed, since you might not need them on a lightweight system.

#### MacOS

```
brew update; brew install fzf zoxide eza bat ncdu prettyping -y
```

#### Fedora

```
sudo dnf update; sudo dnf install zsh vim git fzf zoxide eza bat ncdu prettyping -y
```

#### Ubuntu/Debian

```
sudo apt update; sudo apt install zsh vim git fzf zoxide eza bat ncdu prettyping -y
```

#### Arch

```
sudo pacman -S zsh vim git fzf zoxide eza bat ncdu prettyping
```

#### NVM

```
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.4/install.sh | bash
```

#### Neovim

You'll need the nightly build. Follow the instructions [here](https://github.com/neovim/neovim/releases/tag/nightly).

### Git user

The git config doesn't come with a user out of the box to avoid users getting mixed up, this still needs to be configured afterwards using:

```
git config --global user.name "Your Name"
git config --global user.email "<youremail@yourdomain.com>"
```
