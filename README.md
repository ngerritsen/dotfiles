# Dotfiles

Dotfiles of Niels Gerritsen. You can use this repository directly or fork/copy it to your own to customize it.

## Usage

Quickly clone and checkout dotfile repository as bare git repository in home folder:

```
curl -Lks https://gitlab.com/ngerritsen/dotfiles/-/raw/master/.scripts/dotfiles.sh | /bin/bash
```

After the script has run a command line alias `dot` should be available to work with the bare git repository ([more information](https://www.atlassian.com/git/tutorials/dotfiles)).

### Fonts

Install appropriate patched fonts from: [Nerd Fonts](https://www.nerdfonts.com/) ([Installation instructions](https://github.com/ryanoasis/nerd-fonts#font-installation))

### Git user

The git config doesn't come with a user out of the box to avoid users getting mixed up, this still needs to be configured afterwards using:

```
git config --global user.name "Your Name"
git config --global user.email "youremail@yourdomain.com"
```

### Alacritty

[Alacritty](https://github.com/alacritty/alacritty) is an amazing terminal Emulator for Mac and Linux.

> Note that when it is installed the Font might be broken. Make sure to install the correct font from [Nerd Fonts](https://www.nerdfonts.com/).
