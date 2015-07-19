# Dotfiles

Setup and list of software for a development machine. Based on Aidan Feldman [dotfiles](https://github.com/afeld/dotfiles)

## Software

Development machine uses the following software:

- [Atom](https://atom.io) -- A hackable text editor for the 21st Century
- [iTerm 2](https://www.iterm2.com) -- Mac OS Terminal replacement that does amazing things
- [Homebrew](http://brew.sh) -- The missing package manager for OS X
- [Fish shell](https://github.com/fish-shell/fish-shell) -- A command line shell for the 90s
- [Bash Git Prompt](https://github.com/magicmonty/bash-git-prompt) -- An informative git prompt for bash and fish
- [Git](http://git-scm.com) -- A free and open source distributed version control system
- [git + hub gem](https://github.com/github/hub) -- A command line tool that wraps git in order to extend it with extra features and commands that make working with GitHub easier.
- [Git Flow](http://danielkummer.github.io/git-flow-cheatsheet) -- A set of git extensions to provide high-level repository operations for Vincent Driessen's branching model

## Manual installation

Download and manually install software.

- Install [Homebrew](http://brew.sh): `ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`
- Install [Fish shell](https://github.com/fish-shell/fish-shell): `brew install fish`
- Install [Git](http://git-scm.com/downloads): `brew install git`
- Install [Hub](https://github.com/github/hub): `brew install hub`
- Install [git-flow](http://danielkummer.github.io/git-flow-cheatsheet): `brew install git-flow`

### Symlink dotfiles

Create symlinks from the home directory to any desired dotfiles and backup dotfiles.

- Clone this repository `git clone git@github.com:rslnk/dotfiles.git`
- `cd ~/dotfiles`
- Run `./makesymlinks.sh`

## Settings

Individual software setup.

### Fish

After `brew install fish` add Fish to the default shells list and set it to be default shell:

- `echo "/usr/local/bin/fish" | sudo tee -a /etc/shells`
- `chsh -s /usr/local/bin/fish`

### Atom

Install Atom packages from the list: `apm install --packages-file atom/my-packages.txt`. To update packages list: `apm list --installed --bare > atom/my-packages.txt`.

### Iterm2

Set "Load preferences from a custom folder or URL" to `/Users/username/dotfiles/iterm2` in Preferences > General.

### Git Flow

Set up git flow for the new repository with a single command line `git flow-setup`.
1. `git clone https://github.com/user:example.git`
2. `cd example`
3. `git flow-setup`

### OSX

To setup new OSX run `./osx/setup.sh`.

<!-- ### Automatic installation
To-do: move towards one-liner setup of a development machine
- Clone this repository `git clone git@github.com:rslnk/dotfiles.git`
- `cd ~/dotfiles`
- Run `./init.sh` -->

## To-do

- Automate software installation
- Add Capistrano install
- Add Composer install
- Add Vagrant install
- Add Ansible install
- Add npm install
- Add Bower install
- Add Gems install
