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
alias sls="ls -AhF -1 --group-directories-first | less" #Simple directory and file list, nothing hidden 


#SHUFFLE ALIASES
alias rnd=". ~/.local/bin/random.sh"
alias thousand="shuf -n 1 '/mnt/d/GDrive/Documents/Files/1001-albums-you-must-hear.txt'" #Shuffle a 1001 album

#NAVIGATION ALIASES
alias gd="cd /mnt/d/GDrive" #Go to GDrive
alias rfd="cd /mnt/d/GDrive/Documents" #Go to My Documents
alias rff="cd /mnt/d/GDrive/Documents/Files" #Go to Files directory

#OTHER ALIASES
alias bsm="less ~/Documents/bismuth-tiling-shortcuts.txt " #See Bismuth shortcuts
alias dg="dotfiles-git.sh" #Run dotfiles-git
alias fhr="feh -qzZFY &" #Feh Fullscreen Random
alias i3b="vim ~/.config/i3blocks/config" #Opens i3blocks config in neovim
alias i3c="vim ~/.config/i3/config" #Opens i3 config in neovim
alias imvr="find -regextype posix-extended -regex '.*\.(jpg|png)$' | shuf | imv-wayland -f" #Opens images in random order using imv
alias km="less /mnt/d/GDrive/Documents/Files/keychron-k8-pro-keymappings.txt"
alias nv="nvim" #Make nvim command shorter
alias scripts="ls -Ah -1 $HOME/.local/bin" 
alias tm="watch -t -n 1 date +%r" #Display current time
alias tmd="watch -t -n 1 date +%c" #Display the time and date
alias ttyc="tty-clock -bcst -C 6"
alias useful="less ~/useful-linux-info.txt" #View the useful Linux info
alias vc=". ~/.local/bin/vc.sh" #Run vc.sh
alias vcd=". ~/.local/bin/vcd.sh" #Run vcd.sh

#OPENSUSE ZYPPER ALIASES
alias zdup="sudo flatpak update -y && sudo zypper dup" #Update OpenSuse Tumbleweed and Flatpak
alias zi="sudo zypper in" #Install package on OpenSuse
alias zr="sudo zypper ref" #Refresh Repositories on OpenSuse
alias zs="zypper search" #Search zypper for available or installed packages"
