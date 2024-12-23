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

To get the best experience, install and use a [Nerd Font](https://www.nerdfonts.com/) ([Installation instructions](https://github.com/ryanoasis/nerd-fonts#font-installation))

### Git user

The git config doesn't come with a user out of the box to avoid users getting mixed up, this still needs to be configured afterwards using:

```
git config --global user.name "Your Name"
git config --global user.email "youremail@yourdomain.com"
```