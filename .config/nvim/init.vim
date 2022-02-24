"    ___       __
"  /' _ `\   /'_ `\
"  /\ \/\ \ /\ \L\ \                 Niels Gerritsen
"  \ \_\ \_\\ \____ \                https://nielsgerritsen.com
"   \/_/\/_/ \/___L\ \  _______      https://gitlab.com/ngerritsen/dotfiles
"              /\____/ /\______\
"              \_/__/  \/______/

source ~/.config/nvim/config/before.vim
source ~/.config/nvim/config/dependencies.vim
source ~/.config/nvim/config/general.vim
source ~/.config/nvim/config/plugins.vim
source ~/.config/nvim/config/keys.vim

lua require("ng")
