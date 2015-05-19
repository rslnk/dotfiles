# Base config
# -----------------------------------------------------------------

# Paths
set default_path /usr/bin /usr/sbin /bin /sbin
set homebrew /usr/local/bin
set -gx PATH $homebrew $HOME/bin $brew_php $default_path

# Set C compiler
set -gx CC gcc

# Set architecture flags
set -gx ARCHFLAGS "-arch x86_64"

# Fish shell greeting
set -gx fish_greeting 'Поехали!'

# Enable the `help` command
set -gx BROWSER open

# Set default editor to sublime text
set -gx VISUAL atom
set -gx EDITOR atom

# GitHub git base URL.
set -gx HUB_BASE git@github.com:rslnk


# Prompt
# -----------------------------------------------------------------

set -gx fish_color_host magenta
set -gx fish_color_user blue
set -gx fish_color_status red

# Import advanced git prompt
source '~/dotfiles/bash-git-prompt/gitprompt.fish'


# Aliases
# -----------------------------------------------------------------

# Fish functions and aliases
alias lla         'll -a'
alias ls          'ls -GF'
alias -           'cd -'

alias reload      'source ~/.fish/config.fish'
alias re          'source ~/.fish/config.fish'

# Numerical permissions for list of directories
alias llac        'ls -l -a | awk \"{k=0;for(i=0;i<=8;i++)k+=((substr(\$1,i+2,1)~/[rwx]/) *2^(8-i));if(k)printf(\"%0o \",k);print}\"'

alias st          'subl'
alias stt         'subl .'

# gitx
alias gitx        'open -a GitX .'

# Capistrano alias
alias cap         'bundle exec cap'

# Download Roots theme/Bedrock master, unpack and remove zip archive
alias getroots    'curl -L -o master.zip https://github.com/roots/roots/zipball/master/ ; unzip master.zip ; rm master.zip'
alias getbedrock  'curl -L -o master.zip https://github.com/rslnk/bedrock/zipball/master/ ; unzip master.zip ; rm master.zip'


# Git aliases
alias s            'status'

alias aa           'add --all :/'  # add content for the whole tree
alias a            'add --all .'   # restrict the command to the current directory
alias au           'add -u :/'     # add/remove all files from the whole tree

alias gc           'commit'
alias cm           'gommit -m'
alias cma          'commit -a'

alias co           'checkout'
alias com          'checkout master'
alias cod          'checkout develop'
alias cob          'git checkout -b'

alias b            'branch'

# The Ultimate Git Log Format
alias log          'log --pretty=format:\"%C(auto) %h %ad | \"%s\"%d%C(blue) ☺ %an\" --graph --date=short'

# Git Flow aliases
alias fs           'flow feature start'
alias ff           'flow feature finish'

# Push and pull from/to current branch
alias ggpush       'git push origin (git_current_branch)'
alias ggpull       'git pull origin (git_current_branch)'

function git_current_branch -d 'Prints a human-readable representation of the current branch'
  set -l ref (git symbolic-ref HEAD ^/dev/null; or git rev-parse --short HEAD ^/dev/null)
  if test -n '$ref'
    echo $ref | sed -e s,refs/heads/,,
    return 0
  end
end