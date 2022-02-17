# Dotfiles

Dotfiles of Niels Gerritsen. You can use this repository directly or fork/copy it to your own to customize it.

## Usage

Quickly clone and checkout dotfile repository as bare git repository in home folder:

```
curl -Lks https://gitlab.com/ngerritsen/dotfiles/-/blob/master/.scripts/dotfiles.sh | /bin/bash
```

After the script has run a command line alias `dot` should be available to work with the bare git repository ([more information](https://www.atlassian.com/git/tutorials/dotfiles)).

### Command line shell

The command line prompt will by default work, but for a more advanced prompt use [Starship](https://starship.rs/), install by running:

```
curl -fsSL https://starship.rs/install.sh | bash
```

The `.bashrc` and `.zshrc` files automatically enable Starship. On Linux bash will be the default shell, to use Zsh make sure Zsh is installed and run:

```
chsh -s $(which zsh)
```

### Fonts

Install appropriate patched fonts from: [Nerd Fonts](https://www.nerdfonts.com/) ([Installation instructions](https://github.com/ryanoasis/nerd-fonts#font-installation))

### Git user

The git config doesn't come with a user out of the box to avoid users getting mixed up, this still needs to be configured afterwards using:

```
git config --global user.name "Your Name"
git config --global user.email "youremail@yourdomain.com"
```

### Tmux

To make the tmux theme and plugins work install the tmux plugin manager ([tmp](https://github.com/tmux-plugins/tpm)) by running

```
sh ~/.scripts/tmp.sh
```

### Vim

To make the Vim plugins work [vim-plug](https://github.com/junegunn/vim-plug) needs to be installed. This can be done by running:

```
sh ~/.scripts/vim-plug.sh
```

Then `:PlugInstall` can be run in Vim & NeoVim.

### Alacritty

[Alacritty](https://github.com/alacritty/alacritty) is an amazing terminal Emulator for Mac and Linux.

> Note that when it is installed the Font might be broken. Make sure to install the correct font from [Nerd Fonts](https://www.nerdfonts.com/).

### Command line tools

For MacOS `sh ./scripts/macos-install.sh` can be ran to install most tools.

#### Zoxide

[Zoxide](https://github.com/ajeetdsouza/zoxide) is a faster way to navigate the filesystem from the command line and serves as an alternative to `cd`. Make sure it is installed and it will be enabled automatically in bash and zsh.

#### Exa

[Exa](https://the.exa.website/) is a modern replacement of `ls`. If it's installed it will be aliased to `ls`.

#### Bat

[Bat](https://github.com/sharkdp/bat) is a modern replacement of `cat`. If it's installed it will be aliased to `cat`.

#### Ncdu

[Ncdu](https://dev.yorhel.nl/ncdu) is a modern replacement of `du`. If it's installed it will be aliased to `du`.

#### Pretty ping

[Pretty ping](https://github.com/denilsonsa/prettyping) is a wrapper of `ping` that makes it prettier. If it's installed it will be aliased to `ping`.

#### Neofetch

[Neofetch](https://github.com/dylanaraps/neofetch) prints your system information in a pretty format. If installed every terminal will start with it.

#### Pfetch

[Pfetch](https://github.com/dylanaraps/pfetch) prints your system information in a pretty format, it's a lightweight alternative to neofetch. If installed every terminal will start with it unless neofetch is installed.
