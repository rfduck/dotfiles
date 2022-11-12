#PERSONAL ALIASES

#Example
#alias command="second command" 

#SHELL ALIASES
alias .1="cd .." #Go up one level
alias .2="cd ../.." #Go up two levels
alias .3="cd ../../../" #Go up three levels
alias cl="clear" #clear the screen
alias eject="eject -T" #Make 'eject' command into a toggle
alias ll="ls -lahF --group-directories-first" #Long listing, all files, human readable, directories first
alias scl="cd ~ && clear" #SuperClear: Change to Home directory and clear the screen
alias sls="ls -ahF -1 --group-directories-first | less" #Simple directory and file list, nothing hidden 


#SHUFFLE ALIASES
alias rnd=". ~/bin/random.sh"
alias thousand="shuf -n 1 '/mnt/d/GDrive/Documents/Files/1001-albums-you-must-hear.txt'" #Shuffle a 1001 album

#NAVIGATION ALIASES
alias gd="cd /mnt/d/GDrive" #Go to GDrive
alias rfd="cd /mnt/d/GDrive/Documents" #Go to My Documents
alias rff="cd /mnt/d/GDrive/Documents/Files" #Go to Files directory

#OTHER ALIASES
alias bsm="less ~/Documents/bismuth-tiling-shortcuts.txt " #See Bismuth shortcuts
alias dg="dotfiles-git.sh" #Run dotfiles-git
alias fhr="feh -qzZFY &" #Feh Fullscreen Random
alias nv="nvim" #Make nvim command shorter
alias scripts="ls -Ah -1 $HOME/bin" 
alias useful="less ~/useful-linux-info.txt" #View the useful Linux info
alias vc=". ~/bin/vc.sh" #Run vc.sh
alias vcd=". ~/bin/vcd.sh" #Run vcd.sh

#OPENSUSE ZYPPER ALIASES
alias zdup="sudo zypper dup" #Update OpenSuse Tumbleweed
alias zr="sudo zypper ref" #Refresh Repositories on OpenSuse
alias zi="sudo zypper in" #Install package on OpenSuse
