#!/bin/bash

# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
# Borrowed from Michael J. Smalley [dotfiles](https://github.com/michaeljsmalley/dotfiles)

# Variables
dir=~/dotfiles
olddir=~/dotfiles_old
files="atom osx"  # list of files/folders to symlink in homedir

# Create dotfiles_old in homedir
echo -n "Creating $olddir for backup of any existing dotfiles in ~/ ..."
mkdir -p $olddir
echo "done"

# Change to the dotfiles directory
echo -n "Changing to the $dir directory ..."
cd $dir
echo "done"

# Symlink global git congig, gitignore and fish shell files
echo 'Symlinking other files ...'
echo 'Symlinking global git config and gitignore files ...'
ln -s $dir/git/gitconfig ~/.gitconfig
ln -s $dir/git/gitignore_global ~/.gitignore_global
echo 'Symlinking fish shell files ...'
ln -s $dir/fish/config.fish ~/.config/fish/config.fish
echo "done"

# Move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks from the homedir to any files in the ~/dotfiles directory specified in $files
for file in $files; do
  echo "Moving any existing dotfiles from ~ to $olddir"
  mv ~/.$file ~/dotfiles_old/
  echo "Creating symlink to $file in home directory."
  ln -s $dir/$file ~/.$file
done
