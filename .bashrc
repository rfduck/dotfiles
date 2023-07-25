# Sample .bashrc for SUSE Linux
# Copyright (c) SUSE Software Solutions Germany GmbH

#PATH
export PATH="$HOME/.local/bin:$PATH"

#EDITOR
export EDITOR="/usr/bin/nvim"

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
