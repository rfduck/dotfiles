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
alias rnd="echo -e 'You can randomize \n Anthony Bourdain (ab) \n Albums (album) \n Coin Flip (flip) \n Fidget Spinners (fidget) \n Movies (film) \n Photo books (photobook) \n 1001 albums you must hear (thousand)'"
####
alias ab="shuf -n 1 '/mnt/d/GDrive/Documents/Files/Bourdain All.txt'" #Shuffle a Bourdain episode
alias album="shuf -n 1 '/mnt/d/GDrive/Documents/Files/Russ albums.txt'" #Shuffle an album
alias fidget="shuf -n 1 '/mnt/d/GDrive/Documents/Files/Fidget Spinners.txt'" #Shuffle a fidget spinner
alias film="shuf -n 1 '/mnt/d/GDrive/Documents/Files/Russ Movies.txt'" #Shuffle a movie
alias flip="shuf -n 1 -e 'heads' 'tails'" #Coin Flip
alias photobook="shuf -n 1 '/mnt/d/GDrive/Documents/Files/photobooks.txt'" #Shuffle a photo book
alias thousand="shuf -n 1 '/mnt/d/GDrive/Documents/Files/1001 albums you must hear.txt'" #Shuffle a 1001 album

#NAVIGATION ALIASES
alias gd="cd /mnt/d/GDrive" #Go to GDrive
alias rfd="cd /mnt/d/GDrive/Documents" #Go to My Documents
alias rff="cd /mnt/d/GDrive/Documents/Files" #Go to Files directory

#OTHER ALIASES
alias bsm="less ~/Documents/Bismuth_Tiling_Shortcuts.txt " #See Bismuth shortcuts
alias fhr="feh -qzZFY &" #Feh Fullscreen Random
alias nv="nvim" #Make nvim command shorter
alias useful="less ~/useful_linux_info.txt" #View the useful Linux info
alias vc=". ~/Documents/Scripts/vc.sh" #Run vc.sh
alias vcd=". ~/Documents/Scripts/vcd.sh" #Run vcd.sh

#OPENSUSE ZYPPER ALIASES
alias zdup="sudo zypper dup" #Update OpenSuse Tumbleweed
alias zr="sudo zypper ref" #Refresh Repositories on OpenSuse
alias zi="sudo zypper in" #Install package on OpenSuse
