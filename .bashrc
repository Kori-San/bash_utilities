#################################################################################################
# / / / /                                  WARNING /!\                                  \ \ \ \ #
# It's not my entire .bashrc only some aliases / func / and 'At launch' functionnalities I made #
# \ \ \ \                                  WARNING /!\                                  / / / / #
#################################################################################################

# At Launch
clear ; neofetch --ascii_distro Trisquel --ascii_colors 25 25 --color_blocks off --colors 4 31 7 4 7 6

# Aliases
## Aliases for Windows WSL
alias findex="explorer.exe ." # Find Current Dir with Windows Explorer

## Quality Of Life
alias n="source ~/.bashrc" # Renew the window by running 'At Launch' section
alias lt="echo -e 'Size    Filename\n-----------------'; du -sh ./* | sort -hr" # Show Size of Files and Folders in Dir
 
## Config - Configure files and source them
alias cb="vi ~/.bashrc && source ~/.bashrc"
alias cv="vi ~/.vimrc && source ~/.vimrc"
alias cpr="vi ~/.profile && source ~/.profile"

# Funcs
## A simple Battery function
battery(){
    ## Battery Vars
    battery="/sys/class/power_supply/*" 
    # You might wanna add the real folder instead of '*'

    battery_charge=$(cat ${battery}/capacity)

    # Prevent a charge of more than 100% displaying
    if [ "${battery_charge}" -gt "99" ]; then battery_charge="100"; fi

    # echo Battery %
    echo -e "${battery_charge}%"
}

# Vars
## Colors

## - Normal Colors
black="\e[0;30m"
red="\e[0;31m"
green="\e[0;32m"
yellow="\e[0;33m"
blue="\e[0;34m"
purple="\e[0;35m"
cyan="\e[0;36m"
white="\e[0;37m"

## - Bold
bblack="\e[1;30m"
bred="\e[1;31m"
bgreen="\e[1;32m"
byellow="\e[1;33m"
bblue="\e[1;34m"
bpurple="\e[1;35m"
bcyan="\e[1;36m"
bwhite="\e[1;37m"

## - On Background
oblack="\e[40m"
ored="\e[41m"
ogreen="\e[42m"
oyellow="\e[43m"
oblue="\e[44m"
opurple="\e[45m"
ocyan="\e[46m"
owhite="\e[47m"

## - Color Reset
creset="\e[m"

## - Presets
alert="${bwhite}${ored}" # Bold White on red background

#################################################################################################
# / / / /                                 /!\ WARNING /!\                               \ \ \ \ #
################################ /!\ UNMODIFIED BASHRC BELOW /!\ ################################
# \ \ \ \                                 /!\ WARNING /!\                               / / / / #
#################################################################################################
