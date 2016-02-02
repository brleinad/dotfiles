#!/bin/bash

# Check https://github.com/michaeljsmalley/dotfiles
# creates symlinks from home to dotfiles

dir=~/dotfiles
olddir=~/dotfiles_old
#files="zshrc vim i3 Xresources xinitrc screenlayout gitconfig gitignore"
files="zshrc vim Xresources xinitrc gitconfig gitignore"

# back up old dotfiles
#mkdir -p $olddir

# change to dotfiles dir
echo "Changing to $dir directory"
cd $dir

# the nitty gritty
for file in $files; do
        #echo "Moving any existing dotfiles from home to $olddir"
        #mv ~/.$file $olddir/ 

        echo "Creating symlinks to $file in home"
        ln -s $dir/$file ~/.$file
done
