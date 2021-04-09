# Vim mode
bindkey -v

# Exports
export TERM="xterm-256color"
export EDITOR=nvim
export VISUAL=nvim

# Path
if [ -d "$HOME/.bin" ] ;
  then PATH="$HOME/.bin:$PATH"
fi

if [ -d "$HOME/.local/bin" ] ;
  then PATH="$HOME/.local/bin:$PATH"
fi

if [ -d "$HOME/Applications" ] ;
  then PATH="$HOME/Applications:$PATH"
fi

# Alias
source $HOME/.aliases

# Plugins

if [ ! -f "$HOME/.antigen.zsh" ]; then
  curl -L git.io/antigen > "$HOME/.antigen.zsh"
fi

source "$HOME/.antigen.zsh"

antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting

antigen apply

# Prompt
if command -v starship >/dev/null 2>&1; then
  eval "$(starship init zsh)"
else
  PROMPT='%F{cyan}%1~%f %F{magenta}>%f '
fi
