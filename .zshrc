#    ___       __
#  /' _ `\   /'_ `\
#  /\ \/\ \ /\ \L\ \                 Niels Gerritsen
#  \ \_\ \_\\ \____ \                https://nielsgerritsen.com
#   \/_/\/_/ \/___L\ \  _______      https://github.com/ngerritsen/dotfiles
#              /\____/ /\______\
#              \_/__/  \/______/


# Zap
if ! [ -f $HOME/.local/share/zap/zap.zsh ]; then
  zsh <(curl -s https://raw.githubusercontent.com/zap-zsh/zap/master/install.zsh) --branch release-v1 --keep
fi

source $HOME/.local/share/zap/zap.zsh

# Plugins
plug "zsh-users/zsh-autosuggestions"
plug "zap-zsh/supercharge"
plug "zsh-users/zsh-syntax-highlighting"
plug "mahcodes/distro-prompt"
export VI_MODE_ESC_INSERT="jj" && plug "zap-zsh/vim"

# Source config
alias src="source $HOME/.zshrc"

# Common
source $HOME/.commonrc

# Zoxide
if exists zoxide
then
  eval "$(zoxide init zsh)"
fi

# Work
if [ -f $HOME/.workrc ]; then
  source $HOME/.workrc
fi
