git clone --bare https://github.com/ngerritsen/dotfiles $HOME/.dot

function dot {
   /usr/bin/git --git-dir=$HOME/.dot/ --work-tree=$HOME $@
}

dot config status.showUntrackedFiles no
dot checkout -f
