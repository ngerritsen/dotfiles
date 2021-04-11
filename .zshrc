# Source config
alias src="source $HOME/.zshrc"

# Common
source $HOME/.commonrc

# Vim mode
bindkey -v

# Plugins
if [ ! -f "$HOME/.antigen.zsh" ]; then
  curl -L git.io/antigen > "$HOME/.antigen.zsh"
fi

source "$HOME/.antigen.zsh"

antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting

antigen apply

# Prompt
if exists starship
then
  eval "$(starship init zsh)"
else
  PROMPT='%F{cyan}%1~%f %F{magenta}>%f '
fi
