# Dotfiles

Dotfiles of Niels Gerritsen.

## Usage

Quickly clone and checkout dotfile repository as bare git repository in home folder:

```
curl -Lks https://bit.ly/ngdot | /bin/bash
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

### Tmux

To make the tmux theme and plugins work install the tmux plugin manager ([tmp](https://github.com/tmux-plugins/tpm)) by running

```
sh ~/.scripts/tmp/sh
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


### Slack themes

*Gruvbox*

```
#282828,#3c3836,#98971a,#fbf1c7,#3E313C,#EBDBB2,#b8bb26,#fb4934,#3c3836,#EBDBB2
```

*Dracula*

```
#282A36,#44475A,#44475A,#8BE9FD,#6272A4,#FFFFFF,#50FA7B,#FF5555,#44475A,#FFFFFF
```

*Nord*
```
#2E3440,#3B4252,#88C0D0,#2E3440,#3B4252,#D8DEE9,#A3BE8C,#81A1C1,#3B4252,#D8DEE9
```

*Spaceduck*

```
#0f111b,#7A5CCC,#7A5CCC,#ffffff,#16172D,#ecf0c1,#5CCC96,#00A3CC,#0f111b,#ecf0c1
```

*One Dark*

```
#21252B,#272C33,#31363F,#D7DAE0,#272C33,#D7DAE0,#20B684,#528BFF,#272C33,#D7DAE0
```
