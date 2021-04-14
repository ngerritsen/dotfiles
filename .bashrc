#    ___       __
#  /' _ `\   /'_ `\
#  /\ \/\ \ /\ \L\ \                 Niels Gerritsen
#  \ \_\ \_\\ \____ \                https://nielsgerritsen.com
#   \/_/\/_/ \/___L\ \  _______      https://github.com/ngerritsen/dotfiles
#              /\____/ /\______\
#              \_/__/  \/______/

# Default prompt
export PS1='\[\e[36m\]\w \[\e[35m\]> \[\e[0m\]'

# Source config
alias src="source $HOME/.bashrc"

# Vim mode
set -o vi

# Case insensitive autocompletion
bind "set completion-ignore-case on"

# Common
source $HOME/.commonrc

# Prompt
if exists starship
then
  eval "$(starship init bash)"
fi
