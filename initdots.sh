#!bin/bash

# creates symlinks from home to dotfiles

dir=~/dotfiles
olddir=~/dotfiles_old
#files=".config .fonts .gitconfig gtkrc-2.0 .icons .mutt .oh-my-zsh .urxvt .vifm .vim .xinit .Xresources .zshrc"
files=".zshrc"

# back up old dotfiles
echo "Backing up old dot files in $olddir"
mkdir -p $olddir
echo "... done"

# change to dotfiles dir
echo "Changing to $dir directory"
cd $dir
echo "... done"

# the nitty gritty
for file in $files; do
        echo "Moving any existing dotfiles from home to $olddir
        "
        mv ~/.file $olddir/ 
        echo "Creating symlinks to $file in home"
        ln -s $dir/$file ~/.$file
done
