# Exports
export TERM="xterm-256color"
export EDITOR=vim
export VISUAL=vim

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
if [ -f ~/.aliases ]; then
   . ~/.aliases
fi

# Flex
pfetch

# Prompt
eval "$(starship init bash)"
