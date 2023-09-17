# Sample .bashrc for SUSE Linux
# Copyright (c) SUSE Software Solutions Germany GmbH

#PATH
export PATH="$HOME/.local/bin:$PATH"

#EDITOR
export EDITOR="/home/rfegles/neovim/nvim-linux64/bin/nvim"

# There are 3 different types of shells in bash: the login shell, normal shell
# and interactive shell. Login shells read ~/.profile and interactive shells
# read ~/.bashrc; in our setup, /etc/profile sources ~/.bashrc - thus all
# settings made here will also take effect in a login shell.
#
# NOTE: It is recommended to make language settings in ~/.profile rather than
# here, since multilingual X sessions would not work properly if LANG is over-
# ridden in every subshell.

test -s ~/.alias && . ~/.alias || true

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi


#PLUGINS AND PROGRAMS

#FZF FUZZY FINDER
#FZF shortcuts
#[ -f ~/.fzf.bash ] && source ~/.fzf.bash
#Use keybindings in Debian
source /usr/share/doc/fzf/examples/key-bindings.bash

#FZF DEFAULT COMMAND
export FZF_DEFAULT_COMMAND='find .' 

#FZF ALT-C COMMAND TO CD INTO DIRS
export FZF_ALT_C_COMMAND='find . $HOME -type d'

#FZF-BASH-COMPLETION PLUGIN
source ~/fzf-tab-completion/bash/fzf-bash-completion.sh
bind -x '"\t": fzf_bash_completion'

#FZF FUNCTIONS
#fd: CD to a specific subdirectory 
fd() {
  local dir
  dir=$(find ${1:-.} -path '*/\.*' -prune \
                  -o -type d -print 2> /dev/null | fzf +m) &&
  cd "$dir"
}

#fda: CD to subdirectories, including hidden
fda() {
  local dir
  dir=$(find ${1:-.} -type d 2> /dev/null | fzf +m) && cd "$dir"
}

#fdp: CD to any parent directory
fdp() {
  local declare dirs=()
  get_parent_dirs() {
    if [[ -d "${1}" ]]; then dirs+=("$1"); else return; fi
    if [[ "${1}" == '/' ]]; then
      for _dir in "${dirs[@]}"; do echo $_dir; done
    else
      get_parent_dirs $(dirname "$1")
    fi
  }
  local DIR=$(get_parent_dirs $(realpath "${1:-$PWD}") | fzf-tmux --tac)
  cd "$DIR"
}

#COMMACD, ENHANCED CD FUNCTION
#source ~/bin/.commacd.sh

#USE VIFM TO NAVIGATE DIRECTORY STRUCTURE
vicd()
{
    local dst="$(command vifm -c "vs!" --choose-dir - "$@")"
    if [ -z "$dst" ]; then
        echo 'Directory picking cancelled/failed'
        return 1
    fi
    cd "$dst"
}

#SHORTCUT FUNCTION FOR CHEAT.SH
cheat () {
    if [ -z $1 ];
    then
        echo "You didn't provide a command!"
    else
        curl cheat.sh/$1 | less
fi
}

#CONCURRENT DOWNLOADS FOR ZYPPER ON OPENSUSE
export ZYPP_MEDIANETWORK=1

#ALIAS FOR DOTFILES BARE REPO
alias dotfiles='git --git-dir=/home/rfegles/.dotfiles --work-tree=/home/rfegles'
