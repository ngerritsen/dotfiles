# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

#    ___       __
#  /' _ `\   /'_ `\
#  /\ \/\ \ /\ \L\ \                 Niels Gerritsen
#  \ \_\ \_\\ \____ \                https://nielsgerritsen.com
#   \/_/\/_/ \/___L\ \  _______      https://github.com/ngerritsen/dotfiles
#              /\____/ /\______\
#              \_/__/  \/______/

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
