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

plug "zsh-users/zsh-autosuggestions"
plug "zap-zsh/supercharge"
plug "zap-zsh/zap-prompt"
plug "zsh-users/zsh-syntax-highlighting"
plug "zap-zsh/exa"

# Load and initialise completion system
autoload -Uz compinit
compinit

# Source config
alias src="source $HOME/.zshrc"

# Common
source $HOME/.commonrc

# Work
if [ -f $HOME/.workrc ]; then
  source $HOME/.workrc
fi

# Vim mode
bindkey -v

# bun completions
[ -s "/Users/ngerritsen/.bun/_bun" ] && source "/Users/ngerritsen/.bun/_bun"
