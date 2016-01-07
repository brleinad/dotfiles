#!/bin/bash

# Check https://github.com/michaeljsmalley/dotfiles
# creates symlinks from home to dotfiles

dir=~/dotfiles
olddir=~/dotfiles_old
files="zshrc vim i3 Xresorces"

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
        mv ~/.$file $olddir/ 
        echo "Creating symlinks to $file in home"
        ln -s $dir/$file ~/.$file
done
