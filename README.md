# Dotfiles

Setup and list of software for a development machine.
Based on Aidan Feldman [dotfiles](https://github.com/afeld/dotfiles)

## Software

Development machine uses the following software:

* [Atom](https://atom.io) — A hackable text editor for the 21st Century
* [iTerm 2](https://www.iterm2.com) — Mac OS Terminal replacement that does amazing things
* [Homebrew](http://brew.sh) — The missing package manager for OS X
* [Fish shell](https://github.com/fish-shell/fish-shell) — A command line shell for the 90s
* [Bash Git Prompt](https://github.com/magicmonty/bash-git-prompt) — An informative git prompt for bash and fish
* [Git](http://git-scm.com)
* [Git Flow](http://danielkummer.github.io/git-flow-cheatsheet) — A set of git extensions to provide high-level repository operations for Vincent Driessen's branching model

## Installation

### Manual installation

Download and manually install software.

* Install [Homebrew](http://brew.sh): `ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`
* Install [Fish shell](https://github.com/fish-shell/fish-shell): `brew install fish`
* Install [Git](http://git-scm.com/downloads): `brew install git`
* Install [git-flow](http://danielkummer.github.io/git-flow-cheatsheet): `brew install git-flow`

### Symlink dotfiles

Create symlinks from the home directory to any desired dotfiles and backup dotfiles.

* Clone this repository `git clone git@github.com:rslnk/dotfiles.git`
* `cd ~/dotfiles`
* Run `./makesymlinks.sh`

### Automatic installation

To-do: move towards one-liner setup of a development machine

* Clone this repository `git clone git@github.com:rslnk/dotfiles.git`
* `cd ~/dotfiles`
* Run `./init.sh`

## Atom

Install Atom packages file:
`apm install --packages-file atom/my-packages.txt`

Update the list of packages:
`apm list --installed --bare > atom/my-packages.txt`

## Iterm2

Set "Load preferences from a custom folder or URL" to `/Users/username/dotfiles/iterm2` in Preferences > General.

## To-do

* Automate software installation
* Add Capistrano install
* Add Composer install
* Add Vagrant install
* Add Ansible install
* Add npm install
* Add Bower install
* Add Gems install