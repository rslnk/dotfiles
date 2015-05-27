#!/bin/sh
# based on https://github.com/ahri/dotfiles/blob/master/write-links.sh

# Die on failures
set -e

# Echo all commands
# set -x

command_exists () {
  type "$1" &> /dev/null ;
}

brew_install () {
  # http://stackoverflow.com/a/20802425/358804
  if [ -z "brew ls --versions $1" ]; then
    echo "$1 doesn't exist"
    brew install $1
  fi
}

script="`python -c 'import os,sys;print os.path.realpath(sys.argv[1])' "$0"`" #"`readlink -f "$0"`"
dir="`dirname "$script"`"

# symlink dotfiles/folders
find "$dir" -maxdepth 1 | while read file; do

  case "$file" in
    "$dir"|"$dir/git/.gitconfig"|"$dir/git/.gitignore_global"|"$dir/README.md"|"$dir/atom"|"$dir/iterm2/com.googlecode.iterm2.plist"|"$dir/fish"|*.swp|"$script")
      continue
      ;;
  esac

  name=".`basename $file`"
  rm -rf "$HOME/$name"
  ln -s "$file" "$HOME/$name"
done

# homebrew
if command_exists brew; then
  brew update
else
  echo "Installing brew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  echo "...brew installed"
fi

brew install fish
brew install git
brew install git-flow

# RVM
if ! command_exists rvm; then
  echo "Installing RVM..."
  curl -sSL https://get.rvm.io | bash -s stable
  source ~/.zshrc
  echo "...RVM installed"
fi
rvm autolibs enable

# https://github.com/afeld/git-setup
curl -fsSL https://raw.githubusercontent.com/afeld/git-setup/master/setup.sh | sh

echo "DONE"