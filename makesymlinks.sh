#!/bin/bash
############################
# .make.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
############################

########## Variables

dir=~/dotfiles                    # dotfiles directory
olddir=~/dotfiles_old             # old dotfiles backup directory
files="bashrc bash_profile vimrc zshrc"    # list of files/folders to symlink in homedir
nvimrc_file="config/nvim/init.vim"     #where nvimrc is located[

##########

# create dotfiles_old in homedir
echo "Creating $olddir for backup of any existing dotfiles in ~"
mkdir -p $olddir
echo "...done"

# change to the dotfiles directory
echo "Changing to the $dir directory"
cd $dir
echo "...done"

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks
for file in $files; do
    echo "Moving any existing dotfiles from ~ to $olddir"
    mv ~/.$file ~/dotfiles_old/
    echo "Creating symlink to $file in home directory."
    ln -s $dir/$file ~/.$file
    printf "\n"
done

# Moving Nvimrc file
echo "Moving existing nvimrc file from ~ to $olddir"
mv ~/.$nvimrc_file ~/dotfiles_old/
echo "Creating symlink to nvimrc in home directoy."
ln -s $dir/nvimrc ~/.$nvimrc_file
echo "...done"
