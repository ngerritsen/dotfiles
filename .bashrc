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
