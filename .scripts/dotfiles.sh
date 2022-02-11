git clone --bare https://gitlab.com/ngerritsen/dotfiles $HOME/.dot

function dot {
   /usr/bin/git --git-dir=$HOME/.dot/ --work-tree=$HOME $@
}

dot config status.showUntrackedFiles no
dot checkout -f
