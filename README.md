# Dotfiles

Dotfiles of Niels Gerritsen.

## Usage

Quickly clone and checkout dotfile repository as bare git repository in home folder:

```
curl -Lks https://bit.ly/3fY3Fgk | /bin/bash
```

After the script has run a command line alias `dot` should be available to work with the bar git repository ([more information](https://www.atlassian.com/git/tutorials/dotfiles)).

### Command line shell

The command line prompt will by default work, but to a more advanced prompt I use Starship, install by running:

```
curl -fsSL https://starship.rs/install.sh | bash
```

The `.bashrc` and `.zshrc` files automatically enable Starship. On Linux bash will be the default shell, to use Zsh make sure Zsh is installed and run:

```
chsh -s $(which zsh)
```

### Vim

To make the Vim plugins work [vim-plug](https://github.com/junegunn/vim-plug) needs to be installed. This can be done by running:

```
sh ~/.scripts/vim-plug.sh
```

Then `:PlugInstall` can be run in Vim & NeoVim.

### Alacritty

[Alacritty](https://github.com/alacritty/alacritty) is an amazing terminal Emulator for Mac and Linux. Note that when it is installed the Font might be broken. Make sure to install the correct font from [Nerd Fonts](https://www.nerdfonts.com/).

### Zoxide

[Zoxide](https://github.com/ajeetdsouza/zoxide) is a faster way to navigate the filesystem from the command line and serves as an alternative to `cd`. Make sure it is installed and it will be enabled automatically in bash and zsh.
